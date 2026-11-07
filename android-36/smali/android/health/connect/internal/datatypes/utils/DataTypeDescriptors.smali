.class public Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptors;
.super Ljava/lang/Object;
.source "DataTypeDescriptors.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAllDataTypeDescriptors()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->healthConnectMappings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 245
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 248
    :cond_b
    const/16 v0, 0x2a

    new-array v1, v0, [Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    .line 249
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v2

    .line 250
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v2

    .line 251
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v2

    .line 253
    invoke-interface {v2, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v2

    .line 254
    const-string v5, "android.permission.health.READ_ACTIVE_CALORIES_BURNED"

    invoke-interface {v2, v5}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v2

    .line 255
    const-string v5, "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

    invoke-interface {v2, v5}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v2

    const-class v5, Landroid/health/connect/datatypes/ActiveCaloriesBurnedRecord;

    .line 256
    invoke-interface {v2, v5}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v2

    const-class v5, Landroid/health/connect/internal/datatypes/ActiveCaloriesBurnedRecordInternal;

    .line 257
    invoke-interface {v2, v5}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v2

    .line 258
    invoke-interface {v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    .line 260
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->activityIntensity()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-static {}, Lcom/android/healthfitness/flags/AconfigFlagHelper;->isActivityIntensityEnabled()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 261
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v2

    .line 262
    invoke-interface {v2, v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v2

    .line 263
    invoke-interface {v2, v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 265
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 266
    const-string v2, "android.permission.health.READ_ACTIVITY_INTENSITY"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 267
    const-string v2, "android.permission.health.WRITE_ACTIVITY_INTENSITY"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/ActivityIntensityRecord;

    .line 268
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/ActivityIntensityRecordInternal;

    .line 269
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    goto :goto_7a

    .line 272
    :cond_79
    const/4 v0, 0x0

    :goto_7a
    aput-object v0, v1, v4

    .line 273
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 274
    const/16 v2, 0x14

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 275
    const/16 v2, 0x21

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 277
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 278
    const-string v2, "android.permission.health.READ_BASAL_BODY_TEMPERATURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 279
    const-string v2, "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BasalBodyTemperatureRecord;

    .line 280
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BasalBodyTemperatureRecordInternal;

    .line 281
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    aput-object v0, v1, v3

    .line 283
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 284
    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 285
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 287
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 288
    const-string v2, "android.permission.health.READ_BASAL_METABOLIC_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 289
    const-string v2, "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BasalMetabolicRateRecord;

    .line 290
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BasalMetabolicRateRecordInternal;

    .line 291
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 293
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 294
    const/16 v2, 0x19

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 295
    const/16 v2, 0x1a

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 296
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 297
    const-string v2, "android.permission.health.READ_BLOOD_GLUCOSE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 298
    const-string v2, "android.permission.health.WRITE_BLOOD_GLUCOSE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BloodGlucoseRecord;

    .line 299
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BloodGlucoseRecordInternal;

    .line 300
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 302
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 303
    const/16 v2, 0x17

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 304
    const/16 v2, 0x1b

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 305
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 306
    const-string v2, "android.permission.health.READ_BLOOD_PRESSURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 307
    const-string v2, "android.permission.health.WRITE_BLOOD_PRESSURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BloodPressureRecord;

    .line 308
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BloodPressureRecordInternal;

    .line 309
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 311
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 312
    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 313
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 314
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 315
    const-string v2, "android.permission.health.READ_BODY_FAT"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 316
    const-string v2, "android.permission.health.WRITE_BODY_FAT"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BodyFatRecord;

    .line 317
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BodyFatRecordInternal;

    .line 318
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 320
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 321
    const/16 v2, 0x1d

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 322
    const/16 v2, 0x1c

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 323
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 324
    const-string v2, "android.permission.health.READ_BODY_TEMPERATURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 325
    const-string v2, "android.permission.health.WRITE_BODY_TEMPERATURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BodyTemperatureRecord;

    .line 326
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BodyTemperatureRecordInternal;

    .line 327
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 329
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 330
    const/16 v2, 0x22

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 331
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 332
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 333
    const-string v2, "android.permission.health.READ_BODY_WATER_MASS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 334
    const-string v2, "android.permission.health.WRITE_BODY_WATER_MASS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BodyWaterMassRecord;

    .line 335
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BodyWaterMassRecordInternal;

    .line 336
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 338
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 339
    const/16 v2, 0x20

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 340
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 341
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 342
    const-string v2, "android.permission.health.READ_BONE_MASS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 343
    const-string v2, "android.permission.health.WRITE_BONE_MASS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/BoneMassRecord;

    .line 344
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/BoneMassRecordInternal;

    .line 345
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 347
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 348
    const/16 v2, 0x13

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 349
    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 350
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 351
    const-string v2, "android.permission.health.READ_CERVICAL_MUCUS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 352
    const-string v2, "android.permission.health.WRITE_CERVICAL_MUCUS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/CervicalMucusRecord;

    .line 353
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/CervicalMucusRecordInternal;

    .line 354
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 356
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 357
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 358
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 359
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 360
    const-string v2, "android.permission.health.READ_EXERCISE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 361
    const-string v2, "android.permission.health.WRITE_EXERCISE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    .line 362
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;

    .line 363
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 365
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 366
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 367
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 368
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 369
    const-string v2, "android.permission.health.READ_DISTANCE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 370
    const-string v2, "android.permission.health.WRITE_DISTANCE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/DistanceRecord;

    .line 371
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/DistanceRecordInternal;

    .line 372
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    .line 374
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 375
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 376
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 377
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 378
    const-string v2, "android.permission.health.READ_ELEVATION_GAINED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 379
    const-string v2, "android.permission.health.WRITE_ELEVATION_GAINED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/ElevationGainedRecord;

    .line 380
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/ElevationGainedRecordInternal;

    .line 381
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    .line 383
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 384
    const/16 v2, 0x25

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 385
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 386
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 387
    const-string v2, "android.permission.health.READ_EXERCISE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 388
    const-string v2, "android.permission.health.WRITE_EXERCISE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/ExerciseSessionRecord;

    .line 389
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;

    .line 390
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    .line 392
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 393
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 394
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 395
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 396
    const-string v2, "android.permission.health.READ_FLOORS_CLIMBED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 397
    const-string v2, "android.permission.health.WRITE_FLOORS_CLIMBED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/FloorsClimbedRecord;

    .line 398
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/FloorsClimbedRecordInternal;

    .line 399
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    .line 401
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 402
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 403
    const/16 v2, 0x1d

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 404
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 405
    const-string v2, "android.permission.health.READ_HEART_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 406
    const-string v2, "android.permission.health.WRITE_HEART_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/HeartRateRecord;

    .line 407
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;

    .line 408
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    .line 410
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 411
    const/16 v2, 0x23

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 412
    const/16 v2, 0x1e

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 414
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 415
    const-string v2, "android.permission.health.READ_HEART_RATE_VARIABILITY"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 416
    const-string v2, "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/HeartRateVariabilityRmssdRecord;

    .line 417
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/HeartRateVariabilityRmssdRecordInternal;

    .line 418
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    .line 421
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 422
    const/16 v2, 0x18

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 423
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 424
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 425
    const-string v2, "android.permission.health.READ_HEIGHT"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 426
    const-string v2, "android.permission.health.WRITE_HEIGHT"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/HeightRecord;

    .line 427
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/HeightRecordInternal;

    .line 428
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    .line 430
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 431
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 432
    const/16 v2, 0x17

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 433
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 434
    const-string v2, "android.permission.health.READ_HYDRATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 435
    const-string v2, "android.permission.health.WRITE_HYDRATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/HydrationRecord;

    .line 436
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/HydrationRecordInternal;

    .line 437
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    .line 439
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 440
    const/16 v2, 0x24

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 441
    const/16 v2, 0x26

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 443
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 444
    const-string v2, "android.permission.health.READ_INTERMENSTRUAL_BLEEDING"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 445
    const-string v2, "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/IntermenstrualBleedingRecord;

    .line 446
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/IntermenstrualBleedingRecordInternal;

    .line 447
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    .line 449
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 450
    const/16 v2, 0x1b

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 451
    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 452
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 453
    const-string v2, "android.permission.health.READ_LEAN_BODY_MASS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 454
    const-string v2, "android.permission.health.WRITE_LEAN_BODY_MASS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/LeanBodyMassRecord;

    .line 455
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/LeanBodyMassRecordInternal;

    .line 456
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    .line 458
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 459
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 460
    const/16 v2, 0x14

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 461
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 462
    const-string v2, "android.permission.health.READ_MENSTRUATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 463
    const-string v2, "android.permission.health.WRITE_MENSTRUATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/MenstruationFlowRecord;

    .line 464
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/MenstruationFlowRecordInternal;

    .line 465
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    .line 467
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 468
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 469
    const/16 v2, 0x14

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 470
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 471
    const-string v2, "android.permission.health.READ_MENSTRUATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 472
    const-string v2, "android.permission.health.WRITE_MENSTRUATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/MenstruationPeriodRecord;

    .line 473
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/MenstruationPeriodRecordInternal;

    .line 474
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    .line 476
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 477
    const/16 v2, 0x29

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 478
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 479
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 480
    const-string v2, "android.permission.health.READ_MINDFULNESS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 481
    const-string v2, "android.permission.health.WRITE_MINDFULNESS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    .line 482
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;

    .line 483
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    .line 485
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 486
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 487
    const/16 v2, 0x18

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 488
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 489
    const-string v2, "android.permission.health.READ_NUTRITION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 490
    const-string v2, "android.permission.health.WRITE_NUTRITION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/NutritionRecord;

    .line 491
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;

    .line 492
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    .line 494
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 495
    const/16 v2, 0x1e

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 496
    const/16 v2, 0x15

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 497
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 498
    const-string v2, "android.permission.health.READ_OVULATION_TEST"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 499
    const-string v2, "android.permission.health.WRITE_OVULATION_TEST"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/OvulationTestRecord;

    .line 500
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/OvulationTestRecordInternal;

    .line 501
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    .line 503
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 504
    const/16 v2, 0x16

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 505
    const/16 v2, 0x1f

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 506
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 507
    const-string v2, "android.permission.health.READ_OXYGEN_SATURATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 508
    const-string v2, "android.permission.health.WRITE_OXYGEN_SATURATION"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/OxygenSaturationRecord;

    .line 509
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/OxygenSaturationRecordInternal;

    .line 510
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    .line 512
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 513
    const/16 v2, 0x28

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 514
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 515
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 516
    const-string v2, "android.permission.health.READ_PLANNED_EXERCISE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 517
    const-string v2, "android.permission.health.WRITE_PLANNED_EXERCISE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    .line 518
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;

    .line 519
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    .line 521
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 522
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 523
    const/16 v2, 0x24

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 524
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 525
    const-string v2, "android.permission.health.READ_POWER"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 526
    const-string v2, "android.permission.health.WRITE_POWER"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/PowerRecord;

    .line 527
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/PowerRecordInternal;

    .line 528
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    .line 530
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 531
    const/16 v2, 0x1f

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 532
    const/16 v2, 0x20

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 533
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 534
    const-string v2, "android.permission.health.READ_RESPIRATORY_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 535
    const-string v2, "android.permission.health.WRITE_RESPIRATORY_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/RespiratoryRateRecord;

    .line 536
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/RespiratoryRateRecordInternal;

    .line 537
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    .line 539
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 540
    const/16 v2, 0x21

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 541
    const/16 v2, 0x22

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 542
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 543
    const-string v2, "android.permission.health.READ_RESTING_HEART_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 544
    const-string v2, "android.permission.health.WRITE_RESTING_HEART_RATE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/RestingHeartRateRecord;

    .line 545
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/RestingHeartRateRecordInternal;

    .line 546
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    .line 548
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 549
    const/16 v2, 0x1c

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 550
    const/16 v2, 0x16

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 551
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 552
    const-string v2, "android.permission.health.READ_SEXUAL_ACTIVITY"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 553
    const-string v2, "android.permission.health.WRITE_SEXUAL_ACTIVITY"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/SexualActivityRecord;

    .line 554
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/SexualActivityRecordInternal;

    .line 555
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 556
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    .line 557
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 558
    const/16 v2, 0x27

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 559
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 560
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 561
    const-string v2, "android.permission.health.READ_SKIN_TEMPERATURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 562
    const-string v2, "android.permission.health.WRITE_SKIN_TEMPERATURE"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/SkinTemperatureRecord;

    .line 563
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;

    .line 564
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    .line 566
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 567
    const/16 v2, 0x26

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 568
    const/16 v2, 0x19

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 569
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 570
    const-string v2, "android.permission.health.READ_SLEEP"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 571
    const-string v2, "android.permission.health.WRITE_SLEEP"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/SleepSessionRecord;

    .line 572
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;

    .line 573
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    .line 575
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 576
    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 577
    const/16 v2, 0x25

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 578
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 579
    const-string v2, "android.permission.health.READ_SPEED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 580
    const-string v2, "android.permission.health.WRITE_SPEED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/SpeedRecord;

    .line 581
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/SpeedRecordInternal;

    .line 582
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    .line 584
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 585
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 586
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 587
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 588
    const-string v2, "android.permission.health.READ_STEPS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 589
    const-string v2, "android.permission.health.WRITE_STEPS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/StepsRecord;

    .line 590
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/StepsRecordInternal;

    .line 591
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 592
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    .line 593
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 594
    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 595
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 596
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 597
    const-string v2, "android.permission.health.READ_STEPS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 598
    const-string v2, "android.permission.health.WRITE_STEPS"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/StepsCadenceRecord;

    .line 599
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/StepsCadenceRecordInternal;

    .line 600
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    .line 602
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 603
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 604
    const/16 v2, 0x23

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 606
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 607
    const-string v2, "android.permission.health.READ_TOTAL_CALORIES_BURNED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 608
    const-string v2, "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;

    .line 609
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/TotalCaloriesBurnedRecordInternal;

    .line 610
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 611
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    .line 612
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 613
    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 614
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 615
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 616
    const-string v2, "android.permission.health.READ_VO2_MAX"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 617
    const-string v2, "android.permission.health.WRITE_VO2_MAX"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/Vo2MaxRecord;

    .line 618
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/Vo2MaxRecordInternal;

    .line 619
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 620
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    .line 621
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 622
    const/16 v2, 0x1a

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 623
    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 624
    invoke-interface {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 625
    const-string v2, "android.permission.health.READ_WEIGHT"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 626
    const-string v2, "android.permission.health.WRITE_WEIGHT"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/WeightRecord;

    .line 627
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/WeightRecordInternal;

    .line 628
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 629
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    .line 630
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;

    move-result-object v0

    .line 631
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;->setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;

    move-result-object v0

    .line 632
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;->setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;

    move-result-object v0

    .line 633
    invoke-interface {v0, v4}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;->setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;

    move-result-object v0

    .line 634
    const-string v2, "android.permission.health.READ_WHEELCHAIR_PUSHES"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;->setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;

    move-result-object v0

    .line 635
    const-string v2, "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;->setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/datatypes/WheelchairPushesRecord;

    .line 636
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;->setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;

    move-result-object v0

    const-class v2, Landroid/health/connect/internal/datatypes/WheelchairPushesRecordInternal;

    .line 637
    invoke-interface {v0, v2}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;->setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;

    move-result-object v0

    .line 638
    invoke-interface {v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;->build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    .line 248
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptors$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptors$$ExternalSyntheticLambda0;-><init>()V

    .line 639
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 248
    return-object v0
.end method
