view: p_negative_campaign_keyword_21700000000010391 {
  sql_table_name: `SA360.p_NegativeCampaignKeyword_21700000000010391`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension_group: creation_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creationTimestamp ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engineStatus ;;
  }

  dimension_group: last_modified_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastModifiedTimestamp ;;
  }

  dimension: negative_campaign_keyword_id {
    type: string
    sql: ${TABLE}.negativeCampaignKeywordId ;;
  }

  dimension: negative_campaign_keyword_match_type {
    type: string
    sql: ${TABLE}.negativeCampaignKeywordMatchType ;;
  }

  dimension: negative_campaign_keyword_text {
    type: string
    sql: ${TABLE}.negativeCampaignKeywordText ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
