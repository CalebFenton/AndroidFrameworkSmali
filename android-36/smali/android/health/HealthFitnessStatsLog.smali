.class public Landroid/health/HealthFitnessStatsLog;
.super Ljava/lang/Object;
.source "HealthFitnessStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist EXERCISE_ROUTE_API_CALLED:I = 0x28e

.field public static final blacklist EXERCISE_ROUTE_API_CALLED__OPERATION__OPERATION_READ:I = 0x0

.field public static final blacklist EXERCISE_ROUTE_API_CALLED__OPERATION__OPERATION_UPSERT:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_CALLED:I = 0x268

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__API_METHOD_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__CREATE_MEDICAL_DATA_SOURCE:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__DELETE_DATA:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__DELETE_MEDICAL_DATA_SOURCE_WITH_DATA:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__DELETE_MEDICAL_RESOURCES_BY_IDS:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__DELETE_MEDICAL_RESOURCES_BY_REQUESTS:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__GET_CHANGES:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__GET_CHANGES_TOKEN:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__GET_GRANTED_PERMISSIONS:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__GET_MEDICAL_DATA_SOURCES_BY_IDS:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__GET_MEDICAL_DATA_SOURCES_BY_REQUESTS:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__INSERT_DATA:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__READ_AGGREGATED_DATA:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__READ_DATA:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__READ_MEDICAL_RESOURCES_BY_IDS:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__READ_MEDICAL_RESOURCES_BY_REQUESTS:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__REVOKE_ALL_PERMISSIONS:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__UPDATE_DATA:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_METHOD__UPSERT_MEDICAL_RESOURCES:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_STATUS__ERROR:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_STATUS__STATUS_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_CALLED__API_STATUS__SUCCESS:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_CALLED__CALLER_FOREGROUND_STATE__BACKGROUND:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_CALLED__CALLER_FOREGROUND_STATE__FOREGROUND:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_CALLED__CALLER_FOREGROUND_STATE__UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__NOT_DEFINED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__NOT_USED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_15_MIN_ABOVE_3000:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_15_MIN_BW_1000_TO_2000:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_15_MIN_BW_2000_TO_3000:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_15_MIN_BW_500_TO_1000:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_15_MIN_UNDER_500:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_24_HRS_ABOVE_5000:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_24_HRS_BW_1000_TO_2000:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_24_HRS_BW_2000_TO_3000:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_24_HRS_BW_3000_TO_4000:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_24_HRS_BW_4000_TO_5000:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_BACKGROUND_24_HRS_UNDER_1000:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_15_MIN_ABOVE_4000:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_15_MIN_BW_1000_TO_2000:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_15_MIN_BW_2000_TO_3000:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_15_MIN_BW_3000_TO_4000:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_15_MIN_UNDER_1000:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_24_HRS_ABOVE_6000:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_24_HRS_BW_2000_TO_3000:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_24_HRS_BW_3000_TO_4000:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_24_HRS_BW_4000_TO_5000:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_24_HRS_BW_5000_TO_6000:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_CALLED__RATE_LIMIT__RATE_LIMIT_FOREGROUND_24_HRS_UNDER_2000:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED:I = 0x283

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__API_METHOD_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__CREATE_MEDICAL_DATA_SOURCE:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__DELETE_DATA:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__DELETE_MEDICAL_DATA_SOURCE_WITH_DATA:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__DELETE_MEDICAL_RESOURCES_BY_IDS:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__DELETE_MEDICAL_RESOURCES_BY_REQUESTS:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__GET_CHANGES:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__GET_CHANGES_TOKEN:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__GET_GRANTED_PERMISSIONS:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__GET_MEDICAL_DATA_SOURCES_BY_IDS:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__GET_MEDICAL_DATA_SOURCES_BY_REQUESTS:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__INSERT_DATA:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__READ_AGGREGATED_DATA:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__READ_DATA:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__READ_MEDICAL_RESOURCES_BY_IDS:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__READ_MEDICAL_RESOURCES_BY_REQUESTS:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__REVOKE_ALL_PERMISSIONS:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__UPDATE_DATA:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_METHOD__UPSERT_MEDICAL_RESOURCES:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_STATUS__ERROR:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_STATUS__STATUS_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__API_STATUS__SUCCESS:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FIVE__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_FOUR__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_ONE__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_SIX__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_THREE__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_API_INVOKED__DATA_TYPE_TWO__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_APP_OPENED_REPORTED:I = 0x271

.field public static final blacklist HEALTH_CONNECT_APP_OPENED_REPORTED__SOURCE__SOURCE_DEEP_LINK:I = 0x1

.field public static final blacklist HEALTH_CONNECT_APP_OPENED_REPORTED__SOURCE__SOURCE_DYNAMIC_SETTINGS:I = 0x2

.field public static final blacklist HEALTH_CONNECT_APP_OPENED_REPORTED__SOURCE__SOURCE_MAIN_ACTION:I = 0x4

.field public static final blacklist HEALTH_CONNECT_APP_OPENED_REPORTED__SOURCE__SOURCE_QUICK_SETTINGS:I = 0x3

.field public static final blacklist HEALTH_CONNECT_APP_OPENED_REPORTED__SOURCE__SOURCE_UNKNOWN_ENTRY_POINT:I = 0x0

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED:I = 0x3ff

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__BACKUP_TYPE__DATA_BACKUP_TYPE_FULL:I = 0x1

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__BACKUP_TYPE__DATA_BACKUP_TYPE_INCREMENTAL:I = 0x2

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__BACKUP_TYPE__DATA_BACKUP_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__STATUS__DATA_BACKUP_STATUS_ERROR_INVALID_REQUEST:I = 0x5

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__STATUS__DATA_BACKUP_STATUS_ERROR_NONE:I = 0x1

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__STATUS__DATA_BACKUP_STATUS_ERROR_PARTIAL_BACKUP:I = 0x3

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__STATUS__DATA_BACKUP_STATUS_ERROR_UNKNOWN:I = 0x2

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__STATUS__DATA_BACKUP_STATUS_ERROR_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_DATA_BACKUP_INVOKED__STATUS__DATA_BACKUP_STATUS_STARTED:I = 0x4

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED:I = 0x401

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED__STATUS__DATA_RESTORE_STATUS_ERROR_CONVERSION_FAILED:I = 0x3

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED__STATUS__DATA_RESTORE_STATUS_ERROR_NONE:I = 0x1

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED__STATUS__DATA_RESTORE_STATUS_ERROR_PARTIAL_RESTORE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED__STATUS__DATA_RESTORE_STATUS_ERROR_UNKNOWN:I = 0x2

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED__STATUS__DATA_RESTORE_STATUS_ERROR_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_DATA_RESTORE_INVOKED__STATUS__DATA_RESTORE_STATUS_STARTED:I = 0x5

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS:I = 0x3da

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ_OR_WRITE__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__READ__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__SHARED__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_ECOSYSTEM_STATS__WRITE__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_EXPORT_IMPORT_STATS_REPORTED:I = 0x397

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED:I = 0x38b

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED__STATUS__EXPORT_STATUS_ERROR_LOST_FILE_ACCESS:I = 0x4

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED__STATUS__EXPORT_STATUS_ERROR_NONE:I = 0x2

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED__STATUS__EXPORT_STATUS_ERROR_OUT_OF_STORAGE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED__STATUS__EXPORT_STATUS_ERROR_UNKNOWN:I = 0x3

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED__STATUS__EXPORT_STATUS_STARTED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_EXPORT_INVOKED__STATUS__EXPORT_STATUS_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED:I = 0x396

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED__STATUS__IMPORT_STATUS_ERROR_NONE:I = 0x2

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED__STATUS__IMPORT_STATUS_ERROR_UNKNOWN:I = 0x3

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED__STATUS__IMPORT_STATUS_ERROR_VERSION_MISMATCH:I = 0x5

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED__STATUS__IMPORT_STATUS_ERROR_WRONG_FILE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED__STATUS__IMPORT_STATUS_STARTED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_IMPORT_INVOKED__STATUS__IMPORT_STATUS_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_PERMISSION_STATS:I = 0x3c3

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED:I = 0x3d4

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__API_METHOD_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__CREATE_MEDICAL_DATA_SOURCE:I = 0xa

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__DELETE_DATA:I = 0x1

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__DELETE_MEDICAL_DATA_SOURCE_WITH_DATA:I = 0xd

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__DELETE_MEDICAL_RESOURCES_BY_IDS:I = 0x11

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__DELETE_MEDICAL_RESOURCES_BY_REQUESTS:I = 0x12

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__GET_CHANGES:I = 0x2

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__GET_CHANGES_TOKEN:I = 0x3

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__GET_GRANTED_PERMISSIONS:I = 0x4

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__GET_MEDICAL_DATA_SOURCES_BY_IDS:I = 0xb

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__GET_MEDICAL_DATA_SOURCES_BY_REQUESTS:I = 0xc

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__INSERT_DATA:I = 0x5

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__READ_AGGREGATED_DATA:I = 0x6

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__READ_DATA:I = 0x7

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__READ_MEDICAL_RESOURCES_BY_IDS:I = 0xf

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__READ_MEDICAL_RESOURCES_BY_REQUESTS:I = 0x10

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__REVOKE_ALL_PERMISSIONS:I = 0x8

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__UPDATE_DATA:I = 0x9

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_METHOD__UPSERT_MEDICAL_RESOURCES:I = 0xe

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_STATUS__ERROR:I = 0x2

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_STATUS__STATUS_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__API_STATUS__SUCCESS:I = 0x1

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_ALLERGIES_INTOLERANCES:I = 0x2

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_CONDITIONS:I = 0x7

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_LABORATORY_RESULTS:I = 0x6

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_MEDICATIONS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_PERSONAL_DETAILS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_PRACTITIONER_DETAILS:I = 0xb

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_PREGNANCY:I = 0x3

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_PROCEDURES:I = 0x8

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_SOCIAL_HISTORY:I = 0x4

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_VACCINES:I = 0x1

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_VISITS:I = 0xc

.field public static final blacklist HEALTH_CONNECT_PHR_API_INVOKED__MEDICAL_RESOURCE_TYPE__MEDICAL_RESOURCE_TYPE_VITAL_SIGNS:I = 0x5

.field public static final blacklist HEALTH_CONNECT_PHR_STORAGE_STATS:I = 0x3d8

.field public static final blacklist HEALTH_CONNECT_PHR_USAGE_STATS:I = 0x3d5

.field public static final blacklist HEALTH_CONNECT_RESTORE_ELIGIBILITY_CHECKED:I = 0x403

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS:I = 0x3d9

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__ACTIVITY_INTENSITY:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BASAL_BODY_TEMPERATURE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BASAL_METABOLIC_RATE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BLOOD_GLUCOSE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BLOOD_PRESSURE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BODY_FAT:I = 0x7

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BODY_TEMPERATURE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BODY_WATER_MASS:I = 0x26

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__BONE_MASS:I = 0x9

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__CERVICAL_MUCUS:I = 0xa

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__CYCLING_PEDALING_CADENCE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__DATA_TYPE_NOT_ASSIGNED:I = 0x1

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__DATA_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__DISTANCE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__ELEVATION_GAINED:I = 0xd

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__EXERCISE_SESSION:I = 0xe

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__FLOORS_CLIMBED:I = 0xf

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__HEART_RATE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__HEART_RATE_VARIABILITY_RMSSD:I = 0x27

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__HEIGHT:I = 0x11

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__HYDRATION:I = 0x12

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__INTERMENSTRUAL_BLEEDING:I = 0x28

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__LEAN_BODY_MASS:I = 0x13

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__MENSTRUATION_FLOW:I = 0x14

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__MENSTRUATION_PERIOD:I = 0x29

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__MINDFULNESS_SESSION:I = 0x25

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__NICOTINE_INTAKE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__NUTRITION:I = 0x15

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__OVULATION_TEST:I = 0x16

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__OXYGEN_SATURATION:I = 0x17

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__PLANNED_EXERCISE_SESSION:I = 0x24

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__POWER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__RESPIRATORY_RATE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__RESTING_HEART_RATE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__SEXUAL_ACTIVITY:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__SKIN_TEMPERATURE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__SLEEP_SESSION:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__SPEED:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__STEPS:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__STEPS_CADENCE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__TOTAL_CALORIES_BURNED:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__VO2_MAX:I = 0x20

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__WEIGHT:I = 0x21

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__DATA_TYPE__WHEELCHAIR_PUSHES:I = 0x22

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__METRIC_TYPE__METRIC_TYPE_DIRECTIONAL_PAIRING:I = 0x1

.field public static final blacklist HEALTH_CONNECT_RESTRICTED_ECOSYSTEM_STATS__METRIC_TYPE__METRIC_TYPE_DIRECTIONAL_PAIRING_PER_DATA_TYPE:I = 0x0

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED:I = 0x400

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED__STATUS__SETTINGS_BACKUP_STATUS_ERROR_COLLATION_FAILED:I = 0x3

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED__STATUS__SETTINGS_BACKUP_STATUS_ERROR_NONE:I = 0x1

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED__STATUS__SETTINGS_BACKUP_STATUS_ERROR_PARTIAL_BACKUP:I = 0x4

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED__STATUS__SETTINGS_BACKUP_STATUS_ERROR_UNKNOWN:I = 0x2

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED__STATUS__SETTINGS_BACKUP_STATUS_ERROR_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_SETTINGS_BACKUP_INVOKED__STATUS__SETTINGS_BACKUP_STATUS_STARTED:I = 0x5

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED:I = 0x402

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED__STATUS__SETTINGS_RESTORE_STATUS_ERROR_CONVERSION_FAILED:I = 0x3

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED__STATUS__SETTINGS_RESTORE_STATUS_ERROR_NONE:I = 0x1

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED__STATUS__SETTINGS_RESTORE_STATUS_ERROR_PARTIAL_RESTORE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED__STATUS__SETTINGS_RESTORE_STATUS_ERROR_UNKNOWN:I = 0x2

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED__STATUS__SETTINGS_RESTORE_STATUS_ERROR_UNSPECIFIED:I = 0x0

.field public static final blacklist HEALTH_CONNECT_SETTINGS_RESTORE_INVOKED__STATUS__SETTINGS_RESTORE_STATUS_STARTED:I = 0x5

.field public static final blacklist HEALTH_CONNECT_STORAGE_STATS:I = 0x26a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION:I = 0x26f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ADDITIONAL_ACCESS_BUTTON:I = 0xaf

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ADD_AN_APP_BUTTON:I = 0x9f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AGGREGATION_DATA_VIEW:I = 0x33

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_ALL_PERMISSIONS_SWITCH_ACTIVE:I = 0x4b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_ALL_PERMISSIONS_SWITCH_INACTIVE:I = 0x4c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_ALL_SWITCH:I = 0x5a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_BACKGROUND_READ_BUTTON:I = 0xc8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_COMBINED_ADDITIONAL_PERMISSIONS_BUTTON:I = 0xc6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_HISTORY_READ_BUTTON:I = 0xca

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_PERMISSIONS_BUTTON:I = 0x58

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ALLOW_WRITE_HEALTH_RECORDS_BUTTON:I = 0x11e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__APP_DENIED_DIALOG_CONTAINER:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__APP_DENIED_DIALOG_GOT_IT_BUTTON:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__APP_FILTER_BUTTON:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__APP_PERMISSIONS_BUTTON:I = 0x1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__APP_RATIONALE_LINK:I = 0x5c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__APP_SOURCE_BUTTON:I = 0x9e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_BUTTON:I = 0x21

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_CONFIRMATION_DIALOG_CONTAINER:I = 0x29

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_CONFIRMATION_DIALOG_DONE_BUTTON:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_DIALOG_CANCEL_BUTTON:I = 0x27

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_DIALOG_CONFIRM_BUTTON:I = 0x28

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_DIALOG_CONTAINER:I = 0x26

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_EIGHTEEN_MONTHS_BUTTON:I = 0x24

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_NEVER_BUTTON:I = 0x25

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__AUTO_DELETE_THREE_MONTHS_BUTTON:I = 0x23

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BACKGROUND_READ_BUTTON:I = 0xcc

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BACKUP_AND_RESTORE_BUTTON:I = 0xd4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BACKUP_DATA_BUTTON:I = 0x5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BLOCKED_APP_DIALOG_CONTAINER:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BLOCKED_APP_DIALOG_GOT_IT_BUTTON:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BROWSE_DATA_BUTTON:I = 0xf2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__BROWSE_HEALTH_RECORDS_BUTTON:I = 0x115

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CALORIES_BUTTON:I = 0x46

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CANCEL_BACKGROUND_READ_BUTTON:I = 0xc9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CANCEL_BUTTON:I = 0x3e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CANCEL_COMBINED_ADDITIONAL_PERMISSIONS_BUTTON:I = 0xc7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CANCEL_HISTORY_READ_BUTTON:I = 0xcb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CANCEL_PERMISSIONS_BUTTON:I = 0x59

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CANCEL_WRITE_HEALTH_RECORDS_BUTTON:I = 0x11f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CATEGORY_BUTTON:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CELSIUS_BUTTON:I = 0x48

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CENTIMETERS_BUTTON:I = 0x3f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CHANGE_UNITS_DISTANCE_BUTTON:I = 0x3b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CHANGE_UNITS_ENERGY_BUTTON:I = 0x3c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CHANGE_UNITS_HEIGHT_BUTTON:I = 0x39

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CHANGE_UNITS_TEMPERATURE_BUTTON:I = 0x3d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CHANGE_UNITS_WEIGHT_BUTTON:I = 0x3a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CHECK_FOR_UPDATES_BUTTON:I = 0xf

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CONNECTED_APP_BUTTON:I = 0xa

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CONNECT_MORE_APPS_BANNER:I = 0x10e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CONNECT_MORE_APPS_BANNER_DISMISS_BUTTON:I = 0x10f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__CONNECT_MORE_APPS_BANNER_SET_UP_BUTTON:I = 0x110

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_ACCESS_APP_BUTTON:I = 0x2f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_ACCESS_INACTIVE_APP_BUTTON:I = 0x30

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_AND_ACCESS_BUTTON:I = 0x2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_ENTRY_DELETE_BUTTON:I = 0x75

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_ENTRY_VIEW:I = 0x34

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_CANCEL_DIALOG:I = 0xa9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_CANCEL_DIALOG_CANCEL_BUTTON:I = 0xaa

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_CANCEL_DIALOG_CONTINUE_BUTTON:I = 0xab

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_FAILED_BANNER:I = 0xa7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_FAILED_BANNER_BUTTON:I = 0xa8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_IN_PROGRESS_DIALOG_BUTTON:I = 0xb7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_IN_PROGRESS_DIALOG_CONTAINER:I = 0xb6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_SUCCESS_SNACKBAR:I = 0xac

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_UPDATE_NEEDED_BANNER:I = 0xa4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_UPDATE_NEEDED_BANNER_UPDATE_BUTTON:I = 0xa5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_RESTORE_UPDATE_NEEDED_CANCEL_RESTORE_BUTTON:I = 0xa6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_SOURCES_AND_PRIORITY_BUTTON:I = 0x9a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_SOURCES_MENU_BUTTON:I = 0xf7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_TOTALS_CARD:I = 0x9d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATA_TYPE_SPINNER_BUTTON:I = 0x9c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATE_VIEW_SPINNER_DAY:I = 0xfd

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATE_VIEW_SPINNER_WEEK:I = 0xfe

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DATE_VIEW_SPINNER_YEAR:I = 0xff

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETE_ALL_DATA_BUTTON:I = 0x22

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETE_APP_DATA_BUTTON:I = 0x4f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETE_CATEGORY_DATA_BUTTON:I = 0x2e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETE_MENU_BUTTON:I = 0xfa

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETE_THIS_DATA_BUTTON:I = 0x32

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_CONFIRMATION_CANCEL_BUTTON:I = 0x66

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_CONFIRMATION_CONTAINER:I = 0x64

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_CONFIRMATION_DELETE_BUTTON:I = 0x67

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_CONFIRMATION_GO_BACK_BUTTON:I = 0x65

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_CONFIRMATION_REMOVE_APP_PERMISSIONS_BUTTON:I = 0x68

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_ERROR_CLOSE_BUTTON:I = 0x6d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_ERROR_CONTAINER:I = 0x6c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_ERROR_TRY_AGAIN_BUTTON:I = 0x6e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_IN_PROGRESS_CONTAINER:I = 0x69

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_SUCCESS_CONTAINER:I = 0x6a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_SUCCESS_DONE_BUTTON:I = 0x6b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_ALL_DATA_BUTTON:I = 0x61

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_CANCEL_BUTTON:I = 0x62

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_CONTAINER:I = 0x5d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_LAST_24_HOURS_BUTTON:I = 0x5e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_LAST_30_DAYS_BUTTON:I = 0x60

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_LAST_7_DAYS_BUTTON:I = 0x5f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DELETION_DIALOG_TIME_RANGE_NEXT_BUTTON:I = 0x63

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DENIED_APPS_BANNER:I = 0x16

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DENIED_APPS_DIALOG_CONTAINER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DENIED_APPS_DIALOG_GOT_IT_BUTTON:I = 0x19

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DENIED_APPS_SEE_DETAILS_BUTTON:I = 0x17

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISABLE_EXERCISE_PERMISSION_DIALOG_CONTAINER:I = 0xc0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISABLE_EXERCISE_PERMISSION_DIALOG_NEGATIVE_BUTTON:I = 0xc2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISABLE_EXERCISE_PERMISSION_DIALOG_POSITIVE_BUTTON:I = 0xc1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_CANCEL_BUTTON:I = 0x56

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_CONTAINER:I = 0x55

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_DELETE_CHECKBOX:I = 0x120

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_REMOVE_ALL_BUTTON:I = 0x57

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_APP_DIALOG_CANCEL_BUTTON:I = 0x52

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_APP_DIALOG_CONFIRM_BUTTON:I = 0x53

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_APP_DIALOG_CONTAINER:I = 0x51

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__DISCONNECT_APP_DIALOG_DELETE_CHECKBOX:I = 0x54

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EDIT_SOURCE_LIST_BUTTON:I = 0xa0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ELEMENT_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ENABLE_EXERCISE_PERMISSION_DIALOG_CONTAINER:I = 0xbd

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ENABLE_EXERCISE_PERMISSION_DIALOG_NEGATIVE_BUTTON:I = 0xbf

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ENABLE_EXERCISE_PERMISSION_DIALOG_POSITIVE_BUTTON:I = 0xbe

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ENTER_DELETION_STATE_MENU_BUTTON:I = 0xf8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ENTRY_BUTTON_NO_CHECKBOX:I = 0xfc

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ENTRY_BUTTON_WITH_CHECKBOX:I = 0xfb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ERROR_PAGE_STATE:I = 0x97

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_PERFORMANCE_GOAL_ENTRY_VIEW:I = 0xd0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTES_BUTTON:I = 0xb0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTES_DIALOG_ALLOW_ALL_BUTTON:I = 0xb1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTES_DIALOG_ASK_BUTTON:I = 0xb2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTES_DIALOG_CONTAINER:I = 0xb4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTES_DIALOG_DENY_BUTTON:I = 0xb3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_DIALOG_ALLOW_BUTTON:I = 0x7e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_DIALOG_ALWAYS_ALLOW_BUTTON:I = 0xc3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_DIALOG_CONTAINER:I = 0x7b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_DIALOG_DONT_ALLOW_BUTTON:I = 0x7f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_DIALOG_INFORMATION_BUTTON:I = 0x7c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_DIALOG_ROUTE_VIEW:I = 0x7d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_EDUCATION_DIALOG_BACK_BUTTON:I = 0x81

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_ROUTE_EDUCATION_DIALOG_CONTAINER:I = 0x80

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_SESSION_ENTRY_BUTTON:I = 0x35

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_SESSION_ENTRY_DETAILS_VIEW:I = 0x77

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXERCISE_SESSION_MAP_VIEW:I = 0xba

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXIT_DELETION_STATE_MENU_BUTTON:I = 0xf9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_CONTROL_SWITCH_OFF:I = 0xea

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_CONTROL_SWITCH_ON:I = 0xe9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_DATA_BUTTON:I = 0x20

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_DESTINATION_BACK_BUTTON:I = 0xdc

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_DESTINATION_DOCUMENT_PROVIDER_BUTTON:I = 0xde

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_DESTINATION_NEXT_BUTTON:I = 0xdd

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_ERROR_BANNER:I = 0xe5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_ERROR_BANNER_BUTTON:I = 0xee

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_FREQUENCY_BACK_BUTTON:I = 0xda

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_FREQUENCY_DAILY_BUTTON:I = 0xd7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_FREQUENCY_MONTHLY_BUTTON:I = 0xd9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_FREQUENCY_NEXT_BUTTON:I = 0xdb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_FREQUENCY_WEEKLY_BUTTON:I = 0xd8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_SETTINGS_FREQUENCY_DAILY:I = 0xeb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_SETTINGS_FREQUENCY_MONTHLY:I = 0xed

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__EXPORT_SETTINGS_FREQUENCY_WEEKLY:I = 0xec

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__FAHRENHEIT_BUTTON:I = 0x49

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__FEET_AND_INCHES_BUTTON:I = 0x40

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__FITNESS_PERMISSIONS_BUTTON:I = 0x117

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__FORMATTED_SECTION_CONTENT_VIEW:I = 0xcf

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__FORMATTED_SECTION_TITLE_VIEW:I = 0xc5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__HELP_AND_FEEDBACK_BUTTON:I = 0xe

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__HISTORY_READ_BUTTON:I = 0xcd

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_CONFIRMATION_CANCEL_BUTTON:I = 0xe2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_CONFIRMATION_CONTAINER:I = 0xe4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_CONFIRMATION_DONE_BUTTON:I = 0xe3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_GENERAL_ERROR_BANNER:I = 0xe6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_GENERAL_ERROR_BANNER_BUTTON:I = 0xef

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_DIAGLOG_CONTAINER:I = 0x125

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_DIALOG_CANCEL_BUTTON:I = 0x127

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_DIALOG_CONFIRM_BUTTON:I = 0x128

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_RADIO_BUTTON:I = 0x126

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_CANCEL_BUTTON:I = 0xdf

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_DOCUMENT_PROVIDER_BUTTON:I = 0xe1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_SOURCE_LOCATION_NEXT_BUTTON:I = 0xe0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_VERSION_MISMATCH_ERROR_BANNER:I = 0xe7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_VERSION_MISMATCH_ERROR_BANNER_BUTTON:I = 0xf0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_WRONG_FILE_ERROR_BANNER:I = 0xe8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__IMPORT_WRONG_FILE_ERROR_BANNER_BUTTON:I = 0xf1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__INACTIVE_APP_BUTTON:I = 0xbb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__INACTIVE_APP_DELETE_BUTTON:I = 0xc

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__INACTIVE_APP_DIALOG_CONTAINER:I = 0x12

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__INACTIVE_APP_DIALOG_DELETE_BUTTON:I = 0x15

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__INACTIVE_APP_DIALOG_GO_BACK_BUTTON:I = 0x14

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__INACTIVE_APP_DIALOG_REMOVE_PERMISSIONS_BUTTON:I = 0x13

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__KELVIN_BUTTON:I = 0x4a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__KILOGRAMS_BUTTON:I = 0x41

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__KILOJOULES_BUTTON:I = 0x47

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__KILOMETERS_BUTTON:I = 0x44

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__LOADING_PAGE_STATE:I = 0x96

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__LOCK_SCREEN_BANNER:I = 0x11a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__LOCK_SCREEN_BANNER_BUTTON:I = 0x11b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__LOCK_SCREEN_BANNER_DISMISS_BUTTON:I = 0x11c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MANAGE_DATA_BUTTON:I = 0x99

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MANAGE_PERMISSIONS_FLOATING_BUTTON:I = 0x8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MEDICAL_PERMISSIONS_BUTTON:I = 0x118

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_APP_UPDATE_APP_BUTTON:I = 0xad

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_APP_UPDATE_BANNER:I = 0x94

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_APP_UPDATE_BUTTON:I = 0x95

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_APP_UPDATE_DISMISS_BUTTON:I = 0xb5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_APP_UPDATE_LEARN_MORE_BUTTON:I = 0xae

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_DONE_DIALOG_BUTTON:I = 0x8a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_DONE_DIALOG_CONTAINER:I = 0x89

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_IN_PROGRESS_DIALOG_BUTTON:I = 0x8c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_IN_PROGRESS_DIALOG_CONTAINER:I = 0x8b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_NOT_COMPLETE_DIALOG_BUTTON:I = 0x91

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_NOT_COMPLETE_DIALOG_CONTAINER:I = 0x90

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_PAUSED_CANCEL_BUTTON:I = 0xb9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_PAUSED_CONTINUE_BUTTON:I = 0xb8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_PENDING_DIALOG_CANCEL_BUTTON:I = 0x8e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_PENDING_DIALOG_CONTAINER:I = 0x8d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_PENDING_DIALOG_CONTINUE_BUTTON:I = 0x8f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_RESUME_BANNER:I = 0x92

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_RESUME_BANNER_BUTTON:I = 0x93

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_UPDATE_NEEDED_CANCEL_BUTTON:I = 0x86

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MIGRATION_UPDATE_NEEDED_UPDATE_BUTTON:I = 0x85

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MILES_BUTTON:I = 0x45

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MOVE_APP_SOURCE_DOWN_MENU_BUTTON:I = 0x122

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__MOVE_APP_SOURCE_UP_MENU_BUTTON:I = 0x123

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__NEXT_DAY_BUTTON:I = 0x36

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__NOT_CONNECTED_APP_BUTTON:I = 0xb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ONBOARDING_COMPLETED_BUTTON:I = 0x6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ONBOARDING_GO_BACK_BUTTON:I = 0x7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__ONBOARDING_MESSAGE_WITH_PHR:I = 0x114

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__OPEN_APP_SOURCE_MENU_BUTTON:I = 0x121

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PERMISSION_SWITCH:I = 0x5b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PERMISSION_SWITCH_ACTIVE:I = 0x4d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PERMISSION_SWITCH_INACTIVE:I = 0x4e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PERMISSION_TYPE_BUTTON:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PERMISSION_TYPE_BUTTON_NO_CHECKBOX:I = 0xf4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PERMISSION_TYPE_BUTTON_WITH_CHECKBOX:I = 0xf3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PLANNED_EXERCISE_BLOCK_ENTRY_VIEW:I = 0xd2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PLANNED_EXERCISE_SESSION_ENTRY_BUTTON:I = 0xd1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PLANNED_EXERCISE_STEP_ENTRY_VIEW:I = 0xd3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__POTENTIAL_PRIORITY_APP_BUTTON:I = 0xa1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__POUNDS_BUTTON:I = 0x42

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PREVIOUS_DAY_BUTTON:I = 0x37

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__PRIVACY_POLICY_LINK:I = 0x50

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__RAW_FHIR_RESOURCE:I = 0x11d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__RECENT_ACCESS_ENTRY:I = 0x4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REMOVE_ALL_APPS_PERMISSIONS_BUTTON:I = 0xd

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REMOVE_ALL_PERMISSIONS_BUTTON:I = 0x119

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REMOVE_APP_SOURCE_BUTTON:I = 0xa3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REMOVE_APP_SOURCE_MENU_BUTTON:I = 0x124

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REORDER_APP_SOURCE_BUTTON:I = 0xa2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REQUEST_PERMISSIONS_HEADER:I = 0x129

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__RESTORE_DATA_BUTTON:I = 0xd6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__REVERSE_SESSION_DETAIL_ENTRY_VIEW:I = 0xc4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SCHEDULED_EXPORT_BUTTON:I = 0xd5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEARCH_BUTTON:I = 0x9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_ALL_CATEGORIES_BUTTON:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_ALL_COMPATIBLE_APPS_BUTTON:I = 0x10

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_ALL_ENTRIES_BUTTON:I = 0x31

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_ALL_RECENT_ACCESS_BUTTON:I = 0x3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_APP_DATA_BUTTON:I = 0x100

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_COMPATIBLE_APPS_BANNER:I = 0x111

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_COMPATIBLE_APPS_BANNER_APP_STORE_BUTTON:I = 0x113

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEE_COMPATIBLE_APPS_BANNER_DISMISS_BUTTON:I = 0x112

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SELECT_ALL_BUTTON:I = 0xf5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SELECT_DATE_BUTTON:I = 0x38

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SEND_FEEDBACK_BUTTON:I = 0xbc

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SESSION_DETAIL_ENTRY_VIEW:I = 0x79

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SESSION_DETAIL_HEADER_VIEW:I = 0x7a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SET_APP_PRIORITY_BUTTON:I = 0x2d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SET_APP_PRIORITY_DIALOG_CANCEL_BUTTON:I = 0x83

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SET_APP_PRIORITY_DIALOG_CONTAINER:I = 0x82

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SET_APP_PRIORITY_DIALOG_SAVE_BUTTON:I = 0x84

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SET_UNITS_BUTTON:I = 0x9b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SLEEP_SESSION_ENTRY_BUTTON:I = 0x76

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SLEEP_SESSION_ENTRY_DETAILS_VIEW:I = 0x78

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__START_USING_HC_BANNER:I = 0x10b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__START_USING_HC_BANNER_DISMISS_BUTTON:I = 0x10c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__START_USING_HC_BANNER_SET_UP_BUTTON:I = 0x10d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__STONES_BUTTON:I = 0x43

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__SUCCESS_DELETION_DIALOG_SEE_CONNECTED_APPS_BUTTON:I = 0xf6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__TOOLBAR_HELP_BUTTON:I = 0x6f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__TOOLBAR_OPEN_SOURCE_LICENSE_BUTTON:I = 0x72

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__TOOLBAR_SETTINGS_BUTTON:I = 0x71

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_BANNER:I = 0x101

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_BANNER_BUTTON:I = 0x102

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_BUTTON:I = 0x10a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_DIALOG:I = 0x104

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_DIALOG_NEGATIVE_BUTTON:I = 0x106

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_DIALOG_NEUTRAL_BUTTON:I = 0x107

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_DIALOG_POSITIVE_BUTTON:I = 0x105

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_HEALTH_PREFERENCE:I = 0x103

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_SWITCH_ACTIVE_PREFERENCE:I = 0x108

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__UNKNOWN_SWITCH_INACTIVE_PREFERENCE:I = 0x109

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__ELEMENT__WITH_DATA_PAGE_STATE:I = 0x98

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ADDITIONAL_ACCESS_PAGE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ADD_AN_APP_PAGE:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ALL_CATEGORIES_PAGE:I = 0xf

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ALL_DATA_PAGE:I = 0x29

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ALL_MEDICAL_DATA_PAGE:I = 0x2e

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__APP_ACCESS_PAGE:I = 0xd

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__APP_DATA_PAGE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__APP_ENTRIES_PAGE:I = 0x2d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__APP_PERMISSIONS_EMPTY_STATE_PAGE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__APP_PERMISSIONS_PAGE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__AUTO_DELETE_PAGE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__BACKUP_AND_RESTORE_PAGE:I = 0x24

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__CATEGORIES_PAGE:I = 0x7

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__COMBINED_APP_ACCESS_PAGE:I = 0x33

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__DATA_ACCESS_PAGE:I = 0xa

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__DATA_ENTRIES_PAGE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__DATA_RESTORE_IN_PROGRESS_PAGE:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__DATA_SOURCES_PAGE:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ENTRY_DETAILS_PAGE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__EXPORT_DESTINATION_PAGE:I = 0x26

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__EXPORT_FREQUENCY_PAGE:I = 0x25

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__EXPORT_SETTINGS_PAGE:I = 0x27

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__HELP_AND_FEEDBACK_PAGE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__HOME_PAGE:I = 0x1

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__IMPORT_SOURCE_LOCATION_PAGE:I = 0x28

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MANAGE_DATA_PAGE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MANAGE_PERMISSIONS_PAGE:I = 0x13

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MEDICAL_APP_ACCESS_PAGE:I = 0x34

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MIGRATION_APP_UPDATE_NEEDED_PAGE:I = 0x16

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MIGRATION_IN_PROGRESS_PAGE:I = 0x15

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MIGRATION_MODULE_UPDATE_NEEDED_PAGE:I = 0x17

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__MIGRATION_PAUSED_PAGE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__ONBOARDING_PAGE:I = 0x2

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__PAGE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__PERMISSION_TYPES_PAGE:I = 0x9

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__RAW_FHIR_PAGE:I = 0x31

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__RECENT_ACCESS_PAGE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__REQUEST_BACKGROUND_READ_PERMISSION_PAGE:I = 0x22

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__REQUEST_COMBINED_ADDITIONAL_PERMISSIONS_PAGE:I = 0x21

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__REQUEST_HISTORY_READ_PERMISSION_PAGE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__REQUEST_MEDICAL_PERMISSIONS_PAGE:I = 0x32

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__REQUEST_PERMISSIONS_PAGE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__REQUEST_WRITE_MEDICAL_PERMISSION_PAGE:I = 0x37

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__SEARCH_APPS_PAGE:I = 0x20

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__SETTINGS_MANAGE_APP_PERMISSIONS_PAGE:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__SETTINGS_MANAGE_COMBINED_APP_PERMISSIONS_PAGE:I = 0x35

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__SETTINGS_MANAGE_MEDICAL_APP_PERMISSIONS_PAGE:I = 0x36

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__SETTINGS_MANAGE_PERMISSIONS_PAGE:I = 0x14

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__TAB_ACCESS_PAGE:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__TAB_ENTRIES_PAGE:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__TAB_MEDICAL_ACCESS_PAGE:I = 0x30

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__TAB_MEDICAL_ENTRIES_PAGE:I = 0x2f

.field public static final blacklist HEALTH_CONNECT_UI_IMPRESSION__PAGE__UNITS_PAGE:I = 0xe

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION:I = 0x270

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ACTION__ACTION_CLICK:I = 0x1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ACTION__ACTION_DISMISS:I = 0x4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ACTION__ACTION_TOGGLE_OFF:I = 0x3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ACTION__ACTION_TOGGLE_ON:I = 0x2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ACTION__ACTION_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ADDITIONAL_ACCESS_BUTTON:I = 0xaf

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ADD_AN_APP_BUTTON:I = 0x9f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AGGREGATION_DATA_VIEW:I = 0x33

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_ALL_PERMISSIONS_SWITCH_ACTIVE:I = 0x4b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_ALL_PERMISSIONS_SWITCH_INACTIVE:I = 0x4c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_ALL_SWITCH:I = 0x5a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_BACKGROUND_READ_BUTTON:I = 0xc8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_COMBINED_ADDITIONAL_PERMISSIONS_BUTTON:I = 0xc6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_HISTORY_READ_BUTTON:I = 0xca

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_PERMISSIONS_BUTTON:I = 0x58

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ALLOW_WRITE_HEALTH_RECORDS_BUTTON:I = 0x11e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__APP_DENIED_DIALOG_CONTAINER:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__APP_DENIED_DIALOG_GOT_IT_BUTTON:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__APP_FILTER_BUTTON:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__APP_PERMISSIONS_BUTTON:I = 0x1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__APP_RATIONALE_LINK:I = 0x5c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__APP_SOURCE_BUTTON:I = 0x9e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_BUTTON:I = 0x21

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_CONFIRMATION_DIALOG_CONTAINER:I = 0x29

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_CONFIRMATION_DIALOG_DONE_BUTTON:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_DIALOG_CANCEL_BUTTON:I = 0x27

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_DIALOG_CONFIRM_BUTTON:I = 0x28

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_DIALOG_CONTAINER:I = 0x26

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_EIGHTEEN_MONTHS_BUTTON:I = 0x24

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_NEVER_BUTTON:I = 0x25

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__AUTO_DELETE_THREE_MONTHS_BUTTON:I = 0x23

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BACKGROUND_READ_BUTTON:I = 0xcc

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BACKUP_AND_RESTORE_BUTTON:I = 0xd4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BACKUP_DATA_BUTTON:I = 0x5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BLOCKED_APP_DIALOG_CONTAINER:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BLOCKED_APP_DIALOG_GOT_IT_BUTTON:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BROWSE_DATA_BUTTON:I = 0xf2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__BROWSE_HEALTH_RECORDS_BUTTON:I = 0x115

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CALORIES_BUTTON:I = 0x46

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CANCEL_BACKGROUND_READ_BUTTON:I = 0xc9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CANCEL_BUTTON:I = 0x3e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CANCEL_COMBINED_ADDITIONAL_PERMISSIONS_BUTTON:I = 0xc7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CANCEL_HISTORY_READ_BUTTON:I = 0xcb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CANCEL_PERMISSIONS_BUTTON:I = 0x59

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CANCEL_WRITE_HEALTH_RECORDS_BUTTON:I = 0x11f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CATEGORY_BUTTON:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CELSIUS_BUTTON:I = 0x48

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CENTIMETERS_BUTTON:I = 0x3f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CHANGE_UNITS_DISTANCE_BUTTON:I = 0x3b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CHANGE_UNITS_ENERGY_BUTTON:I = 0x3c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CHANGE_UNITS_HEIGHT_BUTTON:I = 0x39

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CHANGE_UNITS_TEMPERATURE_BUTTON:I = 0x3d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CHANGE_UNITS_WEIGHT_BUTTON:I = 0x3a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CHECK_FOR_UPDATES_BUTTON:I = 0xf

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CONNECTED_APP_BUTTON:I = 0xa

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CONNECT_MORE_APPS_BANNER:I = 0x10e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CONNECT_MORE_APPS_BANNER_DISMISS_BUTTON:I = 0x10f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__CONNECT_MORE_APPS_BANNER_SET_UP_BUTTON:I = 0x110

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_ACCESS_APP_BUTTON:I = 0x2f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_ACCESS_INACTIVE_APP_BUTTON:I = 0x30

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_AND_ACCESS_BUTTON:I = 0x2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_ENTRY_DELETE_BUTTON:I = 0x75

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_ENTRY_VIEW:I = 0x34

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_CANCEL_DIALOG:I = 0xa9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_CANCEL_DIALOG_CANCEL_BUTTON:I = 0xaa

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_CANCEL_DIALOG_CONTINUE_BUTTON:I = 0xab

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_FAILED_BANNER:I = 0xa7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_FAILED_BANNER_BUTTON:I = 0xa8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_IN_PROGRESS_DIALOG_BUTTON:I = 0xb7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_IN_PROGRESS_DIALOG_CONTAINER:I = 0xb6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_SUCCESS_SNACKBAR:I = 0xac

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_UPDATE_NEEDED_BANNER:I = 0xa4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_UPDATE_NEEDED_BANNER_UPDATE_BUTTON:I = 0xa5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_RESTORE_UPDATE_NEEDED_CANCEL_RESTORE_BUTTON:I = 0xa6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_SOURCES_AND_PRIORITY_BUTTON:I = 0x9a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_SOURCES_MENU_BUTTON:I = 0xf7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_TOTALS_CARD:I = 0x9d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATA_TYPE_SPINNER_BUTTON:I = 0x9c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATE_VIEW_SPINNER_DAY:I = 0xfd

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATE_VIEW_SPINNER_WEEK:I = 0xfe

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DATE_VIEW_SPINNER_YEAR:I = 0xff

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETE_ALL_DATA_BUTTON:I = 0x22

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETE_APP_DATA_BUTTON:I = 0x4f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETE_CATEGORY_DATA_BUTTON:I = 0x2e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETE_MENU_BUTTON:I = 0xfa

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETE_THIS_DATA_BUTTON:I = 0x32

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_CONFIRMATION_CANCEL_BUTTON:I = 0x66

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_CONFIRMATION_CONTAINER:I = 0x64

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_CONFIRMATION_DELETE_BUTTON:I = 0x67

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_CONFIRMATION_GO_BACK_BUTTON:I = 0x65

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_CONFIRMATION_REMOVE_APP_PERMISSIONS_BUTTON:I = 0x68

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_ERROR_CLOSE_BUTTON:I = 0x6d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_ERROR_CONTAINER:I = 0x6c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_ERROR_TRY_AGAIN_BUTTON:I = 0x6e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_IN_PROGRESS_CONTAINER:I = 0x69

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_SUCCESS_CONTAINER:I = 0x6a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_SUCCESS_DONE_BUTTON:I = 0x6b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_ALL_DATA_BUTTON:I = 0x61

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_CANCEL_BUTTON:I = 0x62

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_CONTAINER:I = 0x5d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_LAST_24_HOURS_BUTTON:I = 0x5e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_LAST_30_DAYS_BUTTON:I = 0x60

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_LAST_7_DAYS_BUTTON:I = 0x5f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DELETION_DIALOG_TIME_RANGE_NEXT_BUTTON:I = 0x63

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DENIED_APPS_BANNER:I = 0x16

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DENIED_APPS_DIALOG_CONTAINER:I = 0x18

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DENIED_APPS_DIALOG_GOT_IT_BUTTON:I = 0x19

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DENIED_APPS_SEE_DETAILS_BUTTON:I = 0x17

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISABLE_EXERCISE_PERMISSION_DIALOG_CONTAINER:I = 0xc0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISABLE_EXERCISE_PERMISSION_DIALOG_NEGATIVE_BUTTON:I = 0xc2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISABLE_EXERCISE_PERMISSION_DIALOG_POSITIVE_BUTTON:I = 0xc1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_CANCEL_BUTTON:I = 0x56

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_CONTAINER:I = 0x55

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_DELETE_CHECKBOX:I = 0x120

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_ALL_APPS_DIALOG_REMOVE_ALL_BUTTON:I = 0x57

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_APP_DIALOG_CANCEL_BUTTON:I = 0x52

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_APP_DIALOG_CONFIRM_BUTTON:I = 0x53

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_APP_DIALOG_CONTAINER:I = 0x51

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__DISCONNECT_APP_DIALOG_DELETE_CHECKBOX:I = 0x54

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EDIT_SOURCE_LIST_BUTTON:I = 0xa0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ELEMENT_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ENABLE_EXERCISE_PERMISSION_DIALOG_CONTAINER:I = 0xbd

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ENABLE_EXERCISE_PERMISSION_DIALOG_NEGATIVE_BUTTON:I = 0xbf

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ENABLE_EXERCISE_PERMISSION_DIALOG_POSITIVE_BUTTON:I = 0xbe

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ENTER_DELETION_STATE_MENU_BUTTON:I = 0xf8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ENTRY_BUTTON_NO_CHECKBOX:I = 0xfc

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ENTRY_BUTTON_WITH_CHECKBOX:I = 0xfb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ERROR_PAGE_STATE:I = 0x97

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_PERFORMANCE_GOAL_ENTRY_VIEW:I = 0xd0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTES_BUTTON:I = 0xb0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTES_DIALOG_ALLOW_ALL_BUTTON:I = 0xb1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTES_DIALOG_ASK_BUTTON:I = 0xb2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTES_DIALOG_CONTAINER:I = 0xb4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTES_DIALOG_DENY_BUTTON:I = 0xb3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_DIALOG_ALLOW_BUTTON:I = 0x7e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_DIALOG_ALWAYS_ALLOW_BUTTON:I = 0xc3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_DIALOG_CONTAINER:I = 0x7b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_DIALOG_DONT_ALLOW_BUTTON:I = 0x7f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_DIALOG_INFORMATION_BUTTON:I = 0x7c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_DIALOG_ROUTE_VIEW:I = 0x7d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_EDUCATION_DIALOG_BACK_BUTTON:I = 0x81

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_ROUTE_EDUCATION_DIALOG_CONTAINER:I = 0x80

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_SESSION_ENTRY_BUTTON:I = 0x35

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_SESSION_ENTRY_DETAILS_VIEW:I = 0x77

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXERCISE_SESSION_MAP_VIEW:I = 0xba

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXIT_DELETION_STATE_MENU_BUTTON:I = 0xf9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_CONTROL_SWITCH_OFF:I = 0xea

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_CONTROL_SWITCH_ON:I = 0xe9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_DATA_BUTTON:I = 0x20

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_DESTINATION_BACK_BUTTON:I = 0xdc

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_DESTINATION_DOCUMENT_PROVIDER_BUTTON:I = 0xde

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_DESTINATION_NEXT_BUTTON:I = 0xdd

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_ERROR_BANNER:I = 0xe5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_ERROR_BANNER_BUTTON:I = 0xee

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_FREQUENCY_BACK_BUTTON:I = 0xda

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_FREQUENCY_DAILY_BUTTON:I = 0xd7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_FREQUENCY_MONTHLY_BUTTON:I = 0xd9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_FREQUENCY_NEXT_BUTTON:I = 0xdb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_FREQUENCY_WEEKLY_BUTTON:I = 0xd8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_SETTINGS_FREQUENCY_DAILY:I = 0xeb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_SETTINGS_FREQUENCY_MONTHLY:I = 0xed

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__EXPORT_SETTINGS_FREQUENCY_WEEKLY:I = 0xec

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__FAHRENHEIT_BUTTON:I = 0x49

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__FEET_AND_INCHES_BUTTON:I = 0x40

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__FITNESS_PERMISSIONS_BUTTON:I = 0x117

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__FORMATTED_SECTION_CONTENT_VIEW:I = 0xcf

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__FORMATTED_SECTION_TITLE_VIEW:I = 0xc5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__HELP_AND_FEEDBACK_BUTTON:I = 0xe

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__HISTORY_READ_BUTTON:I = 0xcd

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_CONFIRMATION_CANCEL_BUTTON:I = 0xe2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_CONFIRMATION_CONTAINER:I = 0xe4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_CONFIRMATION_DONE_BUTTON:I = 0xe3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_GENERAL_ERROR_BANNER:I = 0xe6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_GENERAL_ERROR_BANNER_BUTTON:I = 0xef

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_DIAGLOG_CONTAINER:I = 0x125

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_DIALOG_CANCEL_BUTTON:I = 0x127

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_DIALOG_CONFIRM_BUTTON:I = 0x128

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_ACCOUNT_PICKER_RADIO_BUTTON:I = 0x126

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_CANCEL_BUTTON:I = 0xdf

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_DOCUMENT_PROVIDER_BUTTON:I = 0xe1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_SOURCE_LOCATION_NEXT_BUTTON:I = 0xe0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_VERSION_MISMATCH_ERROR_BANNER:I = 0xe7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_VERSION_MISMATCH_ERROR_BANNER_BUTTON:I = 0xf0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_WRONG_FILE_ERROR_BANNER:I = 0xe8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__IMPORT_WRONG_FILE_ERROR_BANNER_BUTTON:I = 0xf1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__INACTIVE_APP_BUTTON:I = 0xbb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__INACTIVE_APP_DELETE_BUTTON:I = 0xc

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__INACTIVE_APP_DIALOG_CONTAINER:I = 0x12

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__INACTIVE_APP_DIALOG_DELETE_BUTTON:I = 0x15

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__INACTIVE_APP_DIALOG_GO_BACK_BUTTON:I = 0x14

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__INACTIVE_APP_DIALOG_REMOVE_PERMISSIONS_BUTTON:I = 0x13

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__KELVIN_BUTTON:I = 0x4a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__KILOGRAMS_BUTTON:I = 0x41

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__KILOJOULES_BUTTON:I = 0x47

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__KILOMETERS_BUTTON:I = 0x44

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__LOADING_PAGE_STATE:I = 0x96

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__LOCK_SCREEN_BANNER:I = 0x11a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__LOCK_SCREEN_BANNER_BUTTON:I = 0x11b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__LOCK_SCREEN_BANNER_DISMISS_BUTTON:I = 0x11c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MANAGE_DATA_BUTTON:I = 0x99

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MANAGE_PERMISSIONS_FLOATING_BUTTON:I = 0x8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MEDICAL_PERMISSIONS_BUTTON:I = 0x118

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_APP_UPDATE_APP_BUTTON:I = 0xad

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_APP_UPDATE_BANNER:I = 0x94

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_APP_UPDATE_BUTTON:I = 0x95

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_APP_UPDATE_DISMISS_BUTTON:I = 0xb5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_APP_UPDATE_LEARN_MORE_BUTTON:I = 0xae

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_DONE_DIALOG_BUTTON:I = 0x8a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_DONE_DIALOG_CONTAINER:I = 0x89

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_IN_PROGRESS_DIALOG_BUTTON:I = 0x8c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_IN_PROGRESS_DIALOG_CONTAINER:I = 0x8b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_NOT_COMPLETE_DIALOG_BUTTON:I = 0x91

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_NOT_COMPLETE_DIALOG_CONTAINER:I = 0x90

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_PAUSED_CANCEL_BUTTON:I = 0xb9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_PAUSED_CONTINUE_BUTTON:I = 0xb8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_PENDING_DIALOG_CANCEL_BUTTON:I = 0x8e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_PENDING_DIALOG_CONTAINER:I = 0x8d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_PENDING_DIALOG_CONTINUE_BUTTON:I = 0x8f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_RESUME_BANNER:I = 0x92

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_RESUME_BANNER_BUTTON:I = 0x93

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_UPDATE_NEEDED_CANCEL_BUTTON:I = 0x86

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MIGRATION_UPDATE_NEEDED_UPDATE_BUTTON:I = 0x85

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MILES_BUTTON:I = 0x45

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MOVE_APP_SOURCE_DOWN_MENU_BUTTON:I = 0x122

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__MOVE_APP_SOURCE_UP_MENU_BUTTON:I = 0x123

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__NEXT_DAY_BUTTON:I = 0x36

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__NOT_CONNECTED_APP_BUTTON:I = 0xb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ONBOARDING_COMPLETED_BUTTON:I = 0x6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ONBOARDING_GO_BACK_BUTTON:I = 0x7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__ONBOARDING_MESSAGE_WITH_PHR:I = 0x114

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__OPEN_APP_SOURCE_MENU_BUTTON:I = 0x121

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PERMISSION_SWITCH:I = 0x5b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PERMISSION_SWITCH_ACTIVE:I = 0x4d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PERMISSION_SWITCH_INACTIVE:I = 0x4e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PERMISSION_TYPE_BUTTON:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PERMISSION_TYPE_BUTTON_NO_CHECKBOX:I = 0xf4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PERMISSION_TYPE_BUTTON_WITH_CHECKBOX:I = 0xf3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PLANNED_EXERCISE_BLOCK_ENTRY_VIEW:I = 0xd2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PLANNED_EXERCISE_SESSION_ENTRY_BUTTON:I = 0xd1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PLANNED_EXERCISE_STEP_ENTRY_VIEW:I = 0xd3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__POTENTIAL_PRIORITY_APP_BUTTON:I = 0xa1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__POUNDS_BUTTON:I = 0x42

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PREVIOUS_DAY_BUTTON:I = 0x37

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__PRIVACY_POLICY_LINK:I = 0x50

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__RAW_FHIR_RESOURCE:I = 0x11d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__RECENT_ACCESS_ENTRY:I = 0x4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REMOVE_ALL_APPS_PERMISSIONS_BUTTON:I = 0xd

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REMOVE_ALL_PERMISSIONS_BUTTON:I = 0x119

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REMOVE_APP_SOURCE_BUTTON:I = 0xa3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REMOVE_APP_SOURCE_MENU_BUTTON:I = 0x124

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REORDER_APP_SOURCE_BUTTON:I = 0xa2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REQUEST_PERMISSIONS_HEADER:I = 0x129

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__RESTORE_DATA_BUTTON:I = 0xd6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__REVERSE_SESSION_DETAIL_ENTRY_VIEW:I = 0xc4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SCHEDULED_EXPORT_BUTTON:I = 0xd5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEARCH_BUTTON:I = 0x9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_ALL_CATEGORIES_BUTTON:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_ALL_COMPATIBLE_APPS_BUTTON:I = 0x10

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_ALL_ENTRIES_BUTTON:I = 0x31

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_ALL_RECENT_ACCESS_BUTTON:I = 0x3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_APP_DATA_BUTTON:I = 0x100

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_COMPATIBLE_APPS_BANNER:I = 0x111

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_COMPATIBLE_APPS_BANNER_APP_STORE_BUTTON:I = 0x113

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEE_COMPATIBLE_APPS_BANNER_DISMISS_BUTTON:I = 0x112

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SELECT_ALL_BUTTON:I = 0xf5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SELECT_DATE_BUTTON:I = 0x38

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SEND_FEEDBACK_BUTTON:I = 0xbc

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SESSION_DETAIL_ENTRY_VIEW:I = 0x79

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SESSION_DETAIL_HEADER_VIEW:I = 0x7a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SET_APP_PRIORITY_BUTTON:I = 0x2d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SET_APP_PRIORITY_DIALOG_CANCEL_BUTTON:I = 0x83

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SET_APP_PRIORITY_DIALOG_CONTAINER:I = 0x82

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SET_APP_PRIORITY_DIALOG_SAVE_BUTTON:I = 0x84

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SET_UNITS_BUTTON:I = 0x9b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SLEEP_SESSION_ENTRY_BUTTON:I = 0x76

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SLEEP_SESSION_ENTRY_DETAILS_VIEW:I = 0x78

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__START_USING_HC_BANNER:I = 0x10b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__START_USING_HC_BANNER_DISMISS_BUTTON:I = 0x10c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__START_USING_HC_BANNER_SET_UP_BUTTON:I = 0x10d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__STONES_BUTTON:I = 0x43

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__SUCCESS_DELETION_DIALOG_SEE_CONNECTED_APPS_BUTTON:I = 0xf6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__TOOLBAR_HELP_BUTTON:I = 0x6f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__TOOLBAR_OPEN_SOURCE_LICENSE_BUTTON:I = 0x72

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__TOOLBAR_SETTINGS_BUTTON:I = 0x71

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_BANNER:I = 0x101

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_BANNER_BUTTON:I = 0x102

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_BUTTON:I = 0x10a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_DIALOG:I = 0x104

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_DIALOG_NEGATIVE_BUTTON:I = 0x106

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_DIALOG_NEUTRAL_BUTTON:I = 0x107

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_DIALOG_POSITIVE_BUTTON:I = 0x105

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_HEALTH_PREFERENCE:I = 0x103

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_SWITCH_ACTIVE_PREFERENCE:I = 0x108

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__UNKNOWN_SWITCH_INACTIVE_PREFERENCE:I = 0x109

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__ELEMENT__WITH_DATA_PAGE_STATE:I = 0x98

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ADDITIONAL_ACCESS_PAGE:I = 0x1e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ADD_AN_APP_PAGE:I = 0x1c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ALL_CATEGORIES_PAGE:I = 0xf

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ALL_DATA_PAGE:I = 0x29

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ALL_MEDICAL_DATA_PAGE:I = 0x2e

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__APP_ACCESS_PAGE:I = 0xd

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__APP_DATA_PAGE:I = 0x2c

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__APP_ENTRIES_PAGE:I = 0x2d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__APP_PERMISSIONS_EMPTY_STATE_PAGE:I = 0x5

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__APP_PERMISSIONS_PAGE:I = 0x4

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__AUTO_DELETE_PAGE:I = 0x8

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__BACKUP_AND_RESTORE_PAGE:I = 0x24

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__CATEGORIES_PAGE:I = 0x7

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__COMBINED_APP_ACCESS_PAGE:I = 0x33

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__DATA_ACCESS_PAGE:I = 0xa

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__DATA_ENTRIES_PAGE:I = 0xb

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__DATA_RESTORE_IN_PROGRESS_PAGE:I = 0x1d

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__DATA_SOURCES_PAGE:I = 0x1b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ENTRY_DETAILS_PAGE:I = 0xc

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__EXPORT_DESTINATION_PAGE:I = 0x26

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__EXPORT_FREQUENCY_PAGE:I = 0x25

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__EXPORT_SETTINGS_PAGE:I = 0x27

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__HELP_AND_FEEDBACK_PAGE:I = 0x6

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__HOME_PAGE:I = 0x1

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__IMPORT_SOURCE_LOCATION_PAGE:I = 0x28

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MANAGE_DATA_PAGE:I = 0x1a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MANAGE_PERMISSIONS_PAGE:I = 0x13

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MEDICAL_APP_ACCESS_PAGE:I = 0x34

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MIGRATION_APP_UPDATE_NEEDED_PAGE:I = 0x16

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MIGRATION_IN_PROGRESS_PAGE:I = 0x15

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MIGRATION_MODULE_UPDATE_NEEDED_PAGE:I = 0x17

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__MIGRATION_PAUSED_PAGE:I = 0x19

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__ONBOARDING_PAGE:I = 0x2

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__PAGE_UNKNOWN:I = 0x0

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__PERMISSION_TYPES_PAGE:I = 0x9

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__RAW_FHIR_PAGE:I = 0x31

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__RECENT_ACCESS_PAGE:I = 0x3

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__REQUEST_BACKGROUND_READ_PERMISSION_PAGE:I = 0x22

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__REQUEST_COMBINED_ADDITIONAL_PERMISSIONS_PAGE:I = 0x21

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__REQUEST_HISTORY_READ_PERMISSION_PAGE:I = 0x23

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__REQUEST_MEDICAL_PERMISSIONS_PAGE:I = 0x32

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__REQUEST_PERMISSIONS_PAGE:I = 0x10

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__REQUEST_WRITE_MEDICAL_PERMISSION_PAGE:I = 0x37

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__SEARCH_APPS_PAGE:I = 0x20

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__SETTINGS_MANAGE_APP_PERMISSIONS_PAGE:I = 0x1f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__SETTINGS_MANAGE_COMBINED_APP_PERMISSIONS_PAGE:I = 0x35

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__SETTINGS_MANAGE_MEDICAL_APP_PERMISSIONS_PAGE:I = 0x36

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__SETTINGS_MANAGE_PERMISSIONS_PAGE:I = 0x14

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__TAB_ACCESS_PAGE:I = 0x2b

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__TAB_ENTRIES_PAGE:I = 0x2a

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__TAB_MEDICAL_ACCESS_PAGE:I = 0x30

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__TAB_MEDICAL_ENTRIES_PAGE:I = 0x2f

.field public static final blacklist HEALTH_CONNECT_UI_INTERACTION__PAGE__UNITS_PAGE:I = 0xe

.field public static final blacklist HEALTH_CONNECT_USAGE_STATS:I = 0x269


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist write(II)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "arg1"    # I

    .line 1600
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1601
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1602
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1604
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1605
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1606
    return-void
.end method

.method public blacklist write(III)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1609
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1610
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1611
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1612
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1614
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1615
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1616
    return-void
.end method

.method public blacklist write(IIII)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 1642
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1643
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1644
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1645
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1646
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1648
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1649
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1650
    return-void
.end method

.method public blacklist write(IIIII)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I

    .line 1653
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1654
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1655
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1656
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1657
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1658
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1660
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1661
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1662
    return-void
.end method

.method public blacklist write(IIIIII)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # I

    .line 1665
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1666
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1667
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1668
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1669
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1670
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1671
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1673
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1674
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1675
    return-void
.end method

.method public blacklist write(IIIIJIIILjava/lang/String;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # J
    .param p7, "arg5"    # I
    .param p8, "arg6"    # I
    .param p9, "arg7"    # I
    .param p10, "arg8"    # Ljava/lang/String;

    .line 1678
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1679
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1680
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1681
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1682
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1683
    invoke-virtual {v0, p5, p6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1684
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1685
    invoke-virtual {v0, p8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1686
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1687
    invoke-virtual {v0, p10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1689
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1690
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1691
    return-void
.end method

.method public blacklist write(IIIIJLjava/lang/String;IIIIII)V
    .registers 30
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # J
    .param p7, "arg5"    # Ljava/lang/String;
    .param p8, "arg6"    # I
    .param p9, "arg7"    # I
    .param p10, "arg8"    # I
    .param p11, "arg9"    # I
    .param p12, "arg10"    # I
    .param p13, "arg11"    # I

    .line 1696
    move/from16 v0, p1

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1697
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1698
    const/4 v2, 0x1

    const/16 v3, 0x283

    if-ne v3, v0, :cond_13

    .line 1699
    const/16 v4, 0x9

    invoke-virtual {v1, v4, v2}, Landroid/util/StatsEvent$Builder;->addIntAnnotation(BI)Landroid/util/StatsEvent$Builder;

    .line 1702
    :cond_13
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1703
    move/from16 v5, p3

    invoke-virtual {v1, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1704
    move/from16 v6, p4

    invoke-virtual {v1, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1705
    move-wide/from16 v7, p5

    invoke-virtual {v1, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1706
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1707
    move/from16 v10, p8

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1708
    const/16 v11, 0xd

    if-ne v3, v0, :cond_38

    .line 1709
    invoke-virtual {v1, v11, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1711
    :cond_38
    move/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1712
    if-ne v3, v0, :cond_42

    .line 1713
    invoke-virtual {v1, v11, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1715
    :cond_42
    move/from16 v13, p10

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1716
    if-ne v3, v0, :cond_4c

    .line 1717
    invoke-virtual {v1, v11, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1719
    :cond_4c
    move/from16 v14, p11

    invoke-virtual {v1, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1720
    if-ne v3, v0, :cond_56

    .line 1721
    invoke-virtual {v1, v11, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1723
    :cond_56
    move/from16 v15, p12

    invoke-virtual {v1, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1724
    if-ne v3, v0, :cond_60

    .line 1725
    invoke-virtual {v1, v11, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1727
    :cond_60
    move/from16 v2, p13

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1728
    if-ne v3, v0, :cond_6b

    .line 1729
    const/4 v3, 0x1

    invoke-virtual {v1, v11, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1732
    :cond_6b
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1733
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    invoke-static {v3}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1734
    return-void
.end method

.method public blacklist write(IIILjava/lang/String;I)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # I

    .line 1739
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1740
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1741
    const/4 v1, 0x1

    const/16 v2, 0x3d4

    if-ne v2, p1, :cond_11

    .line 1742
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/util/StatsEvent$Builder;->addIntAnnotation(BI)Landroid/util/StatsEvent$Builder;

    .line 1745
    :cond_11
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1746
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1747
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1748
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1749
    if-ne v2, p1, :cond_24

    .line 1750
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1753
    :cond_24
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1754
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1755
    return-void
.end method

.method public blacklist write(IIIZ)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Z

    .line 1619
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1620
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1621
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1622
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1623
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1625
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1626
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1627
    return-void
.end method

.method public blacklist write(IIIZI)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # I

    .line 1630
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1631
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1632
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1633
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1634
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1635
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1637
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1638
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1639
    return-void
.end method

.method public blacklist write(IILjava/lang/String;I)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I

    .line 1760
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1761
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1762
    const/16 v1, 0x28e

    if-ne v1, p1, :cond_11

    .line 1763
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->addIntAnnotation(BI)Landroid/util/StatsEvent$Builder;

    .line 1766
    :cond_11
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1767
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1768
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1770
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1771
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1772
    return-void
.end method

.method public blacklist write(IJ)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "arg1"    # J

    .line 1775
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1776
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1777
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1779
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1780
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1781
    return-void
.end method

.method public blacklist write(IJJJJJ)V
    .registers 14
    .param p1, "code"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # J
    .param p8, "arg4"    # J
    .param p10, "arg5"    # J

    .line 1784
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1785
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1786
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1787
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1788
    invoke-virtual {v0, p6, p7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1789
    invoke-virtual {v0, p8, p9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1790
    invoke-virtual {v0, p10, p11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1792
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1793
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1794
    return-void
.end method

.method public blacklist write(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I

    .line 1799
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1800
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1801
    const/4 v1, 0x1

    const/16 v2, 0x3d9

    if-ne v2, p1, :cond_11

    .line 1802
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/util/StatsEvent$Builder;->addIntAnnotation(BI)Landroid/util/StatsEvent$Builder;

    .line 1805
    :cond_11
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1806
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1807
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1808
    if-ne v2, p1, :cond_21

    .line 1809
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1811
    :cond_21
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1813
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1814
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1815
    return-void
.end method

.method public blacklist write(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .line 1820
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1821
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1822
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1823
    if-nez p3, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v1, p3

    :goto_11
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeStringArray([Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1825
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1826
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1827
    return-void
.end method

.method public blacklist write(IZ)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "arg1"    # Z

    .line 1591
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1592
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1593
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1595
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1596
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1597
    return-void
.end method

.method public blacklist write(I[I[I[I[II)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "arg1"    # [I
    .param p3, "arg2"    # [I
    .param p4, "arg3"    # [I
    .param p5, "arg4"    # [I
    .param p6, "arg5"    # I

    .line 1832
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1833
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1834
    const/4 v1, 0x0

    if-nez p2, :cond_d

    new-array v2, v1, [I

    goto :goto_e

    :cond_d
    move-object v2, p2

    :goto_e
    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 1835
    if-nez p3, :cond_16

    new-array v2, v1, [I

    goto :goto_17

    :cond_16
    move-object v2, p3

    :goto_17
    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 1836
    if-nez p4, :cond_1f

    new-array v2, v1, [I

    goto :goto_20

    :cond_1f
    move-object v2, p4

    :goto_20
    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 1837
    if-nez p5, :cond_28

    new-array v1, v1, [I

    goto :goto_29

    :cond_28
    move-object v1, p5

    :goto_29
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 1838
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1840
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1841
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1842
    return-void
.end method
