.class public final Landroid/health/connect/internal/datatypes/utils/RecordMapper;
.super Ljava/lang/Object;
.source "RecordMapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist NUM_ENTRIES:I = 0x23

.field private static volatile blacklist sRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;


# instance fields
.field private final blacklist mExternalRecordClassToRecordIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordIdToExternalRecordClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRecordIdToInternalRecordClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$pOWsz5Dx4j9Zjwxi1U-P4_zlAT4(Landroid/health/connect/internal/datatypes/utils/RecordMapper;Ljava/lang/Integer;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->lambda$new$0(Ljava/lang/Integer;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 27

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 130
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 131
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Landroid/health/connect/internal/datatypes/StepsRecordInternal;

    .line 130
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 133
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;

    .line 132
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 135
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;

    .line 134
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 137
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Landroid/health/connect/internal/datatypes/HydrationRecordInternal;

    .line 136
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 139
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Landroid/health/connect/internal/datatypes/ActiveCaloriesBurnedRecordInternal;

    .line 138
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 142
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-class v9, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;

    .line 141
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 146
    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;

    .line 145
    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 150
    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Landroid/health/connect/internal/datatypes/TotalCaloriesBurnedRecordInternal;

    .line 149
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 154
    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;

    .line 153
    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 156
    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v13, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;

    .line 155
    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 159
    const/16 v13, 0xc

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v14, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    .line 158
    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 162
    const/16 v14, 0xd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v15, Landroid/health/connect/internal/datatypes/PowerRecordInternal;

    .line 161
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 164
    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v2

    const-class v2, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;

    .line 163
    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 166
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v14

    const-class v14, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    .line 165
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 168
    const/16 v14, 0xf

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v18, v2

    const-class v2, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;

    .line 167
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 170
    const/16 v19, 0x22

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v14

    const-class v14, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;

    .line 169
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 173
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/HeartRateVariabilityRmssdRecordInternal;

    .line 172
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 176
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v21, v2

    const-class v2, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;

    .line 175
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 179
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v22, v2

    const-class v2, Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;

    .line 178
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 183
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v23, v2

    const-class v2, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    .line 182
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 185
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v24, v2

    const-class v2, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;

    .line 184
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 188
    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v25, v2

    const-class v2, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;

    .line 187
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 191
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/WeightRecordInternal;

    .line 190
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 193
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/OxygenSaturationRecordInternal;

    .line 192
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 196
    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;

    .line 195
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 199
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    .line 198
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 202
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/BoneMassRecordInternal;

    .line 201
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 204
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 203
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 206
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;

    .line 205
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 208
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 207
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 210
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;

    .line 209
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 213
    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;

    .line 212
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 215
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/MenstruationFlowRecordInternal;

    .line 214
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 218
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    .line 217
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 220
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/HeightRecordInternal;

    .line 219
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 222
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/LeanBodyMassRecordInternal;

    .line 221
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 224
    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 223
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 227
    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 226
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 230
    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    .line 229
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 232
    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    .line 231
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    .line 235
    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    .line 234
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v1, Landroid/util/ArrayMap;

    move/from16 v2, v16

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 239
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 240
    const-class v2, Landroid/health/connect/datatypes/StepsRecord;

    .line 239
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 242
    const-class v2, Landroid/health/connect/datatypes/HeartRateRecord;

    .line 241
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 245
    const-class v2, Landroid/health/connect/datatypes/HydrationRecord;

    .line 244
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 247
    const-class v2, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;

    .line 246
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 250
    const-class v2, Landroid/health/connect/datatypes/ElevationGainedRecord;

    .line 249
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 252
    const-class v2, Landroid/health/connect/datatypes/DistanceRecord;

    .line 251
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 254
    const-class v2, Landroid/health/connect/datatypes/NutritionRecord;

    .line 253
    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 256
    const-class v2, Landroid/health/connect/datatypes/FloorsClimbedRecord;

    .line 255
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 258
    const-class v2, Landroid/health/connect/datatypes/WheelchairPushesRecord;

    .line 257
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 260
    const-class v2, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;

    .line 259
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 264
    const-class v2, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;

    .line 263
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 267
    const-class v2, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    .line 266
    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 270
    const-class v2, Landroid/health/connect/datatypes/PowerRecord;

    .line 269
    move-object/from16 v3, v17

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 272
    const-class v2, Landroid/health/connect/datatypes/SpeedRecord;

    .line 271
    move-object/from16 v3, v18

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 274
    const-class v2, Landroid/health/connect/datatypes/StepsCadenceRecord;

    .line 273
    move-object/from16 v3, v20

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 277
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BodyTemperatureRecord;

    .line 276
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 279
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BoneMassRecord;

    .line 278
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 281
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BloodPressureRecord;

    .line 280
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 283
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BodyFatRecord;

    .line 282
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 285
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BloodGlucoseRecord;

    .line 284
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 287
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BasalBodyTemperatureRecord;

    .line 286
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 290
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/CervicalMucusRecord;

    .line 289
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 292
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/LeanBodyMassRecord;

    .line 291
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 294
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/MenstruationFlowRecord;

    .line 293
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 296
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/HeightRecord;

    .line 295
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 298
    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/OvulationTestRecord;

    .line 297
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 300
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/Vo2MaxRecord;

    .line 299
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 302
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/SexualActivityRecord;

    .line 301
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 304
    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/SleepSessionRecord;

    .line 303
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 306
    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/SkinTemperatureRecord;

    .line 305
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 309
    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/RespiratoryRateRecord;

    .line 308
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 311
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/OxygenSaturationRecord;

    .line 310
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 313
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/RestingHeartRateRecord;

    .line 312
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 315
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/WeightRecord;

    .line 314
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 317
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/BodyWaterMassRecord;

    .line 316
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 319
    const/16 v16, 0x23

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;

    .line 318
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 322
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/MenstruationPeriodRecord;

    .line 321
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 325
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;

    .line 324
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 328
    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/ExerciseSessionRecord;

    .line 327
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 330
    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    .line 329
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 333
    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    .line 332
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    .line 337
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mExternalRecordClassToRecordIdMap:Ljava/util/Map;

    .line 338
    iget-object v1, v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    new-instance v2, Landroid/health/connect/internal/datatypes/utils/RecordMapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/health/connect/internal/datatypes/utils/RecordMapper$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/internal/datatypes/utils/RecordMapper;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 340
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/health/connect/internal/datatypes/utils/RecordMapper;
    .registers 2

    const-class v0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    monitor-enter v0

    .line 344
    :try_start_3
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->sRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    if-nez v1, :cond_e

    .line 345
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/RecordMapper;-><init>()V

    sput-object v1, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->sRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;

    .line 348
    :cond_e
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->sRecordMapper:Landroid/health/connect/internal/datatypes/utils/RecordMapper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 343
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/Integer;Ljava/lang/Class;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "recordClass"    # Ljava/lang/Class;

    .line 339
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mExternalRecordClassToRecordIdMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist getRecordIdToExternalRecordClassMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToExternalRecordClassMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getRecordIdToInternalRecordClassMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mRecordIdToInternalRecordClassMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getRecordType(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    .local p1, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mExternalRecordClassToRecordIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist hasRecordType(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    .local p1, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/RecordMapper;->mExternalRecordClassToRecordIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
