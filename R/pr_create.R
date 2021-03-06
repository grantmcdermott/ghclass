github_api_pr_create = function(repo, base, head, title, body, draft = TRUE){
  gh::gh(
    "POST /repos/:owner/:repo/pulls",
    owner = get_repo_owner(repo),
    repo = get_repo_name(repo),
    base = base,
    head = head,
    title = title,
    body = body,
    draft = draft,
    .token = github_get_token(),
    .send_headers = c(Accept = "application/vnd.github.shadow-cat-preview+json")
  )
}

#' Create pull request
#'
#' `pr_create` creates a pull request on GitHub from the `base` branch to the `head` branch.
#'
#' @param repo Character. Address of one or more repositories in "owner/name" format.
#' @param title Character. Title of the pull request.
#' @param base Character. The name of the branch where your changes are implemented. In creating a pull request from a
#' fork then use `username:branch` as the format.
#' @param head Character. The branch you want the changed pulled into.
#' @param body Character. The text contents of the pull request.
#' @param draft Logical. Should the pull request be created as a draft pull request (these cannot be merged
#'   until allowed by the author).
#'
pr_create = function(repo, title, base, head = "master", body = "", draft = TRUE) {

  arg_is_chr(repo, title, base, head, body)
  arg_is_lgl(draft)

  purrr::pwalk(
    list(repo, base, head, title, body, draft),
    function(repo, base, head, title, body, draft) {
      res = purrr::safely(github_api_pr_create)(
        repo, base = base, head = head, title = title, body = body, draft = draft
      )

      details = usethis::ui_value( glue::glue(
        "{repo} ({base} <- {head})"
      ) )

      status_msg(
        res,
        glue::glue("Created pull request for {details}."),
        glue::glue("Failed create pull request for {details}.")
      )
    }
  )
}
