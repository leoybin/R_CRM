#' ECS日志查询
#'
#'
#' @param FNumber 编码
#' @param FOccurrenceTime_min 最小日期
#' @param FOccurrenceTime_max 最小日期
#' @param FCompanyName 公司代码
#'
#' @return 返回值
#' @export
#'
#' @examples
#' ecs_log()
# ecs_log('','2023-01-05','2023-01-09','')
ecs_log <- function(FNumber, FOccurrenceTime_min, FOccurrenceTime_max, FCompanyName) {
  #注册python模板
  mdl <- tsda::import('log_return.ret_log')
  #调用python函数，将.替代为$
  res <- mdl$run_ecs_log(FNumber=FNumber, FOccurrenceTime_min=FOccurrenceTime_min, FOccurrenceTime_max=FOccurrenceTime_max, FCompanyName=FCompanyName)
  #返回结果
  return(res)
}


#' CRM日志查询
#'
#'
#' @param FNumber 编码
#' @param FOccurrenceTime_min 最小日期
#' @param FOccurrenceTime_max 最小日期
#' @param FCompanyName 公司代码
#'
#' @return 返回值
#' @export
#'
#' @examples
#' crm_log()
# crm_log('','2023-01-05','2023-01-09','')
crm_log <- function(FNumber, FOccurrenceTime_min, FOccurrenceTime_max, FCompanyName) {
  #注册python模板
  mdl <- tsda::import('log_return.ret_log')
  #调用python函数，将.替代为$
  res <- mdl$run_crm_log(FNumber=FNumber, FOccurrenceTime_min=FOccurrenceTime_min, FOccurrenceTime_max=FOccurrenceTime_max, FCompanyName=FCompanyName)
  #返回结果
  return(res)
}
