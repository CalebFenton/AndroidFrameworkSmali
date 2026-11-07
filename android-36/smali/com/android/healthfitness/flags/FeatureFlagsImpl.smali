.class public final Lcom/android/healthfitness/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/healthfitness/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist activityIntensity()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist activityIntensityDb()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist addMissingAccessLogs()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist architectureImprovement()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist clearCachesAfterSwitchingUser()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cloudBackupAndRestore()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cloudBackupAndRestoreDb()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cyclePhases()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deprecateExerciseSessionTypeBreathing()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist developmentDatabase()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ecosystemMetrics()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ecosystemMetricsDbChanges()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist entriesPagination()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist exerciseSegmentWeight()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist exerciseSegmentWeightDb()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist exportImport()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist exportImportFastFollow()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist exportImportNiceToHave()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist expressiveThemingEnabled()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist extendExportImportTelemetry()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist healthConnectMappings()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist immediateExport()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public greylist infraToGuardDbChanges()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist launchOnboardingActivity()Z
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public greylist logcatCensorIae()Z
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public greylist mindfulness()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist newInformationArchitecture()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist onboarding()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist personalHealthRecord()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordDatabase()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordDisableD2d()Z
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public greylist personalHealthRecordDisableExportImport()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordEnableD2dAndExportImport()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordEnableExportImport()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordEntriesScreen()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist personalHealthRecordLockScreenBanner()Z
    .registers 2

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordTelemetry()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordTelemetryPrivateWw()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist personalHealthRecordUiTelemetry()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist phrChangeLogs()Z
    .registers 2

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrChangeLogsDb()Z
    .registers 2

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrFhirBasicComplexTypeValidation()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist phrFhirComplexTypeValidation()Z
    .registers 2

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrFhirExtensionValidation()Z
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrFhirOneofValidation()Z
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrFhirPrimitiveTypeValidation()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist phrFhirResourceValidatorUseWeakReference()Z
    .registers 2

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrFhirStructuralValidation()Z
    .registers 2

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public greylist phrFhirValidationDisallowEmptyObjectsArrays()Z
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public greylist phrReadMedicalResourcesFixQueryLimit()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist phrUpsertFixParcelSizeCalculation()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist phrUpsertFixUseSharedMemory()Z
    .registers 2

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refactorAggregations()Z
    .registers 2

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public greylist replaceBodySensorPermissionEnabled()Z
    .registers 2

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist singleUserPermissionIntentTracker()Z
    .registers 2

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public greylist smoking()Z
    .registers 2

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public greylist smokingDb()Z
    .registers 2

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public greylist stepTrackingEnabled()Z
    .registers 2

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public greylist symptoms()Z
    .registers 2

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public greylist symptomsDb()Z
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method
