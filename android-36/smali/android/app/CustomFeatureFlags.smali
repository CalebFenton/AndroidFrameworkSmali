.class public Landroid/app/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
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
    .registers 98
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/app/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 785
    new-instance v1, Ljava/util/HashSet;

    const-string v94, "android.app.use_sticky_bcast_cache"

    const-string v95, ""

    const-string v2, "android.app.accurate_wallpaper_downsampling"

    const-string v3, "android.app.api_rich_ongoing"

    const-string v4, "android.app.api_tvextender"

    const-string v5, "android.app.app_restrictions_api"

    const-string v6, "android.app.app_start_info"

    const-string v7, "android.app.app_start_info_cleanup_old_records"

    const-string v8, "android.app.app_start_info_component"

    const-string v9, "android.app.app_start_info_keep_records_sorted"

    const-string v10, "android.app.app_start_info_timestamps"

    const-string v11, "android.app.background_install_control_callback_api"

    const-string v12, "android.app.backup_restore_logging"

    const-string v13, "android.app.bic_client"

    const-string v14, "android.app.cache_get_current_user_id"

    const-string v15, "android.app.category_voicemail"

    const-string v16, "android.app.check_autogroup_before_post"

    const-string v17, "android.app.clean_up_spans_and_new_lines"

    const-string v18, "android.app.clear_dns_cache_on_network_rules_update"

    const-string v19, "android.app.compact_heads_up_notification"

    const-string v20, "android.app.compact_heads_up_notification_reply"

    const-string v21, "android.app.device_unlock_listener"

    const-string v22, "android.app.enable_connected_displays_wallpaper"

    const-string v23, "android.app.enable_current_mode_type_binder_cache"

    const-string v24, "android.app.enable_fgs_timeout_crash_behavior"

    const-string v25, "android.app.enable_night_mode_binder_cache"

    const-string v26, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v27, "android.app.enable_process_observer_broadcast_on_process_started"

    const-string v28, "android.app.enable_tv_implicit_enter_pip_restriction"

    const-string v29, "android.app.enforce_pic_testmode_protocol"

    const-string v30, "android.app.evenly_divided_call_style_action_layout"

    const-string v31, "android.app.expanding_public_view"

    const-string v32, "android.app.fix_wallpaper_changed"

    const-string v33, "android.app.get_binding_uid_importance"

    const-string v34, "android.app.introduce_new_service_ontimeout_callback"

    const-string v35, "android.app.jank_perceptible_narrow"

    const-string v36, "android.app.jank_perceptible_narrow_holdback"

    const-string v37, "android.app.keyguard_private_notifications"

    const-string v38, "android.app.lifetime_extension_refactor"

    const-string v39, "android.app.live_wallpaper_content_handling"

    const-string v40, "android.app.modes_api"

    const-string v41, "android.app.modes_cleanup_implicit"

    const-string v42, "android.app.modes_hsum"

    const-string v43, "android.app.modes_multiuser"

    const-string v44, "android.app.modes_ui"

    const-string v45, "android.app.modes_ui_dnd_tile"

    const-string v46, "android.app.modes_ui_empty_shade"

    const-string v47, "android.app.modes_ui_icons"

    const-string v48, "android.app.nm_binder_perf_cache_channels"

    const-string v49, "android.app.nm_binder_perf_get_apps_with_channels"

    const-string v50, "android.app.nm_binder_perf_log_nm_throttling"

    const-string v51, "android.app.nm_binder_perf_permission_check"

    const-string v52, "android.app.nm_binder_perf_throttle_notify"

    const-string v53, "android.app.nm_collapsed_lines"

    const-string v54, "android.app.nm_summarization"

    const-string v55, "android.app.nm_summarization_ui"

    const-string v56, "android.app.no_sbnholder"

    const-string v57, "android.app.notif_channel_crop_vibration_effects"

    const-string v58, "android.app.notif_channel_estimate_effect_size"

    const-string v59, "android.app.notif_entry_creation_time_use_elapsed_realtime"

    const-string v60, "android.app.notification_channel_vibration_effect_api"

    const-string v61, "android.app.notification_classification_ui"

    const-string v62, "android.app.notification_expansion_optional"

    const-string v63, "android.app.notification_no_custom_view_conversations"

    const-string v64, "android.app.notifications_redesign_app_icons"

    const-string v65, "android.app.notifications_redesign_templates"

    const-string v66, "android.app.notifications_redesign_themed_app_icons"

    const-string v67, "android.app.notify_keyguard_events"

    const-string v68, "android.app.pic_cache_nulls"

    const-string v69, "android.app.pic_isolate_cache_by_uid"

    const-string v70, "android.app.pic_isolated_cache_statistics"

    const-string v71, "android.app.pic_separate_permission_notifications"

    const-string v72, "android.app.pic_test_mode"

    const-string v73, "android.app.pic_uses_shared_memory"

    const-string v74, "android.app.pinner_service_client_api"

    const-string v75, "android.app.rate_limit_get_memory_info"

    const-string v76, "android.app.rate_limit_get_my_memory_state"

    const-string v77, "android.app.rate_limit_get_processes_in_error_state"

    const-string v78, "android.app.rate_limit_get_running_app_processes"

    const-string v79, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    const-string v80, "android.app.redaction_on_lockscreen_metrics"

    const-string v81, "android.app.remove_next_wallpaper_component"

    const-string v82, "android.app.remove_remote_views"

    const-string v83, "android.app.report_postgc_memory_metrics"

    const-string v84, "android.app.restrict_audio_attributes_alarm"

    const-string v85, "android.app.restrict_audio_attributes_call"

    const-string v86, "android.app.restrict_audio_attributes_media"

    const-string v87, "android.app.secure_allowlist_token"

    const-string v88, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v89, "android.app.sort_section_by_time"

    const-string v90, "android.app.system_terms_of_address_enabled"

    const-string v91, "android.app.ui_rich_ongoing"

    const-string v92, "android.app.uid_importance_listener_for_uids"

    const-string v93, "android.app.use_app_info_not_launched"

    filled-new-array/range {v2 .. v95}, [Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 680
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist accurateWallpaperDownsampling()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.accurate_wallpaper_downsampling"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist apiRichOngoing()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.api_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist apiTvextender()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.api_tvextender"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appRestrictionsApi()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "android.app.app_restrictions_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfo()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "android.app.app_start_info"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfoCleanupOldRecords()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "android.app.app_start_info_cleanup_old_records"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfoComponent()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.app_start_info_component"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfoKeepRecordsSorted()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.app.app_start_info_keep_records_sorted"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfoTimestamps()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.app_start_info_timestamps"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist backgroundInstallControlCallbackApi()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.app.background_install_control_callback_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist backupRestoreLogging()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.backup_restore_logging"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bicClient()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "android.app.bic_client"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cacheGetCurrentUserId()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.cache_get_current_user_id"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist categoryVoicemail()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.category_voicemail"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist checkAutogroupBeforePost()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.app.check_autogroup_before_post"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cleanUpSpansAndNewLines()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.app.clean_up_spans_and_new_lines"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clearDnsCacheOnNetworkRulesUpdate()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.clear_dns_cache_on_network_rules_update"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist compactHeadsUpNotification()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist compactHeadsUpNotificationReply()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification_reply"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deviceUnlockListener()Z
    .registers 3

    .line 155
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.device_unlock_listener"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableConnectedDisplaysWallpaper()Z
    .registers 3

    .line 162
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "android.app.enable_connected_displays_wallpaper"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCurrentModeTypeBinderCache()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.enable_current_mode_type_binder_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFgsTimeoutCrashBehavior()Z
    .registers 3

    .line 176
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.app.enable_fgs_timeout_crash_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNightModeBinderCache()Z
    .registers 3

    .line 183
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.enable_night_mode_binder_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePipUiStateCallbackOnEntering()Z
    .registers 3

    .line 190
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.enable_pip_ui_state_callback_on_entering"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableProcessObserverBroadcastOnProcessStarted()Z
    .registers 3

    .line 197
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.app.enable_process_observer_broadcast_on_process_started"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTvImplicitEnterPipRestriction()Z
    .registers 3

    .line 204
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.app.enable_tv_implicit_enter_pip_restriction"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforcePicTestmodeProtocol()Z
    .registers 3

    .line 211
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.enforce_pic_testmode_protocol"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist evenlyDividedCallStyleActionLayout()Z
    .registers 3

    .line 218
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.evenly_divided_call_style_action_layout"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist expandingPublicView()Z
    .registers 3

    .line 225
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.app.expanding_public_view"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixWallpaperChanged()Z
    .registers 3

    .line 232
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "android.app.fix_wallpaper_changed"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getBindingUidImportance()Z
    .registers 3

    .line 239
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.app.get_binding_uid_importance"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 95
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 688
    const-string v92, "android.app.use_app_info_not_launched"

    const-string v93, "android.app.use_sticky_bcast_cache"

    const-string v1, "android.app.accurate_wallpaper_downsampling"

    const-string v2, "android.app.api_rich_ongoing"

    const-string v3, "android.app.api_tvextender"

    const-string v4, "android.app.app_restrictions_api"

    const-string v5, "android.app.app_start_info"

    const-string v6, "android.app.app_start_info_cleanup_old_records"

    const-string v7, "android.app.app_start_info_component"

    const-string v8, "android.app.app_start_info_keep_records_sorted"

    const-string v9, "android.app.app_start_info_timestamps"

    const-string v10, "android.app.background_install_control_callback_api"

    const-string v11, "android.app.backup_restore_logging"

    const-string v12, "android.app.bic_client"

    const-string v13, "android.app.cache_get_current_user_id"

    const-string v14, "android.app.category_voicemail"

    const-string v15, "android.app.check_autogroup_before_post"

    const-string v16, "android.app.clean_up_spans_and_new_lines"

    const-string v17, "android.app.clear_dns_cache_on_network_rules_update"

    const-string v18, "android.app.compact_heads_up_notification"

    const-string v19, "android.app.compact_heads_up_notification_reply"

    const-string v20, "android.app.device_unlock_listener"

    const-string v21, "android.app.enable_connected_displays_wallpaper"

    const-string v22, "android.app.enable_current_mode_type_binder_cache"

    const-string v23, "android.app.enable_fgs_timeout_crash_behavior"

    const-string v24, "android.app.enable_night_mode_binder_cache"

    const-string v25, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v26, "android.app.enable_process_observer_broadcast_on_process_started"

    const-string v27, "android.app.enable_tv_implicit_enter_pip_restriction"

    const-string v28, "android.app.enforce_pic_testmode_protocol"

    const-string v29, "android.app.evenly_divided_call_style_action_layout"

    const-string v30, "android.app.expanding_public_view"

    const-string v31, "android.app.fix_wallpaper_changed"

    const-string v32, "android.app.get_binding_uid_importance"

    const-string v33, "android.app.introduce_new_service_ontimeout_callback"

    const-string v34, "android.app.jank_perceptible_narrow"

    const-string v35, "android.app.jank_perceptible_narrow_holdback"

    const-string v36, "android.app.keyguard_private_notifications"

    const-string v37, "android.app.lifetime_extension_refactor"

    const-string v38, "android.app.live_wallpaper_content_handling"

    const-string v39, "android.app.modes_api"

    const-string v40, "android.app.modes_cleanup_implicit"

    const-string v41, "android.app.modes_hsum"

    const-string v42, "android.app.modes_multiuser"

    const-string v43, "android.app.modes_ui"

    const-string v44, "android.app.modes_ui_dnd_tile"

    const-string v45, "android.app.modes_ui_empty_shade"

    const-string v46, "android.app.modes_ui_icons"

    const-string v47, "android.app.nm_binder_perf_cache_channels"

    const-string v48, "android.app.nm_binder_perf_get_apps_with_channels"

    const-string v49, "android.app.nm_binder_perf_log_nm_throttling"

    const-string v50, "android.app.nm_binder_perf_permission_check"

    const-string v51, "android.app.nm_binder_perf_throttle_notify"

    const-string v52, "android.app.nm_collapsed_lines"

    const-string v53, "android.app.nm_summarization"

    const-string v54, "android.app.nm_summarization_ui"

    const-string v55, "android.app.no_sbnholder"

    const-string v56, "android.app.notif_channel_crop_vibration_effects"

    const-string v57, "android.app.notif_channel_estimate_effect_size"

    const-string v58, "android.app.notif_entry_creation_time_use_elapsed_realtime"

    const-string v59, "android.app.notification_channel_vibration_effect_api"

    const-string v60, "android.app.notification_classification_ui"

    const-string v61, "android.app.notification_expansion_optional"

    const-string v62, "android.app.notification_no_custom_view_conversations"

    const-string v63, "android.app.notifications_redesign_app_icons"

    const-string v64, "android.app.notifications_redesign_templates"

    const-string v65, "android.app.notifications_redesign_themed_app_icons"

    const-string v66, "android.app.notify_keyguard_events"

    const-string v67, "android.app.pic_cache_nulls"

    const-string v68, "android.app.pic_isolate_cache_by_uid"

    const-string v69, "android.app.pic_isolated_cache_statistics"

    const-string v70, "android.app.pic_separate_permission_notifications"

    const-string v71, "android.app.pic_test_mode"

    const-string v72, "android.app.pic_uses_shared_memory"

    const-string v73, "android.app.pinner_service_client_api"

    const-string v74, "android.app.rate_limit_get_memory_info"

    const-string v75, "android.app.rate_limit_get_my_memory_state"

    const-string v76, "android.app.rate_limit_get_processes_in_error_state"

    const-string v77, "android.app.rate_limit_get_running_app_processes"

    const-string v78, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    const-string v79, "android.app.redaction_on_lockscreen_metrics"

    const-string v80, "android.app.remove_next_wallpaper_component"

    const-string v81, "android.app.remove_remote_views"

    const-string v82, "android.app.report_postgc_memory_metrics"

    const-string v83, "android.app.restrict_audio_attributes_alarm"

    const-string v84, "android.app.restrict_audio_attributes_call"

    const-string v85, "android.app.restrict_audio_attributes_media"

    const-string v86, "android.app.secure_allowlist_token"

    const-string v87, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v88, "android.app.sort_section_by_time"

    const-string v89, "android.app.system_terms_of_address_enabled"

    const-string v90, "android.app.ui_rich_ongoing"

    const-string v91, "android.app.uid_importance_listener_for_uids"

    filled-new-array/range {v1 .. v93}, [Ljava/lang/String;

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
            "Landroid/app/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 684
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/app/FeatureFlags;>;"
    iget-object v0, p0, Landroid/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist introduceNewServiceOntimeoutCallback()Z
    .registers 3

    .line 246
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.introduce_new_service_ontimeout_callback"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 671
    iget-object v0, p0, Landroid/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 672
    invoke-direct {p0}, Landroid/app/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 673
    const/4 v0, 0x1

    return v0

    .line 675
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist jankPerceptibleNarrow()Z
    .registers 3

    .line 253
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.app.jank_perceptible_narrow"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist jankPerceptibleNarrowHoldback()Z
    .registers 3

    .line 260
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "android.app.jank_perceptible_narrow_holdback"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist keyguardPrivateNotifications()Z
    .registers 3

    .line 267
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.keyguard_private_notifications"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist lifetimeExtensionRefactor()Z
    .registers 3

    .line 274
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "android.app.lifetime_extension_refactor"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist liveWallpaperContentHandling()Z
    .registers 3

    .line 281
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "android.app.live_wallpaper_content_handling"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesApi()Z
    .registers 3

    .line 288
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.modes_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesCleanupImplicit()Z
    .registers 3

    .line 295
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "android.app.modes_cleanup_implicit"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesHsum()Z
    .registers 3

    .line 302
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.modes_hsum"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesMultiuser()Z
    .registers 3

    .line 309
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.modes_multiuser"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesUi()Z
    .registers 3

    .line 316
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "android.app.modes_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesUiDndTile()Z
    .registers 3

    .line 323
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.modes_ui_dnd_tile"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesUiEmptyShade()Z
    .registers 3

    .line 330
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.app.modes_ui_empty_shade"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesUiIcons()Z
    .registers 3

    .line 337
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "android.app.modes_ui_icons"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmBinderPerfCacheChannels()Z
    .registers 3

    .line 344
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.nm_binder_perf_cache_channels"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmBinderPerfGetAppsWithChannels()Z
    .registers 3

    .line 351
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "android.app.nm_binder_perf_get_apps_with_channels"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmBinderPerfLogNmThrottling()Z
    .registers 3

    .line 358
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "android.app.nm_binder_perf_log_nm_throttling"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmBinderPerfPermissionCheck()Z
    .registers 3

    .line 365
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "android.app.nm_binder_perf_permission_check"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmBinderPerfThrottleNotify()Z
    .registers 3

    .line 372
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "android.app.nm_binder_perf_throttle_notify"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmCollapsedLines()Z
    .registers 3

    .line 379
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.nm_collapsed_lines"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmSummarization()Z
    .registers 3

    .line 386
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "android.app.nm_summarization"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nmSummarizationUi()Z
    .registers 3

    .line 393
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.app.nm_summarization_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist noSbnholder()Z
    .registers 3

    .line 400
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "android.app.no_sbnholder"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifChannelCropVibrationEffects()Z
    .registers 3

    .line 407
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.app.notif_channel_crop_vibration_effects"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifChannelEstimateEffectSize()Z
    .registers 3

    .line 414
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.notif_channel_estimate_effect_size"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifEntryCreationTimeUseElapsedRealtime()Z
    .registers 3

    .line 421
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "android.app.notif_entry_creation_time_use_elapsed_realtime"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationChannelVibrationEffectApi()Z
    .registers 3

    .line 428
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "android.app.notification_channel_vibration_effect_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationClassificationUi()Z
    .registers 3

    .line 435
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.notification_classification_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationExpansionOptional()Z
    .registers 3

    .line 442
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.notification_expansion_optional"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationNoCustomViewConversations()Z
    .registers 3

    .line 449
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.app.notification_no_custom_view_conversations"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationsRedesignAppIcons()Z
    .registers 3

    .line 456
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "android.app.notifications_redesign_app_icons"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationsRedesignTemplates()Z
    .registers 3

    .line 463
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.app.notifications_redesign_templates"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationsRedesignThemedAppIcons()Z
    .registers 3

    .line 470
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.notifications_redesign_themed_app_icons"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifyKeyguardEvents()Z
    .registers 3

    .line 477
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "android.app.notify_keyguard_events"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist picCacheNulls()Z
    .registers 3

    .line 484
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.app.pic_cache_nulls"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist picIsolateCacheByUid()Z
    .registers 3

    .line 491
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.app.pic_isolate_cache_by_uid"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist picIsolatedCacheStatistics()Z
    .registers 3

    .line 498
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.pic_isolated_cache_statistics"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist picSeparatePermissionNotifications()Z
    .registers 3

    .line 505
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.pic_separate_permission_notifications"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist picTestMode()Z
    .registers 3

    .line 512
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.app.pic_test_mode"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist picUsesSharedMemory()Z
    .registers 3

    .line 519
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.pic_uses_shared_memory"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pinnerServiceClientApi()Z
    .registers 3

    .line 526
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.pinner_service_client_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rateLimitGetMemoryInfo()Z
    .registers 3

    .line 533
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.rate_limit_get_memory_info"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rateLimitGetMyMemoryState()Z
    .registers 3

    .line 540
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.rate_limit_get_my_memory_state"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rateLimitGetProcessesInErrorState()Z
    .registers 3

    .line 547
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "android.app.rate_limit_get_processes_in_error_state"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rateLimitGetRunningAppProcesses()Z
    .registers 3

    .line 554
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "android.app.rate_limit_get_running_app_processes"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist redactSensitiveContentNotificationsOnLockscreen()Z
    .registers 3

    .line 561
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist redactionOnLockscreenMetrics()Z
    .registers 3

    .line 568
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.redaction_on_lockscreen_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeNextWallpaperComponent()Z
    .registers 3

    .line 575
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.remove_next_wallpaper_component"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeRemoteViews()Z
    .registers 3

    .line 582
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.app.remove_remote_views"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reportPostgcMemoryMetrics()Z
    .registers 3

    .line 589
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "android.app.report_postgc_memory_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictAudioAttributesAlarm()Z
    .registers 3

    .line 596
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_alarm"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictAudioAttributesCall()Z
    .registers 3

    .line 603
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_call"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictAudioAttributesMedia()Z
    .registers 3

    .line 610
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_media"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist secureAllowlistToken()Z
    .registers 3

    .line 617
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.secure_allowlist_token"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipBgMemTrimOnFgApp()Z
    .registers 3

    .line 624
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.skip_bg_mem_trim_on_fg_app"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sortSectionByTime()Z
    .registers 3

    .line 631
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.sort_section_by_time"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist systemTermsOfAddressEnabled()Z
    .registers 3

    .line 638
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "android.app.system_terms_of_address_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist uiRichOngoing()Z
    .registers 3

    .line 645
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.ui_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist uidImportanceListenerForUids()Z
    .registers 3

    .line 652
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.uid_importance_listener_for_uids"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useAppInfoNotLaunched()Z
    .registers 3

    .line 659
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "android.app.use_app_info_not_launched"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useStickyBcastCache()Z
    .registers 3

    .line 666
    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "android.app.use_sticky_bcast_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
