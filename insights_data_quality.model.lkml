connection: "parkwhiz_redshift"

# include all the views
include: "*.view"
# include all the dashboards

datagroup: insights_data_quality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: insights_data_quality_default_datagroup

explore: airflow_task_instance {
    hidden:  yes
}

explore: events1 {
  hidden:  yes
  }

explore: events2 {
  hidden:  yes
  }

explore: locationdeets {
  hidden:  yes
  }

explore: locdeetsplt {
  hidden:  yes
  }

explore: pageviews1 {
  hidden:  yes
  }

explore: pageviews2 {
  hidden:  yes
  }

explore: pageviews2plt {
  hidden:  yes
  }

explore: purchases1 {
  hidden:  yes
  }

explore: purchases2 {
  hidden:  yes
  }

explore: query_trend_hourly {
  hidden:  yes
  }

explore: sessions1 {
  hidden:  yes
  }

explore: sessions2 {
  hidden:  yes
  }

explore: system_query_metrics {
  hidden:  yes
  }
explore: duplicate_pageviews {
  hidden:  yes
}
