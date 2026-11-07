.class public Lcom/android/healthfitness/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/healthfitness/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/healthfitness/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/healthfitness/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/healthfitness/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v1, Ljava/util/HashSet;

    const-string v61, "com.android.healthfitness.flags.symptoms_db"

    const-string v62, ""

    const-string v2, "com.android.healthfitness.flags.activity_intensity"

    const-string v3, "com.android.healthfitness.flags.activity_intensity_db"

    const-string v4, "com.android.healthfitness.flags.add_missing_access_logs"

    const-string v5, "com.android.healthfitness.flags.architecture_improvement"

    const-string v6, "com.android.healthfitness.flags.clear_caches_after_switching_user"

    const-string v7, "com.android.healthfitness.flags.cloud_backup_and_restore"

    const-string v8, "com.android.healthfitness.flags.cloud_backup_and_restore_db"

    const-string v9, "com.android.healthfitness.flags.cycle_phases"

    const-string v10, "com.android.healthfitness.flags.deprecate_exercise_session_type_breathing"

    const-string v11, "com.android.healthfitness.flags.development_database"

    const-string v12, "com.android.healthfitness.flags.ecosystem_metrics"

    const-string v13, "com.android.healthfitness.flags.ecosystem_metrics_db_changes"

    const-string v14, "com.android.healthfitness.flags.entries_pagination"

    const-string v15, "com.android.healthfitness.flags.exercise_segment_weight"

    const-string v16, "com.android.healthfitness.flags.exercise_segment_weight_db"

    const-string v17, "com.android.healthfitness.flags.export_import"

    const-string v18, "com.android.healthfitness.flags.export_import_fast_follow"

    const-string v19, "com.android.healthfitness.flags.export_import_nice_to_have"

    const-string v20, "com.android.healthfitness.flags.expressive_theming_enabled"

    const-string v21, "com.android.healthfitness.flags.extend_export_import_telemetry"

    const-string v22, "com.android.healthfitness.flags.health_connect_mappings"

    const-string v23, "com.android.healthfitness.flags.immediate_export"

    const-string v24, "com.android.healthfitness.flags.infra_to_guard_db_changes"

    const-string v25, "com.android.healthfitness.flags.launch_onboarding_activity"

    const-string v26, "com.android.healthfitness.flags.logcat_censor_iae"

    const-string v27, "com.android.healthfitness.flags.mindfulness"

    const-string v28, "com.android.healthfitness.flags.new_information_architecture"

    const-string v29, "com.android.healthfitness.flags.onboarding"

    const-string v30, "com.android.healthfitness.flags.personal_health_record"

    const-string v31, "com.android.healthfitness.flags.personal_health_record_database"

    const-string v32, "com.android.healthfitness.flags.personal_health_record_disable_d2d"

    const-string v33, "com.android.healthfitness.flags.personal_health_record_disable_export_import"

    const-string v34, "com.android.healthfitness.flags.personal_health_record_enable_d2d_and_export_import"

    const-string v35, "com.android.healthfitness.flags.personal_health_record_enable_export_import"

    const-string v36, "com.android.healthfitness.flags.personal_health_record_entries_screen"

    const-string v37, "com.android.healthfitness.flags.personal_health_record_lock_screen_banner"

    const-string v38, "com.android.healthfitness.flags.personal_health_record_telemetry"

    const-string v39, "com.android.healthfitness.flags.personal_health_record_telemetry_private_ww"

    const-string v40, "com.android.healthfitness.flags.personal_health_record_ui_telemetry"

    const-string v41, "com.android.healthfitness.flags.phr_change_logs"

    const-string v42, "com.android.healthfitness.flags.phr_change_logs_db"

    const-string v43, "com.android.healthfitness.flags.phr_fhir_basic_complex_type_validation"

    const-string v44, "com.android.healthfitness.flags.phr_fhir_complex_type_validation"

    const-string v45, "com.android.healthfitness.flags.phr_fhir_extension_validation"

    const-string v46, "com.android.healthfitness.flags.phr_fhir_oneof_validation"

    const-string v47, "com.android.healthfitness.flags.phr_fhir_primitive_type_validation"

    const-string v48, "com.android.healthfitness.flags.phr_fhir_resource_validator_use_weak_reference"

    const-string v49, "com.android.healthfitness.flags.phr_fhir_structural_validation"

    const-string v50, "com.android.healthfitness.flags.phr_fhir_validation_disallow_empty_objects_arrays"

    const-string v51, "com.android.healthfitness.flags.phr_read_medical_resources_fix_query_limit"

    const-string v52, "com.android.healthfitness.flags.phr_upsert_fix_parcel_size_calculation"

    const-string v53, "com.android.healthfitness.flags.phr_upsert_fix_use_shared_memory"

    const-string v54, "com.android.healthfitness.flags.refactor_aggregations"

    const-string v55, "com.android.healthfitness.flags.replace_body_sensor_permission_enabled"

    const-string v56, "com.android.healthfitness.flags.single_user_permission_intent_tracker"

    const-string v57, "com.android.healthfitness.flags.smoking"

    const-string v58, "com.android.healthfitness.flags.smoking_db"

    const-string v59, "com.android.healthfitness.flags.step_tracking_enabled"

    const-string v60, "com.android.healthfitness.flags.symptoms"

    filled-new-array/range {v2 .. v62}, [Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/healthfitness/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/healthfitness/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 449
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist activityIntensity()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.healthfitness.flags.activity_intensity"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist activityIntensityDb()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.healthfitness.flags.activity_intensity_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addMissingAccessLogs()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.healthfitness.flags.add_missing_access_logs"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist architectureImprovement()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.healthfitness.flags.architecture_improvement"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clearCachesAfterSwitchingUser()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.healthfitness.flags.clear_caches_after_switching_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cloudBackupAndRestore()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.healthfitness.flags.cloud_backup_and_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cloudBackupAndRestoreDb()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.healthfitness.flags.cloud_backup_and_restore_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cyclePhases()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.healthfitness.flags.cycle_phases"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateExerciseSessionTypeBreathing()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.healthfitness.flags.deprecate_exercise_session_type_breathing"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist developmentDatabase()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.healthfitness.flags.development_database"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ecosystemMetrics()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.healthfitness.flags.ecosystem_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ecosystemMetricsDbChanges()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.healthfitness.flags.ecosystem_metrics_db_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist entriesPagination()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.healthfitness.flags.entries_pagination"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist exerciseSegmentWeight()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.healthfitness.flags.exercise_segment_weight"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist exerciseSegmentWeightDb()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.healthfitness.flags.exercise_segment_weight_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist exportImport()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.healthfitness.flags.export_import"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist exportImportFastFollow()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.healthfitness.flags.export_import_fast_follow"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist exportImportNiceToHave()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.healthfitness.flags.export_import_nice_to_have"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist expressiveThemingEnabled()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.healthfitness.flags.expressive_theming_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist extendExportImportTelemetry()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.healthfitness.flags.extend_export_import_telemetry"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    const-string v59, "com.android.healthfitness.flags.symptoms"

    const-string v60, "com.android.healthfitness.flags.symptoms_db"

    const-string v1, "com.android.healthfitness.flags.activity_intensity"

    const-string v2, "com.android.healthfitness.flags.activity_intensity_db"

    const-string v3, "com.android.healthfitness.flags.add_missing_access_logs"

    const-string v4, "com.android.healthfitness.flags.architecture_improvement"

    const-string v5, "com.android.healthfitness.flags.clear_caches_after_switching_user"

    const-string v6, "com.android.healthfitness.flags.cloud_backup_and_restore"

    const-string v7, "com.android.healthfitness.flags.cloud_backup_and_restore_db"

    const-string v8, "com.android.healthfitness.flags.cycle_phases"

    const-string v9, "com.android.healthfitness.flags.deprecate_exercise_session_type_breathing"

    const-string v10, "com.android.healthfitness.flags.development_database"

    const-string v11, "com.android.healthfitness.flags.ecosystem_metrics"

    const-string v12, "com.android.healthfitness.flags.ecosystem_metrics_db_changes"

    const-string v13, "com.android.healthfitness.flags.entries_pagination"

    const-string v14, "com.android.healthfitness.flags.exercise_segment_weight"

    const-string v15, "com.android.healthfitness.flags.exercise_segment_weight_db"

    const-string v16, "com.android.healthfitness.flags.export_import"

    const-string v17, "com.android.healthfitness.flags.export_import_fast_follow"

    const-string v18, "com.android.healthfitness.flags.export_import_nice_to_have"

    const-string v19, "com.android.healthfitness.flags.expressive_theming_enabled"

    const-string v20, "com.android.healthfitness.flags.extend_export_import_telemetry"

    const-string v21, "com.android.healthfitness.flags.health_connect_mappings"

    const-string v22, "com.android.healthfitness.flags.immediate_export"

    const-string v23, "com.android.healthfitness.flags.infra_to_guard_db_changes"

    const-string v24, "com.android.healthfitness.flags.launch_onboarding_activity"

    const-string v25, "com.android.healthfitness.flags.logcat_censor_iae"

    const-string v26, "com.android.healthfitness.flags.mindfulness"

    const-string v27, "com.android.healthfitness.flags.new_information_architecture"

    const-string v28, "com.android.healthfitness.flags.onboarding"

    const-string v29, "com.android.healthfitness.flags.personal_health_record"

    const-string v30, "com.android.healthfitness.flags.personal_health_record_database"

    const-string v31, "com.android.healthfitness.flags.personal_health_record_disable_d2d"

    const-string v32, "com.android.healthfitness.flags.personal_health_record_disable_export_import"

    const-string v33, "com.android.healthfitness.flags.personal_health_record_enable_d2d_and_export_import"

    const-string v34, "com.android.healthfitness.flags.personal_health_record_enable_export_import"

    const-string v35, "com.android.healthfitness.flags.personal_health_record_entries_screen"

    const-string v36, "com.android.healthfitness.flags.personal_health_record_lock_screen_banner"

    const-string v37, "com.android.healthfitness.flags.personal_health_record_telemetry"

    const-string v38, "com.android.healthfitness.flags.personal_health_record_telemetry_private_ww"

    const-string v39, "com.android.healthfitness.flags.personal_health_record_ui_telemetry"

    const-string v40, "com.android.healthfitness.flags.phr_change_logs"

    const-string v41, "com.android.healthfitness.flags.phr_change_logs_db"

    const-string v42, "com.android.healthfitness.flags.phr_fhir_basic_complex_type_validation"

    const-string v43, "com.android.healthfitness.flags.phr_fhir_complex_type_validation"

    const-string v44, "com.android.healthfitness.flags.phr_fhir_extension_validation"

    const-string v45, "com.android.healthfitness.flags.phr_fhir_oneof_validation"

    const-string v46, "com.android.healthfitness.flags.phr_fhir_primitive_type_validation"

    const-string v47, "com.android.healthfitness.flags.phr_fhir_resource_validator_use_weak_reference"

    const-string v48, "com.android.healthfitness.flags.phr_fhir_structural_validation"

    const-string v49, "com.android.healthfitness.flags.phr_fhir_validation_disallow_empty_objects_arrays"

    const-string v50, "com.android.healthfitness.flags.phr_read_medical_resources_fix_query_limit"

    const-string v51, "com.android.healthfitness.flags.phr_upsert_fix_parcel_size_calculation"

    const-string v52, "com.android.healthfitness.flags.phr_upsert_fix_use_shared_memory"

    const-string v53, "com.android.healthfitness.flags.refactor_aggregations"

    const-string v54, "com.android.healthfitness.flags.replace_body_sensor_permission_enabled"

    const-string v55, "com.android.healthfitness.flags.single_user_permission_intent_tracker"

    const-string v56, "com.android.healthfitness.flags.smoking"

    const-string v57, "com.android.healthfitness.flags.smoking_db"

    const-string v58, "com.android.healthfitness.flags.step_tracking_enabled"

    filled-new-array/range {v1 .. v60}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/healthfitness/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 453
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/healthfitness/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/healthfitness/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist healthConnectMappings()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.healthfitness.flags.health_connect_mappings"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist immediateExport()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.healthfitness.flags.immediate_export"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist infraToGuardDbChanges()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.healthfitness.flags.infra_to_guard_db_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/healthfitness/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 441
    invoke-direct {p0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 442
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist launchOnboardingActivity()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.healthfitness.flags.launch_onboarding_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist logcatCensorIae()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.healthfitness.flags.logcat_censor_iae"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mindfulness()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.healthfitness.flags.mindfulness"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newInformationArchitecture()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.healthfitness.flags.new_information_architecture"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onboarding()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.healthfitness.flags.onboarding"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecord()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordDatabase()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_database"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordDisableD2d()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_disable_d2d"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordDisableExportImport()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_disable_export_import"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordEnableD2dAndExportImport()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_enable_d2d_and_export_import"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordEnableExportImport()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_enable_export_import"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordEntriesScreen()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_entries_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordLockScreenBanner()Z
    .registers 3

    .line 267
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_lock_screen_banner"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordTelemetry()Z
    .registers 3

    .line 274
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_telemetry"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordTelemetryPrivateWw()Z
    .registers 3

    .line 281
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_telemetry_private_ww"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist personalHealthRecordUiTelemetry()Z
    .registers 3

    .line 288
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.healthfitness.flags.personal_health_record_ui_telemetry"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrChangeLogs()Z
    .registers 3

    .line 295
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_change_logs"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrChangeLogsDb()Z
    .registers 3

    .line 302
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_change_logs_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirBasicComplexTypeValidation()Z
    .registers 3

    .line 309
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_basic_complex_type_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirComplexTypeValidation()Z
    .registers 3

    .line 316
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_complex_type_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirExtensionValidation()Z
    .registers 3

    .line 323
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_extension_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirOneofValidation()Z
    .registers 3

    .line 330
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_oneof_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirPrimitiveTypeValidation()Z
    .registers 3

    .line 337
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_primitive_type_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirResourceValidatorUseWeakReference()Z
    .registers 3

    .line 344
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_resource_validator_use_weak_reference"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirStructuralValidation()Z
    .registers 3

    .line 351
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_structural_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrFhirValidationDisallowEmptyObjectsArrays()Z
    .registers 3

    .line 358
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_fhir_validation_disallow_empty_objects_arrays"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrReadMedicalResourcesFixQueryLimit()Z
    .registers 3

    .line 365
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_read_medical_resources_fix_query_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrUpsertFixParcelSizeCalculation()Z
    .registers 3

    .line 372
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_upsert_fix_parcel_size_calculation"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phrUpsertFixUseSharedMemory()Z
    .registers 3

    .line 379
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.healthfitness.flags.phr_upsert_fix_use_shared_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refactorAggregations()Z
    .registers 3

    .line 386
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.healthfitness.flags.refactor_aggregations"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist replaceBodySensorPermissionEnabled()Z
    .registers 3

    .line 393
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.healthfitness.flags.replace_body_sensor_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist singleUserPermissionIntentTracker()Z
    .registers 3

    .line 400
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.healthfitness.flags.single_user_permission_intent_tracker"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist smoking()Z
    .registers 3

    .line 407
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.healthfitness.flags.smoking"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist smokingDb()Z
    .registers 3

    .line 414
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.healthfitness.flags.smoking_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist stepTrackingEnabled()Z
    .registers 3

    .line 421
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.healthfitness.flags.step_tracking_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist symptoms()Z
    .registers 3

    .line 428
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.healthfitness.flags.symptoms"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist symptomsDb()Z
    .registers 3

    .line 435
    new-instance v0, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.healthfitness.flags.symptoms_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/healthfitness/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
