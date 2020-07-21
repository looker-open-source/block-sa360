view: negative_campaign_target_21700000000010391 {
  sql_table_name: `SA360.NegativeCampaignTarget_21700000000010391`
    ;;

  dimension_group: _data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: age_target_age_range {
    type: string
    sql: ${TABLE}.ageTargetAgeRange ;;
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

  dimension: dynamic_search_ads_target_conditions {
    type: string
    sql: ${TABLE}.dynamicSearchAdsTargetConditions ;;
  }

  dimension: engine_remarketing_list {
    type: string
    sql: ${TABLE}.engineRemarketingList ;;
  }

  dimension: gender_target_gender_type {
    type: string
    sql: ${TABLE}.genderTargetGenderType ;;
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

  dimension: location_target_name {
    type: string
    sql: ${TABLE}.locationTargetName ;;
  }

  dimension: negative_campaign_target_id {
    type: string
    sql: ${TABLE}.negativeCampaignTargetId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [location_target_name]
  }
}
