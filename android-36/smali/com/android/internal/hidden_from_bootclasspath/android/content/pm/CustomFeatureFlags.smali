.class public Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
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
    .registers 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v1, Ljava/util/HashSet;

    const-string v52, "android.content.pm.wait_application_killed"

    const-string v53, ""

    const-string v2, "android.content.pm.allow_sdk_sandbox_query_intent_activities"

    const-string v3, "android.content.pm.always_load_past_certs_v4"

    const-string v4, "android.content.pm.app_compat_option_16kb"

    const-string v5, "android.content.pm.archiving"

    const-string v6, "android.content.pm.asl_in_apk_app_metadata_source"

    const-string v7, "android.content.pm.audio_playback_capture_allowance"

    const-string v8, "android.content.pm.cache_sdk_system_features"

    const-string v9, "android.content.pm.change_launcher_badging"

    const-string v10, "android.content.pm.cloud_compilation_pm"

    const-string v11, "android.content.pm.cloud_compilation_verification"

    const-string v12, "android.content.pm.component_state_changed_metrics"

    const-string v13, "android.content.pm.delete_packages_silently_backport"

    const-string v14, "android.content.pm.disallow_sdk_libs_to_be_apps"

    const-string v15, "android.content.pm.emergency_install_permission"

    const-string v16, "android.content.pm.encode_app_intent"

    const-string v17, "android.content.pm.fix_duplicated_flags"

    const-string v18, "android.content.pm.fix_system_apps_first_install_time"

    const-string v19, "android.content.pm.force_multi_arch_native_libs_match"

    const-string v20, "android.content.pm.get_package_info"

    const-string v21, "android.content.pm.get_package_info_with_fd"

    const-string v22, "android.content.pm.get_package_storage_stats"

    const-string v23, "android.content.pm.get_resolved_apk_path"

    const-string v24, "android.content.pm.improve_home_app_behavior"

    const-string v25, "android.content.pm.improve_install_dont_kill"

    const-string v26, "android.content.pm.improve_install_freeze"

    const-string v27, "android.content.pm.include_feature_flags_in_package_cacher"

    const-string v28, "android.content.pm.introduce_media_processing_type"

    const-string v29, "android.content.pm.lightweight_invisible_label_detection"

    const-string v30, "android.content.pm.min_target_sdk_24"

    const-string v31, "android.content.pm.nullable_data_dir"

    const-string v32, "android.content.pm.optimize_parsing_in_registered_services_cache"

    const-string v33, "android.content.pm.package_restart_query_disabled_by_default"

    const-string v34, "android.content.pm.parallel_package_parsing_across_system_dirs"

    const-string v35, "android.content.pm.provide_info_of_apk_in_apex"

    const-string v36, "android.content.pm.quarantined_enabled"

    const-string v37, "android.content.pm.read_install_info"

    const-string v38, "android.content.pm.recoverability_detection"

    const-string v39, "android.content.pm.reduce_broadcasts_for_component_state_changes"

    const-string v40, "android.content.pm.relative_reference_intent_filters"

    const-string v41, "android.content.pm.remove_cross_user_permission_hack"

    const-string v42, "android.content.pm.remove_hidden_module_usage"

    const-string v43, "android.content.pm.restrict_nonpreloads_system_shareduids"

    const-string v44, "android.content.pm.rollback_lifetime"

    const-string v45, "android.content.pm.sdk_dependency_installer"

    const-string v46, "android.content.pm.sdk_lib_independence"

    const-string v47, "android.content.pm.set_pre_verified_domains"

    const-string v48, "android.content.pm.stay_stopped"

    const-string v49, "android.content.pm.uid_based_provider_lookup"

    const-string v50, "android.content.pm.use_art_service_v2"

    const-string v51, "android.content.pm.use_pia_v2"

    filled-new-array/range {v2 .. v53}, [Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 386
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist allowSdkSandboxQueryIntentActivities()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.content.pm.allow_sdk_sandbox_query_intent_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysLoadPastCertsV4()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.content.pm.always_load_past_certs_v4"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatOption16kb()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.content.pm.app_compat_option_16kb"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist archiving()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.content.pm.archiving"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aslInApkAppMetadataSource()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.content.pm.asl_in_apk_app_metadata_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioPlaybackCaptureAllowance()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.content.pm.audio_playback_capture_allowance"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheSdkSystemFeatures()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.content.pm.cache_sdk_system_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist changeLauncherBadging()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.content.pm.change_launcher_badging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cloudCompilationPm()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.content.pm.cloud_compilation_pm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cloudCompilationVerification()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.content.pm.cloud_compilation_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist componentStateChangedMetrics()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.content.pm.component_state_changed_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deletePackagesSilentlyBackport()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.content.pm.delete_packages_silently_backport"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowSdkLibsToBeApps()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.content.pm.disallow_sdk_libs_to_be_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyInstallPermission()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.content.pm.emergency_install_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist encodeAppIntent()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.content.pm.encode_app_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixDuplicatedFlags()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.content.pm.fix_duplicated_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixSystemAppsFirstInstallTime()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.content.pm.fix_system_apps_first_install_time"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceMultiArchNativeLibsMatch()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.content.pm.force_multi_arch_native_libs_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    const-string v50, "android.content.pm.use_pia_v2"

    const-string v51, "android.content.pm.wait_application_killed"

    const-string v1, "android.content.pm.allow_sdk_sandbox_query_intent_activities"

    const-string v2, "android.content.pm.always_load_past_certs_v4"

    const-string v3, "android.content.pm.app_compat_option_16kb"

    const-string v4, "android.content.pm.archiving"

    const-string v5, "android.content.pm.asl_in_apk_app_metadata_source"

    const-string v6, "android.content.pm.audio_playback_capture_allowance"

    const-string v7, "android.content.pm.cache_sdk_system_features"

    const-string v8, "android.content.pm.change_launcher_badging"

    const-string v9, "android.content.pm.cloud_compilation_pm"

    const-string v10, "android.content.pm.cloud_compilation_verification"

    const-string v11, "android.content.pm.component_state_changed_metrics"

    const-string v12, "android.content.pm.delete_packages_silently_backport"

    const-string v13, "android.content.pm.disallow_sdk_libs_to_be_apps"

    const-string v14, "android.content.pm.emergency_install_permission"

    const-string v15, "android.content.pm.encode_app_intent"

    const-string v16, "android.content.pm.fix_duplicated_flags"

    const-string v17, "android.content.pm.fix_system_apps_first_install_time"

    const-string v18, "android.content.pm.force_multi_arch_native_libs_match"

    const-string v19, "android.content.pm.get_package_info"

    const-string v20, "android.content.pm.get_package_info_with_fd"

    const-string v21, "android.content.pm.get_package_storage_stats"

    const-string v22, "android.content.pm.get_resolved_apk_path"

    const-string v23, "android.content.pm.improve_home_app_behavior"

    const-string v24, "android.content.pm.improve_install_dont_kill"

    const-string v25, "android.content.pm.improve_install_freeze"

    const-string v26, "android.content.pm.include_feature_flags_in_package_cacher"

    const-string v27, "android.content.pm.introduce_media_processing_type"

    const-string v28, "android.content.pm.lightweight_invisible_label_detection"

    const-string v29, "android.content.pm.min_target_sdk_24"

    const-string v30, "android.content.pm.nullable_data_dir"

    const-string v31, "android.content.pm.optimize_parsing_in_registered_services_cache"

    const-string v32, "android.content.pm.package_restart_query_disabled_by_default"

    const-string v33, "android.content.pm.parallel_package_parsing_across_system_dirs"

    const-string v34, "android.content.pm.provide_info_of_apk_in_apex"

    const-string v35, "android.content.pm.quarantined_enabled"

    const-string v36, "android.content.pm.read_install_info"

    const-string v37, "android.content.pm.recoverability_detection"

    const-string v38, "android.content.pm.reduce_broadcasts_for_component_state_changes"

    const-string v39, "android.content.pm.relative_reference_intent_filters"

    const-string v40, "android.content.pm.remove_cross_user_permission_hack"

    const-string v41, "android.content.pm.remove_hidden_module_usage"

    const-string v42, "android.content.pm.restrict_nonpreloads_system_shareduids"

    const-string v43, "android.content.pm.rollback_lifetime"

    const-string v44, "android.content.pm.sdk_dependency_installer"

    const-string v45, "android.content.pm.sdk_lib_independence"

    const-string v46, "android.content.pm.set_pre_verified_domains"

    const-string v47, "android.content.pm.stay_stopped"

    const-string v48, "android.content.pm.uid_based_provider_lookup"

    const-string v49, "android.content.pm.use_art_service_v2"

    filled-new-array/range {v1 .. v51}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageInfo()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.content.pm.get_package_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPackageInfoWithFd()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.content.pm.get_package_info_with_fd"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPackageStorageStats()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.content.pm.get_package_storage_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getResolvedApkPath()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.content.pm.get_resolved_apk_path"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 390
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveHomeAppBehavior()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.content.pm.improve_home_app_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveInstallDontKill()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.content.pm.improve_install_dont_kill"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveInstallFreeze()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.content.pm.improve_install_freeze"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeFeatureFlagsInPackageCacher()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.content.pm.include_feature_flags_in_package_cacher"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist introduceMediaProcessingType()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.content.pm.introduce_media_processing_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 378
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 379
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lightweightInvisibleLabelDetection()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.content.pm.lightweight_invisible_label_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist minTargetSdk24()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.content.pm.min_target_sdk_24"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nullableDataDir()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.content.pm.nullable_data_dir"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist optimizeParsingInRegisteredServicesCache()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.content.pm.optimize_parsing_in_registered_services_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist packageRestartQueryDisabledByDefault()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.content.pm.package_restart_query_disabled_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist parallelPackageParsingAcrossSystemDirs()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.content.pm.parallel_package_parsing_across_system_dirs"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist provideInfoOfApkInApex()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.content.pm.provide_info_of_apk_in_apex"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist quarantinedEnabled()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.content.pm.quarantined_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist readInstallInfo()Z
    .registers 3

    .line 267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.content.pm.read_install_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recoverabilityDetection()Z
    .registers 3

    .line 274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.content.pm.recoverability_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reduceBroadcastsForComponentStateChanges()Z
    .registers 3

    .line 281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.content.pm.reduce_broadcasts_for_component_state_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relativeReferenceIntentFilters()Z
    .registers 3

    .line 288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.content.pm.relative_reference_intent_filters"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeCrossUserPermissionHack()Z
    .registers 3

    .line 295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.content.pm.remove_cross_user_permission_hack"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeHiddenModuleUsage()Z
    .registers 3

    .line 302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.content.pm.remove_hidden_module_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictNonpreloadsSystemShareduids()Z
    .registers 3

    .line 309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.content.pm.restrict_nonpreloads_system_shareduids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rollbackLifetime()Z
    .registers 3

    .line 316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.content.pm.rollback_lifetime"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkDependencyInstaller()Z
    .registers 3

    .line 323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.content.pm.sdk_dependency_installer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkLibIndependence()Z
    .registers 3

    .line 330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.content.pm.sdk_lib_independence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPreVerifiedDomains()Z
    .registers 3

    .line 337
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.content.pm.set_pre_verified_domains"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stayStopped()Z
    .registers 3

    .line 344
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.content.pm.stay_stopped"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist uidBasedProviderLookup()Z
    .registers 3

    .line 351
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.content.pm.uid_based_provider_lookup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useArtServiceV2()Z
    .registers 3

    .line 358
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.content.pm.use_art_service_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist usePiaV2()Z
    .registers 3

    .line 365
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.content.pm.use_pia_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist waitApplicationKilled()Z
    .registers 3

    .line 372
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.content.pm.wait_application_killed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
