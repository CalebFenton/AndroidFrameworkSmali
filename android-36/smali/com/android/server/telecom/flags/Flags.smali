.class public final Lcom/android/server/telecom/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_CALL_URI_FOR_MISSED_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

.field public static final blacklist FLAG_ALLOW_SYSTEM_APPS_RESOLVE_VOIP_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

.field public static final blacklist FLAG_ASSOCIATED_USER_REFACTOR_FOR_WORK_PROFILE:Ljava/lang/String; = "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

.field public static final blacklist FLAG_AVAILABLE_ROUTES_NEVER_UPDATED_AFTER_SET_SYSTEM_AUDIO_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

.field public static final blacklist FLAG_BUSINESS_CALL_COMPOSER:Ljava/lang/String; = "com.android.server.telecom.flags.business_call_composer"

.field public static final blacklist FLAG_BUS_DEVICE_IS_A_SPEAKER:Ljava/lang/String; = "com.android.server.telecom.flags.bus_device_is_a_speaker"

.field public static final blacklist FLAG_CACHE_CALL_AUDIO_CALLBACKS:Ljava/lang/String; = "com.android.server.telecom.flags.cache_call_audio_callbacks"

.field public static final blacklist FLAG_CACHE_CALL_EVENTS:Ljava/lang/String; = "com.android.server.telecom.flags.cache_call_events"

.field public static final blacklist FLAG_CALL_AUDIO_COMMUNICATION_DEVICE_REFACTOR:Ljava/lang/String; = "com.android.server.telecom.flags.call_audio_communication_device_refactor"

.field public static final blacklist FLAG_CALL_AUDIO_ROUTING_PERFORMANCE_IMPROVEMENENT:Ljava/lang/String; = "com.android.server.telecom.flags.call_audio_routing_performance_improvemenent"

.field public static final blacklist FLAG_CALL_DETAILS_ID_CHANGES:Ljava/lang/String; = "com.android.server.telecom.flags.call_details_id_changes"

.field public static final blacklist FLAG_CALL_SEQUENCING_CALL_RESUME_FAILED:Ljava/lang/String; = "com.android.server.telecom.flags.call_sequencing_call_resume_failed"

.field public static final blacklist FLAG_CANCEL_REMOVAL_ON_EMERGENCY_REDIAL:Ljava/lang/String; = "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

.field public static final blacklist FLAG_CHECK_COMPLETED_FILTERS_ON_TIMEOUT:Ljava/lang/String; = "com.android.server.telecom.flags.check_completed_filters_on_timeout"

.field public static final blacklist FLAG_CHECK_DEVICE_TYPE_ON_ROUTE_CHANGE:Ljava/lang/String; = "com.android.server.telecom.flags.check_device_type_on_route_change"

.field public static final blacklist FLAG_CLEAR_COMMUNICATION_DEVICE_AFTER_AUDIO_OPS_COMPLETE:Ljava/lang/String; = "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

.field public static final blacklist FLAG_COMMUNICATION_DEVICE_PROTECTED_BY_LOCK:Ljava/lang/String; = "com.android.server.telecom.flags.communication_device_protected_by_lock"

.field public static final blacklist FLAG_CSW_SERVICE_INTERFACE_IS_NULL:Ljava/lang/String; = "com.android.server.telecom.flags.csw_service_interface_is_null"

.field public static final blacklist FLAG_DISCONNECT_SELF_MANAGED_STUCK_STARTUP_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.disconnect_self_managed_stuck_startup_calls"

.field public static final blacklist FLAG_DONT_TIMEOUT_DESTROYED_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

.field public static final blacklist FLAG_DONT_USE_COMMUNICATION_DEVICE_TRACKER:Ljava/lang/String; = "com.android.server.telecom.flags.dont_use_communication_device_tracker"

.field public static final blacklist FLAG_DO_NOT_SEND_CALL_TO_NULL_ICS:Ljava/lang/String; = "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

.field public static final blacklist FLAG_EARLY_BINDING_TO_INCALL_SERVICE:Ljava/lang/String; = "com.android.server.telecom.flags.early_binding_to_incall_service"

.field public static final blacklist FLAG_EARLY_UPDATE_INTERNAL_CALL_AUDIO_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.early_update_internal_call_audio_state"

.field public static final blacklist FLAG_ECC_KEYGUARD:Ljava/lang/String; = "com.android.server.telecom.flags.ecc_keyguard"

.field public static final blacklist FLAG_ENABLE_CALL_AUDIO_WATCHDOG:Ljava/lang/String; = "com.android.server.telecom.flags.enable_call_audio_watchdog"

.field public static final blacklist FLAG_ENABLE_CALL_EXCEPTION_ANOM_REPORTS:Ljava/lang/String; = "com.android.server.telecom.flags.enable_call_exception_anom_reports"

.field public static final blacklist FLAG_ENABLE_CALL_SEQUENCING:Ljava/lang/String; = "com.android.server.telecom.flags.enable_call_sequencing"

.field public static final blacklist FLAG_ENABLE_RESPOND_VIA_SMS_MANAGER_ASYNC:Ljava/lang/String; = "com.android.server.telecom.flags.enable_respond_via_sms_manager_async"

.field public static final blacklist FLAG_END_SESSION_IMPROVEMENTS:Ljava/lang/String; = "com.android.server.telecom.flags.end_session_improvements"

.field public static final blacklist FLAG_ENFORCE_TRANSACTIONAL_EXCLUSIVITY:Ljava/lang/String; = "com.android.server.telecom.flags.enforce_transactional_exclusivity"

.field public static final blacklist FLAG_ENSURE_AUDIO_MODE_UPDATES_ON_FOREGROUND_CALL_CHANGE:Ljava/lang/String; = "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

.field public static final blacklist FLAG_ENSURE_IN_CAR_RINGING:Ljava/lang/String; = "com.android.server.telecom.flags.ensure_in_car_ringing"

.field public static final blacklist FLAG_FIX_AUDIO_FLICKER_FOR_OUTGOING_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

.field public static final blacklist FLAG_FIX_USER_REQUEST_BASELINE_ROUTE_VIDEO_CALL:Ljava/lang/String; = "com.android.server.telecom.flags.fix_user_request_baseline_route_video_call"

.field public static final blacklist FLAG_GEN_ANOM_REPORT_ON_FOCUS_TIMEOUT:Ljava/lang/String; = "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

.field public static final blacklist FLAG_GET_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "com.android.server.telecom.flags.get_last_known_cell_identity"

.field public static final blacklist FLAG_GET_REGISTERED_PHONE_ACCOUNTS:Ljava/lang/String; = "com.android.server.telecom.flags.get_registered_phone_accounts"

.field public static final blacklist FLAG_GET_RINGER_MODE_ANOM_REPORT:Ljava/lang/String; = "com.android.server.telecom.flags.get_ringer_mode_anom_report"

.field public static final blacklist FLAG_IGNORE_AUTO_ROUTE_TO_WATCH_DEVICE:Ljava/lang/String; = "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

.field public static final blacklist FLAG_IS_NEW_OUTGOING_CALL_BROADCAST_UNBLOCKING:Ljava/lang/String; = "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

.field public static final blacklist FLAG_KEEP_BLUETOOTH_DEVICES_CACHE_UPDATED:Ljava/lang/String; = "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

.field public static final blacklist FLAG_MAYBE_DEFAULT_SPEAKER_AFTER_UNHOLD:Ljava/lang/String; = "com.android.server.telecom.flags.maybe_default_speaker_after_unhold"

.field public static final blacklist FLAG_NEW_AUDIO_PATH_SPEAKER_BROADCAST_AND_UNFOCUSED_ROUTING:Ljava/lang/String; = "com.android.server.telecom.flags.new_audio_path_speaker_broadcast_and_unfocused_routing"

.field public static final blacklist FLAG_ONLY_CLEAR_COMMUNICATION_DEVICE_ON_INACTIVE:Ljava/lang/String; = "com.android.server.telecom.flags.only_clear_communication_device_on_inactive"

.field public static final blacklist FLAG_ONLY_UPDATE_TELEPHONY_ON_VALID_SUB_IDS:Ljava/lang/String; = "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

.field public static final blacklist FLAG_ON_CALL_ENDPOINT_CHANGED_ICS_ON_CONNECTED:Ljava/lang/String; = "com.android.server.telecom.flags.on_call_endpoint_changed_ics_on_connected"

.field public static final blacklist FLAG_POSTPONE_REGISTER_TO_LEAUDIO:Ljava/lang/String; = "com.android.server.telecom.flags.postpone_register_to_leaudio"

.field public static final blacklist FLAG_PREVENT_REDUNDANT_LOCATION_PERMISSION_GRANT_AND_REVOKE:Ljava/lang/String; = "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

.field public static final blacklist FLAG_PROFILE_USER_SUPPORT:Ljava/lang/String; = "com.android.server.telecom.flags.profile_user_support"

.field public static final blacklist FLAG_REMAP_TRANSACTIONAL_CAPABILITIES:Ljava/lang/String; = "com.android.server.telecom.flags.remap_transactional_capabilities"

.field public static final blacklist FLAG_RESET_MUTE_WHEN_ENTERING_QUIESCENT_BT_ROUTE:Ljava/lang/String; = "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

.field public static final blacklist FLAG_RESOLVE_ACTIVE_BT_ROUTING_AND_BT_TIMING_ISSUE:Ljava/lang/String; = "com.android.server.telecom.flags.resolve_active_bt_routing_and_bt_timing_issue"

.field public static final blacklist FLAG_RESOLVE_SWITCHING_BT_DEVICES_COMPUTATION:Ljava/lang/String; = "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

.field public static final blacklist FLAG_SEPARATELY_BIND_TO_BT_INCALL_SERVICE:Ljava/lang/String; = "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

.field public static final blacklist FLAG_SET_AUDIO_MODE_BEFORE_ABANDON_FOCUS:Ljava/lang/String; = "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

.field public static final blacklist FLAG_SET_MUTE_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.set_mute_state"

.field public static final blacklist FLAG_SET_REMOTE_CONNECTION_CALL_ID:Ljava/lang/String; = "com.android.server.telecom.flags.set_remote_connection_call_id"

.field public static final blacklist FLAG_SKIP_BASELINE_SWITCH_WHEN_ROUTE_NOT_BLUETOOTH:Ljava/lang/String; = "com.android.server.telecom.flags.skip_baseline_switch_when_route_not_bluetooth"

.field public static final blacklist FLAG_SKIP_FILTER_PHONE_ACCOUNT_PERFORM_DND_FILTER:Ljava/lang/String; = "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

.field public static final blacklist FLAG_TELECOM_APP_LABEL_PROXY_HSUM_AWARE:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

.field public static final blacklist FLAG_TELECOM_LOG_EXTERNAL_WEARABLE_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

.field public static final blacklist FLAG_TELECOM_MAINLINE_BLOCKED_NUMBERS_MANAGER:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

.field public static final blacklist FLAG_TELECOM_MAIN_USER_IN_BLOCK_CHECK:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_main_user_in_block_check"

.field public static final blacklist FLAG_TELECOM_MAIN_USER_IN_GET_RESPOND_MESSAGE_APP:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

.field public static final blacklist FLAG_TELECOM_METRICS_SUPPORT:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_metrics_support"

.field public static final blacklist FLAG_TELECOM_RESOLVE_HIDDEN_DEPENDENCIES:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

.field public static final blacklist FLAG_TELECOM_SKIP_LOG_BASED_ON_EXTRA:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

.field public static final blacklist FLAG_TELEPHONY_HAS_DEFAULT_BUT_TELECOM_DOES_NOT:Ljava/lang/String; = "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

.field public static final blacklist FLAG_TRANSACTIONAL_CS_VERIFIER:Ljava/lang/String; = "com.android.server.telecom.flags.transactional_cs_verifier"

.field public static final blacklist FLAG_TRANSACTIONAL_HOLD_DISCONNECTS_UNHOLDABLE:Ljava/lang/String; = "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

.field public static final blacklist FLAG_TRANSACTIONAL_VIDEO_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.transactional_video_state"

.field public static final blacklist FLAG_TRANSIT_ROUTE_BEFORE_AUDIO_DISCONNECT_BT:Ljava/lang/String; = "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

.field public static final blacklist FLAG_UNREGISTER_UNRESOLVABLE_ACCOUNTS:Ljava/lang/String; = "com.android.server.telecom.flags.unregister_unresolvable_accounts"

.field public static final blacklist FLAG_UPDATED_RCS_CALL_COUNT_TRACKING:Ljava/lang/String; = "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

.field public static final blacklist FLAG_UPDATE_PREFERRED_AUDIO_DEVICE_LOGIC:Ljava/lang/String; = "com.android.server.telecom.flags.update_preferred_audio_device_logic"

.field public static final blacklist FLAG_UPDATE_ROUTE_MASK_WHEN_BT_CONNECTED:Ljava/lang/String; = "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

.field public static final blacklist FLAG_USE_ACTUAL_ADDRESS_TO_ENTER_CONNECTING_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

.field public static final blacklist FLAG_USE_DEVICE_PROVIDED_SERIALIZED_RINGER_VIBRATION:Ljava/lang/String; = "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

.field public static final blacklist FLAG_USE_IMPROVED_LISTENER_ORDER:Ljava/lang/String; = "com.android.server.telecom.flags.use_improved_listener_order"

.field public static final blacklist FLAG_USE_REFACTORED_AUDIO_ROUTE_SWITCHING:Ljava/lang/String; = "com.android.server.telecom.flags.use_refactored_audio_route_switching"

.field public static final blacklist FLAG_USE_STREAM_VOICE_CALL_TONES:Ljava/lang/String; = "com.android.server.telecom.flags.use_stream_voice_call_tones"

.field public static final blacklist FLAG_VOIP_APP_ACTIONS_SUPPORT:Ljava/lang/String; = "com.android.server.telecom.flags.voip_app_actions_support"

.field public static final blacklist FLAG_VOIP_CALL_MONITOR_REFACTOR:Ljava/lang/String; = "com.android.server.telecom.flags.voip_call_monitor_refactor"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 764
    new-instance v0, Lcom/android/server/telecom/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addCallUriForMissedCalls()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->addCallUriForMissedCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist allowSystemAppsResolveVoipCalls()Z
    .registers 1

    .line 187
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->allowSystemAppsResolveVoipCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist associatedUserRefactorForWorkProfile()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->associatedUserRefactorForWorkProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .registers 1

    .line 201
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->availableRoutesNeverUpdatedAfterSetSystemAudioState()Z

    move-result v0

    return v0
.end method

.method public static greylist busDeviceIsASpeaker()Z
    .registers 1

    .line 208
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->busDeviceIsASpeaker()Z

    move-result v0

    return v0
.end method

.method public static greylist businessCallComposer()Z
    .registers 1

    .line 215
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->businessCallComposer()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheCallAudioCallbacks()Z
    .registers 1

    .line 222
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->cacheCallAudioCallbacks()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheCallEvents()Z
    .registers 1

    .line 229
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->cacheCallEvents()Z

    move-result v0

    return v0
.end method

.method public static greylist callAudioCommunicationDeviceRefactor()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->callAudioCommunicationDeviceRefactor()Z

    move-result v0

    return v0
.end method

.method public static greylist callAudioRoutingPerformanceImprovemenent()Z
    .registers 1

    .line 243
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->callAudioRoutingPerformanceImprovemenent()Z

    move-result v0

    return v0
.end method

.method public static greylist callDetailsIdChanges()Z
    .registers 1

    .line 250
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->callDetailsIdChanges()Z

    move-result v0

    return v0
.end method

.method public static greylist callSequencingCallResumeFailed()Z
    .registers 1

    .line 257
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->callSequencingCallResumeFailed()Z

    move-result v0

    return v0
.end method

.method public static greylist cancelRemovalOnEmergencyRedial()Z
    .registers 1

    .line 264
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->cancelRemovalOnEmergencyRedial()Z

    move-result v0

    return v0
.end method

.method public static greylist checkCompletedFiltersOnTimeout()Z
    .registers 1

    .line 271
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->checkCompletedFiltersOnTimeout()Z

    move-result v0

    return v0
.end method

.method public static greylist checkDeviceTypeOnRouteChange()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->checkDeviceTypeOnRouteChange()Z

    move-result v0

    return v0
.end method

.method public static greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .registers 1

    .line 285
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->clearCommunicationDeviceAfterAudioOpsComplete()Z

    move-result v0

    return v0
.end method

.method public static greylist communicationDeviceProtectedByLock()Z
    .registers 1

    .line 292
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->communicationDeviceProtectedByLock()Z

    move-result v0

    return v0
.end method

.method public static greylist cswServiceInterfaceIsNull()Z
    .registers 1

    .line 299
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->cswServiceInterfaceIsNull()Z

    move-result v0

    return v0
.end method

.method public static greylist disconnectSelfManagedStuckStartupCalls()Z
    .registers 1

    .line 306
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->disconnectSelfManagedStuckStartupCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist doNotSendCallToNullIcs()Z
    .registers 1

    .line 313
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->doNotSendCallToNullIcs()Z

    move-result v0

    return v0
.end method

.method public static greylist dontTimeoutDestroyedCalls()Z
    .registers 1

    .line 320
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->dontTimeoutDestroyedCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist dontUseCommunicationDeviceTracker()Z
    .registers 1

    .line 327
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->dontUseCommunicationDeviceTracker()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyBindingToIncallService()Z
    .registers 1

    .line 334
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->earlyBindingToIncallService()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyUpdateInternalCallAudioState()Z
    .registers 1

    .line 341
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->earlyUpdateInternalCallAudioState()Z

    move-result v0

    return v0
.end method

.method public static greylist eccKeyguard()Z
    .registers 1

    .line 348
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->eccKeyguard()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCallAudioWatchdog()Z
    .registers 1

    .line 355
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->enableCallAudioWatchdog()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCallExceptionAnomReports()Z
    .registers 1

    .line 362
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->enableCallExceptionAnomReports()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCallSequencing()Z
    .registers 1

    .line 369
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->enableCallSequencing()Z

    move-result v0

    return v0
.end method

.method public static greylist enableRespondViaSmsManagerAsync()Z
    .registers 1

    .line 376
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->enableRespondViaSmsManagerAsync()Z

    move-result v0

    return v0
.end method

.method public static greylist endSessionImprovements()Z
    .registers 1

    .line 383
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->endSessionImprovements()Z

    move-result v0

    return v0
.end method

.method public static greylist enforceTransactionalExclusivity()Z
    .registers 1

    .line 390
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->enforceTransactionalExclusivity()Z

    move-result v0

    return v0
.end method

.method public static greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .registers 1

    .line 397
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->ensureAudioModeUpdatesOnForegroundCallChange()Z

    move-result v0

    return v0
.end method

.method public static greylist ensureInCarRinging()Z
    .registers 1

    .line 404
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->ensureInCarRinging()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAudioFlickerForOutgoingCalls()Z
    .registers 1

    .line 411
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->fixAudioFlickerForOutgoingCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist fixUserRequestBaselineRouteVideoCall()Z
    .registers 1

    .line 418
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->fixUserRequestBaselineRouteVideoCall()Z

    move-result v0

    return v0
.end method

.method public static greylist genAnomReportOnFocusTimeout()Z
    .registers 1

    .line 425
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->genAnomReportOnFocusTimeout()Z

    move-result v0

    return v0
.end method

.method public static greylist getLastKnownCellIdentity()Z
    .registers 1

    .line 432
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->getLastKnownCellIdentity()Z

    move-result v0

    return v0
.end method

.method public static greylist getRegisteredPhoneAccounts()Z
    .registers 1

    .line 439
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->getRegisteredPhoneAccounts()Z

    move-result v0

    return v0
.end method

.method public static greylist getRingerModeAnomReport()Z
    .registers 1

    .line 446
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->getRingerModeAnomReport()Z

    move-result v0

    return v0
.end method

.method public static greylist ignoreAutoRouteToWatchDevice()Z
    .registers 1

    .line 453
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->ignoreAutoRouteToWatchDevice()Z

    move-result v0

    return v0
.end method

.method public static greylist isNewOutgoingCallBroadcastUnblocking()Z
    .registers 1

    .line 460
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->isNewOutgoingCallBroadcastUnblocking()Z

    move-result v0

    return v0
.end method

.method public static greylist keepBluetoothDevicesCacheUpdated()Z
    .registers 1

    .line 467
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->keepBluetoothDevicesCacheUpdated()Z

    move-result v0

    return v0
.end method

.method public static greylist maybeDefaultSpeakerAfterUnhold()Z
    .registers 1

    .line 474
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->maybeDefaultSpeakerAfterUnhold()Z

    move-result v0

    return v0
.end method

.method public static greylist newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z
    .registers 1

    .line 481
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z

    move-result v0

    return v0
.end method

.method public static greylist onCallEndpointChangedIcsOnConnected()Z
    .registers 1

    .line 488
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->onCallEndpointChangedIcsOnConnected()Z

    move-result v0

    return v0
.end method

.method public static greylist onlyClearCommunicationDeviceOnInactive()Z
    .registers 1

    .line 495
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->onlyClearCommunicationDeviceOnInactive()Z

    move-result v0

    return v0
.end method

.method public static greylist onlyUpdateTelephonyOnValidSubIds()Z
    .registers 1

    .line 502
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->onlyUpdateTelephonyOnValidSubIds()Z

    move-result v0

    return v0
.end method

.method public static greylist postponeRegisterToLeaudio()Z
    .registers 1

    .line 509
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->postponeRegisterToLeaudio()Z

    move-result v0

    return v0
.end method

.method public static greylist preventRedundantLocationPermissionGrantAndRevoke()Z
    .registers 1

    .line 516
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->preventRedundantLocationPermissionGrantAndRevoke()Z

    move-result v0

    return v0
.end method

.method public static greylist profileUserSupport()Z
    .registers 1

    .line 523
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->profileUserSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist remapTransactionalCapabilities()Z
    .registers 1

    .line 530
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->remapTransactionalCapabilities()Z

    move-result v0

    return v0
.end method

.method public static greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .registers 1

    .line 537
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->resetMuteWhenEnteringQuiescentBtRoute()Z

    move-result v0

    return v0
.end method

.method public static greylist resolveActiveBtRoutingAndBtTimingIssue()Z
    .registers 1

    .line 544
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->resolveActiveBtRoutingAndBtTimingIssue()Z

    move-result v0

    return v0
.end method

.method public static greylist resolveSwitchingBtDevicesComputation()Z
    .registers 1

    .line 551
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->resolveSwitchingBtDevicesComputation()Z

    move-result v0

    return v0
.end method

.method public static greylist separatelyBindToBtIncallService()Z
    .registers 1

    .line 558
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->separatelyBindToBtIncallService()Z

    move-result v0

    return v0
.end method

.method public static greylist setAudioModeBeforeAbandonFocus()Z
    .registers 1

    .line 565
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setAudioModeBeforeAbandonFocus()Z

    move-result v0

    return v0
.end method

.method public static greylist setMuteState()Z
    .registers 1

    .line 572
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setMuteState()Z

    move-result v0

    return v0
.end method

.method public static greylist setRemoteConnectionCallId()Z
    .registers 1

    .line 579
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setRemoteConnectionCallId()Z

    move-result v0

    return v0
.end method

.method public static greylist skipBaselineSwitchWhenRouteNotBluetooth()Z
    .registers 1

    .line 586
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->skipBaselineSwitchWhenRouteNotBluetooth()Z

    move-result v0

    return v0
.end method

.method public static greylist skipFilterPhoneAccountPerformDndFilter()Z
    .registers 1

    .line 593
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->skipFilterPhoneAccountPerformDndFilter()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomAppLabelProxyHsumAware()Z
    .registers 1

    .line 600
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomAppLabelProxyHsumAware()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomLogExternalWearableCalls()Z
    .registers 1

    .line 607
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomLogExternalWearableCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomMainUserInBlockCheck()Z
    .registers 1

    .line 614
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomMainUserInBlockCheck()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomMainUserInGetRespondMessageApp()Z
    .registers 1

    .line 621
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomMainUserInGetRespondMessageApp()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomMainlineBlockedNumbersManager()Z
    .registers 1

    .line 628
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomMainlineBlockedNumbersManager()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomMetricsSupport()Z
    .registers 1

    .line 635
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomMetricsSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomResolveHiddenDependencies()Z
    .registers 1

    .line 642
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomResolveHiddenDependencies()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomSkipLogBasedOnExtra()Z
    .registers 1

    .line 649
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomSkipLogBasedOnExtra()Z

    move-result v0

    return v0
.end method

.method public static greylist telephonyHasDefaultButTelecomDoesNot()Z
    .registers 1

    .line 656
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telephonyHasDefaultButTelecomDoesNot()Z

    move-result v0

    return v0
.end method

.method public static greylist transactionalCsVerifier()Z
    .registers 1

    .line 663
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transactionalCsVerifier()Z

    move-result v0

    return v0
.end method

.method public static greylist transactionalHoldDisconnectsUnholdable()Z
    .registers 1

    .line 670
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transactionalHoldDisconnectsUnholdable()Z

    move-result v0

    return v0
.end method

.method public static greylist transactionalVideoState()Z
    .registers 1

    .line 677
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transactionalVideoState()Z

    move-result v0

    return v0
.end method

.method public static greylist transitRouteBeforeAudioDisconnectBt()Z
    .registers 1

    .line 684
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transitRouteBeforeAudioDisconnectBt()Z

    move-result v0

    return v0
.end method

.method public static greylist unregisterUnresolvableAccounts()Z
    .registers 1

    .line 691
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->unregisterUnresolvableAccounts()Z

    move-result v0

    return v0
.end method

.method public static greylist updatePreferredAudioDeviceLogic()Z
    .registers 1

    .line 698
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->updatePreferredAudioDeviceLogic()Z

    move-result v0

    return v0
.end method

.method public static greylist updateRouteMaskWhenBtConnected()Z
    .registers 1

    .line 705
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->updateRouteMaskWhenBtConnected()Z

    move-result v0

    return v0
.end method

.method public static greylist updatedRcsCallCountTracking()Z
    .registers 1

    .line 712
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->updatedRcsCallCountTracking()Z

    move-result v0

    return v0
.end method

.method public static greylist useActualAddressToEnterConnectingState()Z
    .registers 1

    .line 719
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useActualAddressToEnterConnectingState()Z

    move-result v0

    return v0
.end method

.method public static greylist useDeviceProvidedSerializedRingerVibration()Z
    .registers 1

    .line 726
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useDeviceProvidedSerializedRingerVibration()Z

    move-result v0

    return v0
.end method

.method public static greylist useImprovedListenerOrder()Z
    .registers 1

    .line 733
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useImprovedListenerOrder()Z

    move-result v0

    return v0
.end method

.method public static greylist useRefactoredAudioRouteSwitching()Z
    .registers 1

    .line 740
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useRefactoredAudioRouteSwitching()Z

    move-result v0

    return v0
.end method

.method public static greylist useStreamVoiceCallTones()Z
    .registers 1

    .line 747
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useStreamVoiceCallTones()Z

    move-result v0

    return v0
.end method

.method public static greylist voipAppActionsSupport()Z
    .registers 1

    .line 754
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->voipAppActionsSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist voipCallMonitorRefactor()Z
    .registers 1

    .line 761
    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->voipCallMonitorRefactor()Z

    move-result v0

    return v0
.end method
