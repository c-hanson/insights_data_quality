connection: "parkwhiz_redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: insights_data_quality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: insights_data_quality_default_datagroup

explore: airflow_task_instance {}

explore: events1 {}

explore: events2 {}

explore: locationdeets {}

explore: locdeetsplt {}

explore: pageviews1 {}

explore: pageviews2 {}

explore: pageviews2plt {}

explore: purchases1 {}

explore: purchases2 {}

explore: query_trend_hourly {}

explore: sessions1 {}

explore: sessions2 {}

explore: system_query_metrics {}
