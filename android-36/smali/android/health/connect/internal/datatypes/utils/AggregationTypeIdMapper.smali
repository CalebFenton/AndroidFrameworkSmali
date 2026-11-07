.class public final Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;
.super Ljava/lang/Object;
.source "AggregationTypeIdMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$AggregationResultCreator;
    }
.end annotation


# static fields
.field private static volatile blacklist sAggregationTypeIdMapper:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;


# instance fields
.field private final blacklist mDataAggregationTypeIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdDataAggregationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mIdToAggregateResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$AggregationResultCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$0M0dgxhiStKFTec1D_uuNiXWuo8(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addDoubleIdsToAggregateResultMap$1(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$AFxBnU_FfbFwjB5YCqKcVQusSl0(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addVelocityIdsToAggregateResultMap$9(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$FSeJ-2qNS6KhnRWcfZmz4A9cKMo(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addDurationIdsToAggregateResultMap$10(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$KPmgA1xSms35-MgSIJ7zVdtw7ys(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addMassIdsToAggregateResultMap$8(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$PyWFT-lo0nMNcy_2MqMIFNbHL5U(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addLongIdsToAggregateResultMap$0(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$_FqMsowZTfcteRAiWpuzRKax67A(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addPressureIdsToAggregateResultMap$5(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bE6ndXrQk0MiEFyX-MRyIb8FCYc(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addLengthIdsToAggregateResultMap$6(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$iUboK1TXrWesrSoz9arirqMQvGM(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addVolumeIdsToAggregateResultMap$7(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nbprlsMYvglCku81G7rimi4Uus0(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addPowerIdsToAggregateResultMap$3(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qEmlV3TJ912p0F3f4q2UYpLVhZs(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addTemperatureDeltaIdsToAggregateResultMap$4(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rFudy7elpvzGtTi2mbQIrDgjMr0(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->lambda$addEnergyIdsToAggregateResultMap$2(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 19

    .line 147
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdDataAggregationTypeMap:Ljava/util/Map;

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mDataAggregationTypeIdMap:Ljava/util/Map;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    new-array v3, v2, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v4, Landroid/health/connect/datatypes/HeartRateRecord;->BPM_MAX:Landroid/health/connect/datatypes/AggregationType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Landroid/health/connect/datatypes/HeartRateRecord;->BPM_MIN:Landroid/health/connect/datatypes/AggregationType;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Landroid/health/connect/datatypes/StepsRecord;->STEPS_COUNT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Landroid/health/connect/datatypes/HeartRateRecord;->BPM_AVG:Landroid/health/connect/datatypes/AggregationType;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Landroid/health/connect/datatypes/RestingHeartRateRecord;->BPM_MAX:Landroid/health/connect/datatypes/AggregationType;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    sget-object v4, Landroid/health/connect/datatypes/RestingHeartRateRecord;->BPM_MIN:Landroid/health/connect/datatypes/AggregationType;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    sget-object v4, Landroid/health/connect/datatypes/RestingHeartRateRecord;->BPM_AVG:Landroid/health/connect/datatypes/AggregationType;

    const/4 v11, 0x6

    aput-object v4, v3, v11

    sget-object v4, Landroid/health/connect/datatypes/WheelchairPushesRecord;->WHEEL_CHAIR_PUSHES_COUNT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    const/4 v12, 0x7

    aput-object v4, v3, v12

    sget-object v4, Landroid/health/connect/datatypes/HeartRateRecord;->HEART_MEASUREMENTS_COUNT:Landroid/health/connect/datatypes/AggregationType;

    const/16 v13, 0x8

    aput-object v4, v3, v13

    sget-object v4, Landroid/health/connect/datatypes/SleepSessionRecord;->SLEEP_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    const/16 v14, 0x9

    aput-object v4, v3, v14

    sget-object v4, Landroid/health/connect/datatypes/ExerciseSessionRecord;->EXERCISE_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    const/16 v15, 0xa

    aput-object v4, v3, v15

    sget-object v4, Landroid/health/connect/datatypes/MindfulnessSessionRecord;->MINDFULNESS_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    const/16 v16, 0xb

    aput-object v4, v3, v16

    .line 154
    invoke-static {v3}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .local v1, "longAggregations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, "durationAggregations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->activityIntensity()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isActivityIntensityEnabled()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 171
    sget-object v4, Landroid/health/connect/datatypes/ActivityIntensityRecord;->MODERATE_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v4, Landroid/health/connect/datatypes/ActivityIntensityRecord;->VIGOROUS_DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v4, Landroid/health/connect/datatypes/ActivityIntensityRecord;->DURATION_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v4, Landroid/health/connect/datatypes/ActivityIntensityRecord;->INTENSITY_MINUTES_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_8c
    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addLongIdsToAggregateResultMap(Ljava/util/List;)V

    .line 178
    new-array v4, v12, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/FloorsClimbedRecord;->FLOORS_CLIMBED_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    sget-object v17, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->RPM_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v6

    sget-object v17, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->RPM_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v7

    sget-object v17, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;->RPM_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v8

    sget-object v17, Landroid/health/connect/datatypes/StepsCadenceRecord;->STEPS_CADENCE_RATE_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v9

    sget-object v17, Landroid/health/connect/datatypes/StepsCadenceRecord;->STEPS_CADENCE_RATE_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v10

    sget-object v17, Landroid/health/connect/datatypes/StepsCadenceRecord;->STEPS_CADENCE_RATE_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v11

    .line 179
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 178
    invoke-direct {v0, v4}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addDoubleIdsToAggregateResultMap(Ljava/util/List;)V

    .line 187
    new-array v4, v8, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/PowerRecord;->POWER_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    sget-object v17, Landroid/health/connect/datatypes/PowerRecord;->POWER_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v6

    sget-object v17, Landroid/health/connect/datatypes/PowerRecord;->POWER_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addPowerIdsToAggregateResultMap(Ljava/util/List;)V

    .line 188
    new-array v4, v8, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/SkinTemperatureRecord;->SKIN_TEMPERATURE_DELTA_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    sget-object v17, Landroid/health/connect/datatypes/SkinTemperatureRecord;->SKIN_TEMPERATURE_DELTA_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v6

    sget-object v17, Landroid/health/connect/datatypes/SkinTemperatureRecord;->SKIN_TEMPERATURE_DELTA_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v7

    .line 189
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 188
    invoke-direct {v0, v4}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addTemperatureDeltaIdsToAggregateResultMap(Ljava/util/List;)V

    .line 193
    new-array v4, v10, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;->ACTIVE_CALORIES_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    sget-object v17, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;->BASAL_CALORIES_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v6

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->ENERGY_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v7

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->ENERGY_FROM_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v8

    sget-object v17, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;->ENERGY_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v9

    .line 194
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 193
    invoke-direct {v0, v4}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addEnergyIdsToAggregateResultMap(Ljava/util/List;)V

    .line 200
    new-array v4, v6, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/HydrationRecord;->VOLUME_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addVolumeIdsToAggregateResultMap(Ljava/util/List;)V

    .line 201
    new-array v4, v10, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/DistanceRecord;->DISTANCE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    sget-object v17, Landroid/health/connect/datatypes/ElevationGainedRecord;->ELEVATION_GAINED_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v6

    sget-object v17, Landroid/health/connect/datatypes/HeightRecord;->HEIGHT_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v7

    sget-object v17, Landroid/health/connect/datatypes/HeightRecord;->HEIGHT_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v8

    sget-object v17, Landroid/health/connect/datatypes/HeightRecord;->HEIGHT_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v9

    .line 202
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 201
    invoke-direct {v0, v4}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addLengthIdsToAggregateResultMap(Ljava/util/List;)V

    .line 208
    const/16 v4, 0x2b

    new-array v4, v4, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->BIOTIN_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v5

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->CAFFEINE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v6

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->CALCIUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v7

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->CHLORIDE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v8

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->CHOLESTEROL_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v9

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->CHROMIUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v10

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->COPPER_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v11

    sget-object v17, Landroid/health/connect/datatypes/NutritionRecord;->DIETARY_FIBER_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v17, v4, v12

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->FOLATE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v13

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->FOLIC_ACID_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v14

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->IODINE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v15

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->IRON_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v16

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->MAGNESIUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0xd

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->MANGANESE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0xe

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->MOLYBDENUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0xf

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->MONOUNSATURATED_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x10

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->NIACIN_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x11

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->PANTOTHENIC_ACID_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x12

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->PHOSPHORUS_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x13

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->POLYUNSATURATED_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x14

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->POTASSIUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x15

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->PROTEIN_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x16

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->RIBOFLAVIN_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x17

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->SATURATED_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x18

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->SELENIUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x19

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->SODIUM_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x1a

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->SUGAR_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x1b

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->THIAMIN_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x1c

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->TOTAL_CARBOHYDRATE_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x1d

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->TOTAL_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x1e

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->UNSATURATED_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x1f

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_A_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x20

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_B12_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x21

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_B6_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x22

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_C_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x23

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_D_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x24

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_E_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x25

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->VITAMIN_K_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x26

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->ZINC_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x27

    sget-object v12, Landroid/health/connect/datatypes/WeightRecord;->WEIGHT_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x28

    sget-object v12, Landroid/health/connect/datatypes/WeightRecord;->WEIGHT_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x29

    sget-object v12, Landroid/health/connect/datatypes/WeightRecord;->WEIGHT_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    const/16 v2, 0x2a

    sget-object v12, Landroid/health/connect/datatypes/NutritionRecord;->TRANS_FAT_TOTAL:Landroid/health/connect/datatypes/AggregationType;

    aput-object v12, v4, v2

    .line 209
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 208
    invoke-direct {v0, v2}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addMassIdsToAggregateResultMap(Ljava/util/List;)V

    .line 253
    new-array v2, v8, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v4, Landroid/health/connect/datatypes/SpeedRecord;->SPEED_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v5

    sget-object v4, Landroid/health/connect/datatypes/SpeedRecord;->SPEED_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v6

    sget-object v4, Landroid/health/connect/datatypes/SpeedRecord;->SPEED_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addVelocityIdsToAggregateResultMap(Ljava/util/List;)V

    .line 254
    new-array v2, v11, [Landroid/health/connect/datatypes/AggregationType;

    sget-object v4, Landroid/health/connect/datatypes/BloodPressureRecord;->DIASTOLIC_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v5

    sget-object v4, Landroid/health/connect/datatypes/BloodPressureRecord;->DIASTOLIC_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v6

    sget-object v4, Landroid/health/connect/datatypes/BloodPressureRecord;->DIASTOLIC_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v7

    sget-object v4, Landroid/health/connect/datatypes/BloodPressureRecord;->SYSTOLIC_AVG:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v8

    sget-object v4, Landroid/health/connect/datatypes/BloodPressureRecord;->SYSTOLIC_MAX:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v9

    sget-object v4, Landroid/health/connect/datatypes/BloodPressureRecord;->SYSTOLIC_MIN:Landroid/health/connect/datatypes/AggregationType;

    aput-object v4, v2, v10

    .line 255
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-direct {v0, v2}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addPressureIdsToAggregateResultMap(Ljava/util/List;)V

    .line 262
    invoke-direct {v0, v3}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->addDurationIdsToAggregateResultMap(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method private blacklist addDoubleIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 362
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 363
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 364
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda9;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 363
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 367
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 368
    :cond_26
    return-void
.end method

.method private blacklist addDurationIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 452
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 453
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 454
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda5;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 453
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 457
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 458
    :cond_26
    return-void
.end method

.method private blacklist addEnergyIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 372
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 373
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 374
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda4;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 373
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 377
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 378
    :cond_26
    return-void
.end method

.method private blacklist addLengthIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 412
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 413
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 414
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda2;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 413
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 417
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 418
    :cond_26
    return-void
.end method

.method private blacklist addLongIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 352
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 353
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 354
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 353
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 357
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 358
    :cond_26
    return-void
.end method

.method private blacklist addMassIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 432
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 433
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 434
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda1;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 433
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 437
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 438
    :cond_26
    return-void
.end method

.method private blacklist addPowerIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 382
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 383
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 384
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda10;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 383
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 387
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 388
    :cond_26
    return-void
.end method

.method private blacklist addPressureIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 402
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 403
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 404
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda8;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 403
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 407
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 408
    :cond_26
    return-void
.end method

.method private blacklist addTemperatureDeltaIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 392
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 393
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 394
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda7;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 393
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 397
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 398
    :cond_26
    return-void
.end method

.method private blacklist addVelocityIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 442
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 443
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 444
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda3;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 443
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 447
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 448
    :cond_26
    return-void
.end method

.method private blacklist addVolumeIdsToAggregateResultMap(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;>;)V"
        }
    .end annotation

    .line 422
    .local p1, "aggregationTypeList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AggregationType<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/AggregationType;

    .line 423
    .local v1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v2, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    .line 424
    invoke-virtual {v1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda6;-><init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V

    .line 423
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-direct {p0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V

    .line 427
    .end local v1    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    goto :goto_4

    .line 428
    :cond_26
    return-void
.end method

.method private blacklist getDoubleResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getDurationResult(J)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "resultMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/AggregateResult<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getEnergyResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Energy;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Energy;->fromCalories(D)Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;
    .registers 2

    const-class v0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    monitor-enter v0

    .line 267
    :try_start_3
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->sAggregationTypeIdMapper:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    if-nez v1, :cond_e

    .line 268
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;-><init>()V

    sput-object v1, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->sAggregationTypeIdMapper:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    .line 271
    :cond_e
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->sAggregationTypeIdMapper:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 266
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist getLengthResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Length;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getLongResult(J)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/AggregateResult<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getMassResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Mass;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getPowerResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Power;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Power;->fromWatts(D)Landroid/health/connect/datatypes/units/Power;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getPressureResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Pressure;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Pressure;->fromMillimetersOfMercury(D)Landroid/health/connect/datatypes/units/Pressure;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getTemperatureDeltaResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/TemperatureDelta;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/TemperatureDelta;->fromCelsius(D)Landroid/health/connect/datatypes/units/TemperatureDelta;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getVelocityResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Velocity;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Velocity;->fromMetersPerSecond(D)Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getVolumeResult(D)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "result"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/health/connect/AggregateResult<",
            "Landroid/health/connect/datatypes/units/Volume;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Landroid/health/connect/AggregateResult;

    invoke-static {p1, p2}, Landroid/health/connect/datatypes/units/Volume;->fromLiters(D)Landroid/health/connect/datatypes/units/Volume;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/AggregateResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addDoubleIdsToAggregateResultMap$1(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getDoubleResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addDurationIdsToAggregateResultMap$10(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getDurationResult(J)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addEnergyIdsToAggregateResultMap$2(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getEnergyResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addLengthIdsToAggregateResultMap$6(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getLengthResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addLongIdsToAggregateResultMap$0(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getLongResult(J)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addMassIdsToAggregateResultMap$8(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getMassResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addPowerIdsToAggregateResultMap$3(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getPowerResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addPressureIdsToAggregateResultMap$5(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getPressureResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addTemperatureDeltaIdsToAggregateResultMap$4(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getTemperatureDeltaResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addVelocityIdsToAggregateResultMap$9(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getVelocityResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$addVolumeIdsToAggregateResultMap$7(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 4
    .param p1, "result"    # Landroid/os/Parcel;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getVolumeResult(D)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist populateIdDataAggregationType(Landroid/health/connect/datatypes/AggregationType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;)V"
        }
    .end annotation

    .line 461
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdDataAggregationTypeMap:Ljava/util/Map;

    .line 462
    invoke-virtual {p1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mDataAggregationTypeIdMap:Ljava/util/Map;

    .line 464
    invoke-virtual {p1}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 463
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    return-void
.end method


# virtual methods
.method public blacklist getAggregateResultFor(ILandroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 5
    .param p1, "id"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/health/connect/AggregateResult<",
            "*>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdToAggregateResult:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$AggregationResultCreator;

    invoke-interface {v0, p2}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$AggregationResultCreator;->getAggregateResult(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAggregationTypeFor(I)Landroid/health/connect/datatypes/AggregationType;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mIdDataAggregationTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/AggregationType;

    return-object v0
.end method

.method public blacklist getIdFor(Landroid/health/connect/datatypes/AggregationType;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/AggregationType<",
            "*>;)I"
        }
    .end annotation

    .line 292
    .local p1, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->mDataAggregationTypeIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
