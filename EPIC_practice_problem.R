library(epicR)
settings <- get_default_settings()
settings$record_mode <-2
settings$n_base_agents <- 1e3

init_session(settings=settings)
run()
events <- as.data.frame(Cget_all_events_matrix())

EPIC_events_matrix <- write.csv(events, "EPIC_events_matrix.csv", row.names=F)

terminate_session()
