.class public final Landroid/multiuser/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/multiuser/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_LAUNCHER_USER_CONFIG:Ljava/lang/String; = "android.multiuser.add_launcher_user_config"

.field public static final blacklist FLAG_ADD_UI_FOR_SOUNDS_FROM_BACKGROUND_USERS:Ljava/lang/String; = "android.multiuser.add_ui_for_sounds_from_background_users"

.field public static final blacklist FLAG_ALLOW_MAIN_USER_TO_ACCESS_BLOCKED_NUMBER_PROVIDER:Ljava/lang/String; = "android.multiuser.allow_main_user_to_access_blocked_number_provider"

.field public static final blacklist FLAG_ALLOW_RESOLVER_SHEET_FOR_PRIVATE_SPACE:Ljava/lang/String; = "android.multiuser.allow_resolver_sheet_for_private_space"

.field public static final blacklist FLAG_ALLOW_SUPERVISING_PROFILE:Ljava/lang/String; = "android.multiuser.allow_supervising_profile"

.field public static final blacklist FLAG_AVATAR_SYNC:Ljava/lang/String; = "android.multiuser.avatar_sync"

.field public static final blacklist FLAG_BIND_WALLPAPER_SERVICE_ON_ITS_OWN_THREAD_DURING_A_USER_SWITCH:Ljava/lang/String; = "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

.field public static final blacklist FLAG_BLOCK_PRIVATE_SPACE_CREATION:Ljava/lang/String; = "android.multiuser.block_private_space_creation"

.field public static final blacklist FLAG_CACHES_NOT_INVALIDATED_AT_START_READ_ONLY:Ljava/lang/String; = "android.multiuser.caches_not_invalidated_at_start_read_only"

.field public static final blacklist FLAG_CACHE_PROFILES_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_profiles_read_only"

.field public static final blacklist FLAG_CACHE_PROFILE_IDS_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_profile_ids_read_only"

.field public static final blacklist FLAG_CACHE_PROFILE_PARENT_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_profile_parent_read_only"

.field public static final blacklist FLAG_CACHE_PROFILE_TYPE_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_profile_type_read_only"

.field public static final blacklist FLAG_CACHE_QUIET_MODE_STATE:Ljava/lang/String; = "android.multiuser.cache_quiet_mode_state"

.field public static final blacklist FLAG_CACHE_USER_INFO_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_user_info_read_only"

.field public static final blacklist FLAG_CACHE_USER_PROPERTIES_CORRECTLY_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_user_properties_correctly_read_only"

.field public static final blacklist FLAG_CACHE_USER_RESTRICTIONS_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_user_restrictions_read_only"

.field public static final blacklist FLAG_CACHE_USER_SERIAL_NUMBER:Ljava/lang/String; = "android.multiuser.cache_user_serial_number"

.field public static final blacklist FLAG_CACHE_USER_SERIAL_NUMBER_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_user_serial_number_read_only"

.field public static final blacklist FLAG_CACHE_USER_START_REALTIME_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_user_start_realtime_read_only"

.field public static final blacklist FLAG_CACHE_USER_UNLOCK_REALTIME_READ_ONLY:Ljava/lang/String; = "android.multiuser.cache_user_unlock_realtime_read_only"

.field public static final blacklist FLAG_CACHING_DEVELOPMENT_IMPROVEMENTS:Ljava/lang/String; = "android.multiuser.caching_development_improvements"

.field public static final blacklist FLAG_DELETE_PRIVATE_SPACE_FROM_RESET:Ljava/lang/String; = "android.multiuser.delete_private_space_from_reset"

.field public static final blacklist FLAG_DISABLE_PRIVATE_SPACE_ITEMS_ON_HOME:Ljava/lang/String; = "android.multiuser.disable_private_space_items_on_home"

.field public static final blacklist FLAG_ENABLE_BIOMETRICS_TO_UNLOCK_PRIVATE_SPACE:Ljava/lang/String; = "android.multiuser.enable_biometrics_to_unlock_private_space"

.field public static final blacklist FLAG_ENABLE_HIDING_PROFILES:Ljava/lang/String; = "android.multiuser.enable_hiding_profiles"

.field public static final blacklist FLAG_ENABLE_LAUNCHER_APPS_HIDDEN_PROFILE_CHECKS:Ljava/lang/String; = "android.multiuser.enable_launcher_apps_hidden_profile_checks"

.field public static final blacklist FLAG_ENABLE_MOVING_CONTENT_INTO_PRIVATE_SPACE:Ljava/lang/String; = "android.multiuser.enable_moving_content_into_private_space"

.field public static final blacklist FLAG_ENABLE_PERMISSION_TO_ACCESS_HIDDEN_PROFILES:Ljava/lang/String; = "android.multiuser.enable_permission_to_access_hidden_profiles"

.field public static final blacklist FLAG_ENABLE_PRIVATE_SPACE_AUTOLOCK_ON_RESTARTS:Ljava/lang/String; = "android.multiuser.enable_private_space_autolock_on_restarts"

.field public static final blacklist FLAG_ENABLE_PRIVATE_SPACE_FEATURES:Ljava/lang/String; = "android.multiuser.enable_private_space_features"

.field public static final blacklist FLAG_ENABLE_PRIVATE_SPACE_INTENT_REDIRECTION:Ljava/lang/String; = "android.multiuser.enable_private_space_intent_redirection"

.field public static final blacklist FLAG_ENABLE_PS_SENSITIVE_NOTIFICATIONS_TOGGLE:Ljava/lang/String; = "android.multiuser.enable_ps_sensitive_notifications_toggle"

.field public static final blacklist FLAG_ENABLE_SYSTEM_USER_ONLY_FOR_SERVICES_AND_PROVIDERS:Ljava/lang/String; = "android.multiuser.enable_system_user_only_for_services_and_providers"

.field public static final blacklist FLAG_FIX_AVATAR_CONCURRENT_FILE_WRITE:Ljava/lang/String; = "android.multiuser.fix_avatar_concurrent_file_write"

.field public static final blacklist FLAG_FIX_AVATAR_CONTENT_PROVIDER_NULL_AUTHORITY:Ljava/lang/String; = "android.multiuser.fix_avatar_content_provider_null_authority"

.field public static final blacklist FLAG_FIX_AVATAR_CROSS_USER_LEAK:Ljava/lang/String; = "android.multiuser.fix_avatar_cross_user_leak"

.field public static final blacklist FLAG_FIX_AVATAR_PICKER_NOT_RESPONDING_FOR_NEW_USER:Ljava/lang/String; = "android.multiuser.fix_avatar_picker_not_responding_for_new_user"

.field public static final blacklist FLAG_FIX_AVATAR_PICKER_READ_BACK_ORDER:Ljava/lang/String; = "android.multiuser.fix_avatar_picker_read_back_order"

.field public static final blacklist FLAG_FIX_AVATAR_PICKER_SELECTED_READ_BACK:Ljava/lang/String; = "android.multiuser.fix_avatar_picker_selected_read_back"

.field public static final blacklist FLAG_FIX_DISABLING_OF_MU_TOGGLE_WHEN_RESTRICTION_APPLIED:Ljava/lang/String; = "android.multiuser.fix_disabling_of_mu_toggle_when_restriction_applied"

.field public static final blacklist FLAG_FIX_GET_USER_PROPERTY_CACHE:Ljava/lang/String; = "android.multiuser.fix_get_user_property_cache"

.field public static final blacklist FLAG_FIX_LARGE_DISPLAY_PRIVATE_SPACE_SETTINGS:Ljava/lang/String; = "android.multiuser.fix_large_display_private_space_settings"

.field public static final blacklist FLAG_GET_USER_SWITCHABILITY_PERMISSION:Ljava/lang/String; = "android.multiuser.get_user_switchability_permission"

.field public static final blacklist FLAG_HANDLE_INTERLEAVED_SETTINGS_FOR_PRIVATE_SPACE:Ljava/lang/String; = "android.multiuser.handle_interleaved_settings_for_private_space"

.field public static final blacklist FLAG_IGNORE_RESTRICTIONS_WHEN_DELETING_PRIVATE_PROFILE:Ljava/lang/String; = "android.multiuser.ignore_restrictions_when_deleting_private_profile"

.field public static final blacklist FLAG_INVALIDATE_CACHE_ON_USERS_CHANGED_READ_ONLY:Ljava/lang/String; = "android.multiuser.invalidate_cache_on_users_changed_read_only"

.field public static final blacklist FLAG_LOGOUT_USER_API:Ljava/lang/String; = "android.multiuser.logout_user_api"

.field public static final blacklist FLAG_MODIFY_PRIVATE_SPACE_SECONDARY_UNLOCK_SETUP_FLOW:Ljava/lang/String; = "android.multiuser.modify_private_space_secondary_unlock_setup_flow"

.field public static final blacklist FLAG_MOVE_QUIET_MODE_OPERATIONS_TO_SEPARATE_THREAD:Ljava/lang/String; = "android.multiuser.move_quiet_mode_operations_to_separate_thread"

.field public static final blacklist FLAG_MULTIPLE_ALARM_NOTIFICATIONS_SUPPORT:Ljava/lang/String; = "android.multiuser.multiple_alarm_notifications_support"

.field public static final blacklist FLAG_MULTIUSER_WIDGET:Ljava/lang/String; = "android.multiuser.multiuser_widget"

.field public static final blacklist FLAG_NEW_MULTIUSER_SETTINGS_UX:Ljava/lang/String; = "android.multiuser.new_multiuser_settings_ux"

.field public static final blacklist FLAG_PLACE_ADD_USER_DIALOG_WITHIN_ACTIVITY:Ljava/lang/String; = "android.multiuser.place_add_user_dialog_within_activity"

.field public static final blacklist FLAG_PRIVATE_SPACE_SEARCH_ILLUSTRATION_CONFIG:Ljava/lang/String; = "android.multiuser.private_space_search_illustration_config"

.field public static final blacklist FLAG_PROFILES_FOR_ALL:Ljava/lang/String; = "android.multiuser.profiles_for_all"

.field public static final blacklist FLAG_PROPERTY_INVALIDATED_CACHE_BYPASS_MISMATCHED_UIDS:Ljava/lang/String; = "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

.field public static final blacklist FLAG_REORDER_WALLPAPER_DURING_USER_SWITCH:Ljava/lang/String; = "android.multiuser.reorder_wallpaper_during_user_switch"

.field public static final blacklist FLAG_REQUIRE_PIN_BEFORE_USER_DELETION:Ljava/lang/String; = "android.multiuser.require_pin_before_user_deletion"

.field public static final blacklist FLAG_RESTRICT_QUIET_MODE_CREDENTIAL_BUG_FIX_TO_MANAGED_PROFILES:Ljava/lang/String; = "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

.field public static final blacklist FLAG_SAVE_GLOBAL_AND_GUEST_RESTRICTIONS_ON_SYSTEM_USER_XML:Ljava/lang/String; = "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

.field public static final blacklist FLAG_SAVE_GLOBAL_AND_GUEST_RESTRICTIONS_ON_SYSTEM_USER_XML_READ_ONLY:Ljava/lang/String; = "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

.field public static final blacklist FLAG_SCHEDULE_STOP_OF_BACKGROUND_USER:Ljava/lang/String; = "android.multiuser.schedule_stop_of_background_user"

.field public static final blacklist FLAG_SET_POWER_MODE_DURING_USER_SWITCH:Ljava/lang/String; = "android.multiuser.set_power_mode_during_user_switch"

.field public static final blacklist FLAG_SHOW_CUSTOM_UNLOCK_TITLE_INSIDE_PRIVATE_PROFILE:Ljava/lang/String; = "android.multiuser.show_custom_unlock_title_inside_private_profile"

.field public static final blacklist FLAG_SHOW_DIFFERENT_CREATION_ERROR_FOR_UNSUPPORTED_DEVICES:Ljava/lang/String; = "android.multiuser.show_different_creation_error_for_unsupported_devices"

.field public static final blacklist FLAG_SHOW_SET_SCREEN_LOCK_DIALOG:Ljava/lang/String; = "android.multiuser.show_set_screen_lock_dialog"

.field public static final blacklist FLAG_STOP_PREVIOUS_USER_APPS:Ljava/lang/String; = "android.multiuser.stop_previous_user_apps"

.field public static final blacklist FLAG_SUPPORT_AUTOLOCK_FOR_PRIVATE_SPACE:Ljava/lang/String; = "android.multiuser.support_autolock_for_private_space"

.field public static final blacklist FLAG_SUPPORT_COMMUNAL_PROFILE:Ljava/lang/String; = "android.multiuser.support_communal_profile"

.field public static final blacklist FLAG_SUPPORT_COMMUNAL_PROFILE_NEXTGEN:Ljava/lang/String; = "android.multiuser.support_communal_profile_nextgen"

.field public static final blacklist FLAG_UNICORN_MODE_REFACTORING_FOR_HSUM_READ_ONLY:Ljava/lang/String; = "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

.field public static final blacklist FLAG_USE_ALL_CPUS_DURING_USER_SWITCH:Ljava/lang/String; = "android.multiuser.use_all_cpus_during_user_switch"

.field public static final blacklist FLAG_USE_PRIVATE_SPACE_ICON_IN_BIOMETRIC_PROMPT:Ljava/lang/String; = "android.multiuser.use_private_space_icon_in_biometric_prompt"

.field public static final blacklist FLAG_USE_UNIFIED_RESOURCES:Ljava/lang/String; = "android.multiuser.use_unified_resources"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 683
    new-instance v0, Landroid/multiuser/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/multiuser/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addLauncherUserConfig()Z
    .registers 1

    .line 162
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->addLauncherUserConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist addUiForSoundsFromBackgroundUsers()Z
    .registers 1

    .line 169
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->addUiForSoundsFromBackgroundUsers()Z

    move-result v0

    return v0
.end method

.method public static greylist allowMainUserToAccessBlockedNumberProvider()Z
    .registers 1

    .line 176
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->allowMainUserToAccessBlockedNumberProvider()Z

    move-result v0

    return v0
.end method

.method public static greylist allowResolverSheetForPrivateSpace()Z
    .registers 1

    .line 183
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->allowResolverSheetForPrivateSpace()Z

    move-result v0

    return v0
.end method

.method public static greylist allowSupervisingProfile()Z
    .registers 1

    .line 190
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->allowSupervisingProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist avatarSync()Z
    .registers 1

    .line 197
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->avatarSync()Z

    move-result v0

    return v0
.end method

.method public static greylist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .registers 1

    .line 204
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist blockPrivateSpaceCreation()Z
    .registers 1

    .line 211
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->blockPrivateSpaceCreation()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheProfileIdsReadOnly()Z
    .registers 1

    .line 218
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheProfileIdsReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheProfileParentReadOnly()Z
    .registers 1

    .line 225
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheProfileParentReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheProfileTypeReadOnly()Z
    .registers 1

    .line 232
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheProfileTypeReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheProfilesReadOnly()Z
    .registers 1

    .line 239
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheProfilesReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheQuietModeState()Z
    .registers 1

    .line 246
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheQuietModeState()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserInfoReadOnly()Z
    .registers 1

    .line 253
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserInfoReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserPropertiesCorrectlyReadOnly()Z
    .registers 1

    .line 260
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserPropertiesCorrectlyReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserRestrictionsReadOnly()Z
    .registers 1

    .line 267
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserRestrictionsReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserSerialNumber()Z
    .registers 1

    .line 274
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserSerialNumber()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserSerialNumberReadOnly()Z
    .registers 1

    .line 281
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserSerialNumberReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserStartRealtimeReadOnly()Z
    .registers 1

    .line 288
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserStartRealtimeReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheUserUnlockRealtimeReadOnly()Z
    .registers 1

    .line 295
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cacheUserUnlockRealtimeReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cachesNotInvalidatedAtStartReadOnly()Z
    .registers 1

    .line 302
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cachesNotInvalidatedAtStartReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist cachingDevelopmentImprovements()Z
    .registers 1

    .line 309
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->cachingDevelopmentImprovements()Z

    move-result v0

    return v0
.end method

.method public static greylist deletePrivateSpaceFromReset()Z
    .registers 1

    .line 316
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->deletePrivateSpaceFromReset()Z

    move-result v0

    return v0
.end method

.method public static greylist disablePrivateSpaceItemsOnHome()Z
    .registers 1

    .line 323
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->disablePrivateSpaceItemsOnHome()Z

    move-result v0

    return v0
.end method

.method public static greylist enableBiometricsToUnlockPrivateSpace()Z
    .registers 1

    .line 330
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v0

    return v0
.end method

.method public static greylist enableHidingProfiles()Z
    .registers 1

    .line 337
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enableHidingProfiles()Z

    move-result v0

    return v0
.end method

.method public static greylist enableLauncherAppsHiddenProfileChecks()Z
    .registers 1

    .line 344
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enableLauncherAppsHiddenProfileChecks()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMovingContentIntoPrivateSpace()Z
    .registers 1

    .line 351
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enableMovingContentIntoPrivateSpace()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePermissionToAccessHiddenProfiles()Z
    .registers 1

    .line 358
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enablePermissionToAccessHiddenProfiles()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePrivateSpaceAutolockOnRestarts()Z
    .registers 1

    .line 365
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enablePrivateSpaceAutolockOnRestarts()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePrivateSpaceFeatures()Z
    .registers 1

    .line 372
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enablePrivateSpaceFeatures()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePrivateSpaceIntentRedirection()Z
    .registers 1

    .line 379
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enablePrivateSpaceIntentRedirection()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePsSensitiveNotificationsToggle()Z
    .registers 1

    .line 386
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enablePsSensitiveNotificationsToggle()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSystemUserOnlyForServicesAndProviders()Z
    .registers 1

    .line 393
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAvatarConcurrentFileWrite()Z
    .registers 1

    .line 400
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixAvatarConcurrentFileWrite()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAvatarContentProviderNullAuthority()Z
    .registers 1

    .line 407
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixAvatarContentProviderNullAuthority()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAvatarCrossUserLeak()Z
    .registers 1

    .line 414
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixAvatarCrossUserLeak()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAvatarPickerNotRespondingForNewUser()Z
    .registers 1

    .line 421
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixAvatarPickerNotRespondingForNewUser()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAvatarPickerReadBackOrder()Z
    .registers 1

    .line 428
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixAvatarPickerReadBackOrder()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAvatarPickerSelectedReadBack()Z
    .registers 1

    .line 435
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixAvatarPickerSelectedReadBack()Z

    move-result v0

    return v0
.end method

.method public static greylist fixDisablingOfMuToggleWhenRestrictionApplied()Z
    .registers 1

    .line 442
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixDisablingOfMuToggleWhenRestrictionApplied()Z

    move-result v0

    return v0
.end method

.method public static greylist fixGetUserPropertyCache()Z
    .registers 1

    .line 449
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixGetUserPropertyCache()Z

    move-result v0

    return v0
.end method

.method public static greylist fixLargeDisplayPrivateSpaceSettings()Z
    .registers 1

    .line 456
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->fixLargeDisplayPrivateSpaceSettings()Z

    move-result v0

    return v0
.end method

.method public static greylist getUserSwitchabilityPermission()Z
    .registers 1

    .line 463
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->getUserSwitchabilityPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist handleInterleavedSettingsForPrivateSpace()Z
    .registers 1

    .line 470
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v0

    return v0
.end method

.method public static greylist ignoreRestrictionsWhenDeletingPrivateProfile()Z
    .registers 1

    .line 477
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->ignoreRestrictionsWhenDeletingPrivateProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist invalidateCacheOnUsersChangedReadOnly()Z
    .registers 1

    .line 484
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->invalidateCacheOnUsersChangedReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist logoutUserApi()Z
    .registers 1

    .line 491
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->logoutUserApi()Z

    move-result v0

    return v0
.end method

.method public static greylist modifyPrivateSpaceSecondaryUnlockSetupFlow()Z
    .registers 1

    .line 498
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->modifyPrivateSpaceSecondaryUnlockSetupFlow()Z

    move-result v0

    return v0
.end method

.method public static greylist moveQuietModeOperationsToSeparateThread()Z
    .registers 1

    .line 505
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->moveQuietModeOperationsToSeparateThread()Z

    move-result v0

    return v0
.end method

.method public static greylist multipleAlarmNotificationsSupport()Z
    .registers 1

    .line 512
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->multipleAlarmNotificationsSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist multiuserWidget()Z
    .registers 1

    .line 519
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->multiuserWidget()Z

    move-result v0

    return v0
.end method

.method public static greylist newMultiuserSettingsUx()Z
    .registers 1

    .line 526
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->newMultiuserSettingsUx()Z

    move-result v0

    return v0
.end method

.method public static greylist placeAddUserDialogWithinActivity()Z
    .registers 1

    .line 533
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->placeAddUserDialogWithinActivity()Z

    move-result v0

    return v0
.end method

.method public static greylist privateSpaceSearchIllustrationConfig()Z
    .registers 1

    .line 540
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->privateSpaceSearchIllustrationConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist profilesForAll()Z
    .registers 1

    .line 547
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->profilesForAll()Z

    move-result v0

    return v0
.end method

.method public static greylist propertyInvalidatedCacheBypassMismatchedUids()Z
    .registers 1

    .line 554
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->propertyInvalidatedCacheBypassMismatchedUids()Z

    move-result v0

    return v0
.end method

.method public static greylist reorderWallpaperDuringUserSwitch()Z
    .registers 1

    .line 561
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->reorderWallpaperDuringUserSwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist requirePinBeforeUserDeletion()Z
    .registers 1

    .line 568
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->requirePinBeforeUserDeletion()Z

    move-result v0

    return v0
.end method

.method public static greylist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .registers 1

    .line 575
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->restrictQuietModeCredentialBugFixToManagedProfiles()Z

    move-result v0

    return v0
.end method

.method public static greylist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .registers 1

    .line 582
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->saveGlobalAndGuestRestrictionsOnSystemUserXml()Z

    move-result v0

    return v0
.end method

.method public static greylist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .registers 1

    .line 589
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist scheduleStopOfBackgroundUser()Z
    .registers 1

    .line 596
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->scheduleStopOfBackgroundUser()Z

    move-result v0

    return v0
.end method

.method public static greylist setPowerModeDuringUserSwitch()Z
    .registers 1

    .line 603
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->setPowerModeDuringUserSwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist showCustomUnlockTitleInsidePrivateProfile()Z
    .registers 1

    .line 610
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->showCustomUnlockTitleInsidePrivateProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist showDifferentCreationErrorForUnsupportedDevices()Z
    .registers 1

    .line 617
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->showDifferentCreationErrorForUnsupportedDevices()Z

    move-result v0

    return v0
.end method

.method public static greylist showSetScreenLockDialog()Z
    .registers 1

    .line 624
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->showSetScreenLockDialog()Z

    move-result v0

    return v0
.end method

.method public static greylist stopPreviousUserApps()Z
    .registers 1

    .line 631
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->stopPreviousUserApps()Z

    move-result v0

    return v0
.end method

.method public static greylist supportAutolockForPrivateSpace()Z
    .registers 1

    .line 638
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->supportAutolockForPrivateSpace()Z

    move-result v0

    return v0
.end method

.method public static greylist supportCommunalProfile()Z
    .registers 1

    .line 645
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->supportCommunalProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist supportCommunalProfileNextgen()Z
    .registers 1

    .line 652
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->supportCommunalProfileNextgen()Z

    move-result v0

    return v0
.end method

.method public static greylist unicornModeRefactoringForHsumReadOnly()Z
    .registers 1

    .line 659
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->unicornModeRefactoringForHsumReadOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist useAllCpusDuringUserSwitch()Z
    .registers 1

    .line 666
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->useAllCpusDuringUserSwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist usePrivateSpaceIconInBiometricPrompt()Z
    .registers 1

    .line 673
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->usePrivateSpaceIconInBiometricPrompt()Z

    move-result v0

    return v0
.end method

.method public static greylist useUnifiedResources()Z
    .registers 1

    .line 680
    sget-object v0, Landroid/multiuser/Flags;->FEATURE_FLAGS:Landroid/multiuser/FeatureFlags;

    invoke-interface {v0}, Landroid/multiuser/FeatureFlags;->useUnifiedResources()Z

    move-result v0

    return v0
.end method
