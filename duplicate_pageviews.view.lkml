view: duplicate_pageviews {

  # # You can specify the table name if it's different from the view name:
  sql_table_name: __pw_monitoring.duplicate_pageviews_agg ;;
  #
  # # Define your dimensions and measures here, like this:
  dimension: sum_events {
    description: "Sum of all the duplicate events"
    type: number
    sql: ${TABLE}.sum_events ;;
   }

  dimension: count_events {
    description: "Count of instances of multiple events firing"
    type: number
    sql: ${TABLE}.count_events ;;
  }

  dimension: total_events {
    description: "Total pageview events for a day, dupes and non-dupes"
    type: number
    sql: ${TABLE}.total_events ;;
  }

  dimension: date_of_event {
    description: "The date when dupe occurred"
    type: date
    sql: ${TABLE}.date_of_event ;;
  }

  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: duplicate_pageviews {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
