.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManager$UserOperationException;,
        Landroid/os/UserManager$QueryUserId;,
        Landroid/os/UserManager$EnforcingUser;,
        Landroid/os/UserManager$CheckedUserOperationException;,
        Landroid/os/UserManager$UserOperationResult;,
        Landroid/os/UserManager$RemoveResult;,
        Landroid/os/UserManager$UserLogoutability;,
        Landroid/os/UserManager$UserSwitchabilityResult;,
        Landroid/os/UserManager$UserRestrictionKey;,
        Landroid/os/UserManager$UserRestrictionSource;,
        Landroid/os/UserManager$QuietModeFlag;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CREATE_SUPERVISED_USER:Ljava/lang/String; = "android.os.action.CREATE_SUPERVISED_USER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o ACTION_CREATE_USER:Ljava/lang/String; = "android.os.action.CREATE_USER"

.field public static final whitelist ACTION_USER_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.os.action.USER_RESTRICTIONS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field public static final blacklist ALWAYS_USE_CONTEXT_USER:J = 0xaeabaecL

.field private static final blacklist CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

.field public static final blacklist DEV_CREATE_OVERRIDE_PROPERTY:Ljava/lang/String; = "debug.user.creation_override"

.field public static final blacklist DISALLOW_ADD_CLONE_PROFILE:Ljava/lang/String; = "no_add_clone_profile"

.field public static final whitelist DISALLOW_ADD_MANAGED_PROFILE:Ljava/lang/String; = "no_add_managed_profile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DISALLOW_ADD_PRIVATE_PROFILE:Ljava/lang/String; = "no_add_private_profile"

.field public static final whitelist DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final whitelist DISALLOW_ADD_WIFI_CONFIG:Ljava/lang/String; = "no_add_wifi_config"

.field public static final whitelist DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final whitelist DISALLOW_AIRPLANE_MODE:Ljava/lang/String; = "no_airplane_mode"

.field public static final whitelist DISALLOW_AMBIENT_DISPLAY:Ljava/lang/String; = "no_ambient_display"

.field public static final whitelist DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final whitelist DISALLOW_ASSIST_CONTENT:Ljava/lang/String; = "no_assist_content"

.field public static final whitelist DISALLOW_AUTOFILL:Ljava/lang/String; = "no_autofill"

.field public static final blacklist DISALLOW_BIOMETRIC:Ljava/lang/String; = "disallow_biometric"

.field public static final whitelist DISALLOW_BLUETOOTH:Ljava/lang/String; = "no_bluetooth"

.field public static final whitelist DISALLOW_BLUETOOTH_SHARING:Ljava/lang/String; = "no_bluetooth_sharing"

.field public static final greylist-max-o DISALLOW_CAMERA:Ljava/lang/String; = "no_camera"

.field public static final whitelist DISALLOW_CAMERA_TOGGLE:Ljava/lang/String; = "disallow_camera_toggle"

.field public static final whitelist DISALLOW_CELLULAR_2G:Ljava/lang/String; = "no_cellular_2g"

.field public static final whitelist DISALLOW_CHANGE_NEAR_FIELD_COMMUNICATION_RADIO:Ljava/lang/String; = "no_change_near_field_communication_radio"

.field public static final whitelist DISALLOW_CHANGE_WIFI_STATE:Ljava/lang/String; = "no_change_wifi_state"

.field public static final whitelist DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final whitelist DISALLOW_CONFIG_BRIGHTNESS:Ljava/lang/String; = "no_config_brightness"

.field public static final whitelist DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final whitelist DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final whitelist DISALLOW_CONFIG_DATE_TIME:Ljava/lang/String; = "no_config_date_time"

.field public static final whitelist DISALLOW_CONFIG_DEFAULT_APPS:Ljava/lang/String; = "disallow_config_default_apps"

.field public static final whitelist DISALLOW_CONFIG_LOCALE:Ljava/lang/String; = "no_config_locale"

.field public static final whitelist DISALLOW_CONFIG_LOCATION:Ljava/lang/String; = "no_config_location"

.field public static final whitelist DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final whitelist DISALLOW_CONFIG_PRIVATE_DNS:Ljava/lang/String; = "disallow_config_private_dns"

.field public static final whitelist DISALLOW_CONFIG_SCREEN_TIMEOUT:Ljava/lang/String; = "no_config_screen_timeout"

.field public static final whitelist DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final whitelist DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final whitelist DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final whitelist DISALLOW_CONTENT_CAPTURE:Ljava/lang/String; = "no_content_capture"

.field public static final whitelist DISALLOW_CONTENT_SUGGESTIONS:Ljava/lang/String; = "no_content_suggestions"

.field public static final whitelist DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final whitelist DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final whitelist DISALLOW_DATA_ROAMING:Ljava/lang/String; = "no_data_roaming"

.field public static final whitelist DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final whitelist DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final whitelist DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final whitelist DISALLOW_GRANT_ADMIN:Ljava/lang/String; = "no_grant_admin"

.field public static final whitelist DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final whitelist DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final whitelist DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY:Ljava/lang/String; = "no_install_unknown_sources_globally"

.field public static final whitelist DISALLOW_MICROPHONE_TOGGLE:Ljava/lang/String; = "disallow_microphone_toggle"

.field public static final whitelist DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final whitelist DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final whitelist DISALLOW_NEAR_FIELD_COMMUNICATION_RADIO:Ljava/lang/String; = "no_near_field_communication_radio"

.field public static final whitelist DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final whitelist DISALLOW_OEM_UNLOCK:Ljava/lang/String; = "no_oem_unlock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final whitelist DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final whitelist DISALLOW_PRINTING:Ljava/lang/String; = "no_printing"

.field public static final greylist-max-r DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final whitelist DISALLOW_REMOVE_MANAGED_PROFILE:Ljava/lang/String; = "no_remove_managed_profile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final whitelist DISALLOW_RUN_IN_BACKGROUND:Ljava/lang/String; = "no_run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final whitelist DISALLOW_SET_USER_ICON:Ljava/lang/String; = "no_set_user_icon"

.field public static final whitelist DISALLOW_SET_WALLPAPER:Ljava/lang/String; = "no_set_wallpaper"

.field public static final whitelist DISALLOW_SHARE_INTO_MANAGED_PROFILE:Ljava/lang/String; = "no_sharing_into_profile"

.field public static final whitelist DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final whitelist DISALLOW_SHARING_ADMIN_CONFIGURED_WIFI:Ljava/lang/String; = "no_sharing_admin_configured_wifi"

.field public static final whitelist DISALLOW_SIM_GLOBALLY:Ljava/lang/String; = "no_sim_globally"

.field public static final whitelist DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final whitelist DISALLOW_SYSTEM_ERROR_DIALOGS:Ljava/lang/String; = "no_system_error_dialogs"

.field public static final whitelist DISALLOW_THREAD_NETWORK:Ljava/lang/String; = "no_thread_network"

.field public static final whitelist DISALLOW_ULTRA_WIDEBAND_RADIO:Ljava/lang/String; = "no_ultra_wideband_radio"

.field public static final whitelist DISALLOW_UNIFIED_PASSWORD:Ljava/lang/String; = "no_unified_password"

.field public static final whitelist DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final greylist-max-o DISALLOW_UNMUTE_DEVICE:Ljava/lang/String; = "disallow_unmute_device"

.field public static final whitelist DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final whitelist DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final whitelist DISALLOW_USER_SWITCH:Ljava/lang/String; = "no_user_switch"

.field public static final greylist-max-o DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final whitelist DISALLOW_WIFI_DIRECT:Ljava/lang/String; = "no_wifi_direct"

.field public static final whitelist DISALLOW_WIFI_TETHERING:Ljava/lang/String; = "no_wifi_tethering"

.field public static final whitelist ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final greylist-max-o EXTRA_USER_ACCOUNT_NAME:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_NAME"

.field public static final greylist-max-o EXTRA_USER_ACCOUNT_OPTIONS:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_OPTIONS"

.field public static final greylist-max-o EXTRA_USER_ACCOUNT_TYPE:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_TYPE"

.field public static final greylist-max-o EXTRA_USER_NAME:Ljava/lang/String; = "android.os.extra.USER_NAME"

.field public static final whitelist KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final blacklist LOGOUTABILITY_STATUS_CANNOT_LOGOUT_SYSTEM_USER:I = 0x1

.field public static final blacklist LOGOUTABILITY_STATUS_CANNOT_SWITCH:I = 0x3

.field public static final blacklist LOGOUTABILITY_STATUS_NO_SUITABLE_USER_TO_LOGOUT_TO:I = 0x2

.field public static final blacklist LOGOUTABILITY_STATUS_OK:I = 0x0

.field public static final blacklist MAX_ACCOUNT_OPTIONS_LENGTH:I = 0x3e8

.field public static final blacklist MAX_ACCOUNT_STRING_LENGTH:I = 0x1f4

.field public static final blacklist MAX_USER_NAME_LENGTH:I = 0x64

.field public static final greylist-max-o PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final greylist-max-o PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final greylist-max-o PIN_VERIFICATION_SUCCESS:I = -0x1

.field public static final blacklist QUIET_MODE_DISABLE_DONT_ASK_CREDENTIAL:I = 0x2

.field public static final whitelist QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED:I = 0x1

.field public static final whitelist REMOVE_RESULT_ALREADY_BEING_REMOVED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_DEFERRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_MAIN_USER_PERMANENT_ADMIN:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_SYSTEM_USER:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_USER_NOT_FOUND:I = -0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_USER_RESTRICTION:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_REMOVED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REMOVE_RESULT_USER_IS_REMOVABLE:I = 0x3

.field public static final whitelist RESTRICTION_NOT_SET:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_SOURCE_SYSTEM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_SYSTEM_USER_LOCKED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_USER_IN_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_USER_SWITCH_DISALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_DEFAULT:Ljava/lang/String; = "default"

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_FULL:Ljava/lang/String; = "full"

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_HEADLESS:Ljava/lang/String; = "headless"

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_PROPERTY:Ljava/lang/String; = "persist.debug.user_mode_emulation"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UserManager"

.field public static final whitelist USER_CREATION_FAILED_NOT_PERMITTED:I = 0x1

.field public static final whitelist USER_CREATION_FAILED_NO_MORE_USERS:I = 0x2

.field public static final whitelist USER_OPERATION_ERROR_CURRENT_USER:I = 0x4

.field public static final blacklist USER_OPERATION_ERROR_DISABLED_USER:I = 0x8

.field public static final whitelist USER_OPERATION_ERROR_LOW_STORAGE:I = 0x5

.field public static final whitelist USER_OPERATION_ERROR_MANAGED_PROFILE:I = 0x2

.field public static final whitelist USER_OPERATION_ERROR_MAX_RUNNING_USERS:I = 0x3

.field public static final whitelist USER_OPERATION_ERROR_MAX_USERS:I = 0x6

.field public static final blacklist USER_OPERATION_ERROR_PRIVATE_PROFILE:I = 0x9

.field public static final whitelist USER_OPERATION_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist USER_OPERATION_ERROR_USER_ACCOUNT_ALREADY_EXISTS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_OPERATION_ERROR_USER_RESTRICTED:I = 0xa

.field public static final whitelist USER_OPERATION_SUCCESS:I = 0x0

.field public static final blacklist USER_TYPE_FULL_DEMO:Ljava/lang/String; = "android.os.usertype.full.DEMO"

.field public static final whitelist USER_TYPE_FULL_GUEST:Ljava/lang/String; = "android.os.usertype.full.GUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_TYPE_FULL_RESTRICTED:Ljava/lang/String; = "android.os.usertype.full.RESTRICTED"

.field public static final whitelist USER_TYPE_FULL_SECONDARY:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_TYPE_FULL_SYSTEM:Ljava/lang/String; = "android.os.usertype.full.SYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_TYPE_PROFILE_CLONE:Ljava/lang/String; = "android.os.usertype.profile.CLONE"

.field public static final blacklist USER_TYPE_PROFILE_COMMUNAL:Ljava/lang/String; = "android.os.usertype.profile.COMMUNAL"

.field public static final whitelist USER_TYPE_PROFILE_MANAGED:Ljava/lang/String; = "android.os.usertype.profile.MANAGED"

.field public static final whitelist USER_TYPE_PROFILE_PRIVATE:Ljava/lang/String; = "android.os.usertype.profile.PRIVATE"

.field public static final blacklist USER_TYPE_PROFILE_SUPERVISING:Ljava/lang/String; = "android.os.usertype.profile.SUPERVISING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_TYPE_PROFILE_TEST:Ljava/lang/String; = "android.os.usertype.profile.TEST"

.field public static final whitelist USER_TYPE_SYSTEM_HEADLESS:Ljava/lang/String; = "android.os.usertype.system.HEADLESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static blacklist sIsHeadlessSystemUser:Ljava/lang/Boolean;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIpcDataCache:Ljava/lang/Object;

.field private final blacklist mProfileTypeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProfileTypeOfProcessUser:Ljava/lang/String;

.field private final greylist mService:Landroid/os/IUserManager;

.field private final blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$BXQB3W5ypP7lQNKJ1ut1KMEbMD8(Landroid/os/UserManager;Ljava/lang/Integer;)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getEnabledProfileIds$5(Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HTVfsYiNL9khO7ijfgU05Ds90Zw(Landroid/os/UserManager;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getUserPropertiesFromQuery$0(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HyjxpgUuixyJ1XREnDoJf4il8eE(Landroid/os/UserManager;Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->lambda$getBadgedLabelForUser$9(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Junm3nWoU2i1KQAItBlGg2U6F4Q(Landroid/os/UserManager;)Landroid/graphics/drawable/Drawable;
    .registers 1

    invoke-direct {p0}, Landroid/os/UserManager;->lambda$getUserBadge$8()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SDW_UL6mWtYTWDTrZaUVeos2sQA(Landroid/os/UserManager;Ljava/lang/Integer;)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfileIdsWithDisabled$4(Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$YpJ9GJ-25vPLVWaq9Q2lHVe58V0(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfileParent$6(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dcWO8H_vlSLBPbqNUcl_T3Umg50(Landroid/os/UserManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/os/UserManager;->lambda$getProfileLabel$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$iIY2Nu9GIpcuT6369Fj4tzTxQAA(Landroid/os/UserManager;Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getUserRestrictionFromQuery$1(Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ooNoutSCQatoIUpzGYHlc9B8HQk(Landroid/os/UserManager;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfileAccessibilityString$11(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rkTer22aZcsQjKWksAjRmXTRU5o(Landroid/os/UserManager;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$isQuietModeEnabled$7(Landroid/os/UserHandle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uKymsaxHhExruri_neKbdn2d9Lk(Landroid/os/UserManager;Ljava/lang/Integer;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfiles$3(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/UserManager;)Landroid/os/IUserManager;
    .registers 1

    iget-object p0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 116
    const/4 v0, 0x0

    sput-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;

    .line 6907
    nop

    .line 6908
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "static_user_props"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/UserManager;->CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

    .line 6907
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IUserManager;

    .line 2643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/os/UserManagerCache;

    invoke-direct {v0}, Landroid/os/UserManagerCache;-><init>()V

    iput-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    .line 6911
    new-instance v0, Landroid/os/UserManager$1;

    const/16 v1, 0x20

    sget-object v2, Landroid/os/UserManager;->CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/os/UserManager$1;-><init>(Landroid/os/UserManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/UserManager;->mProfileTypeCache:Landroid/app/PropertyInvalidatedCache;

    .line 2644
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 2645
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2646
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_22

    move-object v1, p1

    goto :goto_23

    :cond_22
    move-object v1, v0

    :goto_23
    iput-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 2647
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Landroid/os/UserManager;->mUserId:I

    .line 2648
    return-void
.end method

.method private blacklist convertUserIdsToUserHandles([I)Ljava/util/List;
    .registers 7
    .param p1, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5632
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5633
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 5634
    .local v3, "userId":I
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5633
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5636
    :cond_16
    return-object v0
.end method

.method public static whitelist createUserCreationIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .registers 7
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountOptions"    # Landroid/os/PersistableBundle;

    .line 4803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.CREATE_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4804
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_e

    .line 4805
    const-string v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4807
    :cond_e
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    goto :goto_1b

    .line 4808
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType must be specified if accountName is specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4811
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_22

    .line 4812
    const-string v1, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4814
    :cond_22
    if-eqz p2, :cond_29

    .line 4815
    const-string v1, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4817
    :cond_29
    if-eqz p3, :cond_30

    .line 4818
    const-string v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4820
    :cond_30
    return-object v0
.end method

.method public static greylist get(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2639
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist getContextUserIfAppropriate()I
    .registers 5

    .line 2622
    const-wide/32 v0, 0xaeabaec

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2623
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    return v0

    .line 2625
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 2626
    .local v0, "callingUser":I
    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    if-eq v0, v1, :cond_43

    .line 2627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using the calling user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rather than the specified context user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", because API is only UserHandleAware on higher targetSdkVersions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "UserManager"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2632
    :cond_43
    return v0
.end method

.method private blacklist getDefaultProfileLabel(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 6220
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileLabelResId(I)I

    move-result v0

    .line 6221
    .local v0, "resourceId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 6222
    .end local v0    # "resourceId":I
    :catch_f
    move-exception v0

    .line 6223
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getDefaultUserBadge(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "userId"    # I

    .line 6145
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserBadgeResId(I)I

    move-result v1

    iget-object v2, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDefaultUserBadgedLabel(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "userId"    # I

    .line 6182
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p2}, Landroid/os/IUserManager;->getUserBadgeLabelResId(I)I

    move-result v0

    .line 6183
    .local v0, "resourceId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 6184
    .end local v0    # "resourceId":I
    :catch_13
    move-exception v0

    .line 6185
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist getMaxSupportedUsers()I
    .registers 3

    .line 6559
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "JVP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 6560
    :cond_c
    nop

    .line 6561
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6560
    const-string v2, "fw.max_users"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist getProfileAccessibilityLabel(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 6257
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileAccessibilityLabelResId(I)I

    move-result v0

    .line 6258
    .local v0, "resourceId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 6262
    .end local v0    # "resourceId":I
    :catch_f
    move-exception v0

    .line 6263
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6259
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 6260
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility label not defined for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6261
    throw v0
.end method

.method private blacklist getProfileType()Ljava/lang/String;
    .registers 2

    .line 3498
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getProfileType(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 3505
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_23

    .line 3508
    iget-object v0, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 3509
    iget-object v0, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;

    return-object v0

    .line 3512
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    .line 3513
    .local v0, "profileType":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 3514
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1d

    return-object v1

    .line 3518
    .end local v0    # "profileType":Ljava/lang/String;
    :cond_1c
    goto :goto_23

    .line 3516
    :catch_1d
    move-exception v0

    .line 3517
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3522
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/os/UserManager;->mProfileTypeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getProfiles(Z)Ljava/util/List;
    .registers 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5626
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 5627
    .local v0, "userIds":[I
    invoke-direct {p0, v0}, Landroid/os/UserManager;->convertUserIdsToUserHandles([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getUpdatableUserBadgedLabelId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 6177
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Core.WORK_PROFILE_BADGED_LABEL"

    goto :goto_b

    :cond_9
    const-string v0, "UNDEFINED"

    :goto_b
    return-object v0
.end method

.method private blacklist getUserPropertiesFromQuery(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 3
    .param p1, "query"    # Landroid/os/UserManager$QueryUserId;

    .line 4071
    iget-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManagerCache;

    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda6;-><init>(Landroid/os/UserManager;)V

    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getUserRestrictionFromQuery(Landroid/util/Pair;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 4320
    .local p1, "restrictionPerUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserManager;)V

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/UserManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1, p1}, Landroid/os/UserManagerCache;->getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist hasUserRestrictionForUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4314
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getUserRestrictionFromQuery(Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method public static final blacklist invalidateCacheOnUserDataChanged()V
    .registers 1

    .line 6647
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfilesReadOnly()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6648
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserInfoReadOnly()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6652
    :cond_c
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfiles()V

    .line 6654
    :cond_f
    return-void
.end method

.method public static final blacklist invalidateCacheOnUserListChange()V
    .registers 1

    .line 6617
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserSerialNumber()V

    .line 6618
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfileParentReadOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6619
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileParent()V

    .line 6621
    :cond_c
    invoke-static {}, Landroid/os/UserManager;->invalidateEnabledProfileIds()V

    .line 6622
    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    .line 6623
    return-void
.end method

.method public static final blacklist invalidateEnabledProfileIds()V
    .registers 1

    .line 5707
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfileIdsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5708
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateEnabledProfileIds()V

    .line 5710
    :cond_9
    return-void
.end method

.method public static final blacklist invalidateIsUserUnlockedCache()V
    .registers 0

    .line 3901
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlocked()V

    .line 3902
    return-void
.end method

.method public static final blacklist invalidateOnUserInfoFlagChange(I)V
    .registers 2
    .param p0, "flags"    # I

    .line 6634
    and-int/lit8 v0, p0, 0x40

    if-lez v0, :cond_7

    .line 6635
    invoke-static {}, Landroid/os/UserManager;->invalidateEnabledProfileIds()V

    .line 6637
    :cond_7
    return-void
.end method

.method public static final blacklist invalidateQuietModeEnabledCache()V
    .registers 0

    .line 5895
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateQuietModeEnabled()V

    .line 5896
    return-void
.end method

.method public static final blacklist invalidateStaticUserProperties()V
    .registers 1

    .line 6932
    sget-object v0, Landroid/os/UserManager;->CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 6933
    return-void
.end method

.method public static final blacklist invalidateUserPropertiesCache()V
    .registers 0

    .line 4061
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserPropertiesFromQuery()V

    .line 4062
    return-void
.end method

.method public static final blacklist invalidateUserRestriction()V
    .registers 1

    .line 4329
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserRestrictionsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4330
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserRestrictionFromQuery()V

    .line 4332
    :cond_9
    return-void
.end method

.method private blacklist isCommunalProfile(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3099
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCommunalProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCommunalProfileEnabled()Z
    .registers 2

    .line 2685
    nop

    .line 2686
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2687
    const v1, 0x1110205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2685
    const-string/jumbo v1, "persist.fw.omnipresent_communal_user"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isDeviceInDemoMode(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6607
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_demo_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static blacklist isGuestUserAllowEphemeralStateChange()Z
    .registers 2

    .line 2676
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2677
    const v1, 0x11101b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2676
    return v0
.end method

.method public static blacklist isGuestUserAlwaysEphemeral()Z
    .registers 2

    .line 2666
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2667
    const v1, 0x11101ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2666
    return v0
.end method

.method public static whitelist isHeadlessSystemUserMode()Z
    .registers 2

    .line 2723
    sget-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    .line 2726
    :try_start_4
    const-string/jumbo v0, "user"

    .line 2727
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2726
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 2728
    .local v0, "service":Landroid/os/IUserManager;
    invoke-interface {v0}, Landroid/os/IUserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 2731
    .end local v0    # "service":Landroid/os/IUserManager;
    goto :goto_20

    .line 2729
    :catch_1a
    move-exception v0

    .line 2730
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2733
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    sget-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMultipleAdminEnabled()Z
    .registers 2

    .line 2706
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2707
    const v1, 0x1110181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2706
    return v0
.end method

.method public static blacklist isPrivateProfileEnabled()Z
    .registers 2

    .line 2695
    invoke-static {}, Landroid/multiuser/Flags;->blockPrivateSpaceCreation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 2696
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 2698
    :cond_d
    return v1
.end method

.method public static whitelist isRemoveResultSuccessful(I)Z
    .registers 2
    .param p0, "result"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6414
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist isUserTypeCloneProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3221
    const-string v0, "android.os.usertype.profile.CLONE"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypeCommunalProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3231
    const-string v0, "android.os.usertype.profile.COMMUNAL"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypeDemo(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3212
    const-string v0, "android.os.usertype.full.DEMO"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypeGuest(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3193
    const-string v0, "android.os.usertype.full.GUEST"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypeManagedProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3184
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypePrivateProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3242
    const-string v0, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypeRestricted(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3203
    const-string v0, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserTypeSupervisingProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userType"    # Ljava/lang/String;

    .line 3254
    const-string v0, "android.os.usertype.profile.SUPERVISING"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVisibleBackgroundUsersEnabled()Z
    .registers 2

    .line 3716
    nop

    .line 3717
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3718
    const v1, 0x11101f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3716
    const-string v1, "fw.visible_bg_users"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z
    .registers 2

    .line 3746
    nop

    .line 3747
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3748
    const v1, 0x11101f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3746
    const-string v1, "fw.visible_bg_users_on_default_display"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getBadgedLabelForUser$9(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "userId"    # I

    .line 6172
    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->getDefaultUserBadgedLabel(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getEnabledProfileIds$5(Ljava/lang/Integer;)[I
    .registers 5
    .param p1, "userIdentifuer"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5699
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getProfileAccessibilityString$11(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 6250
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileAccessibilityLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getProfileIdsWithDisabled$4(Ljava/lang/Integer;)[I
    .registers 5
    .param p1, "userIdentifuer"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5681
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getProfileLabel$10()Ljava/lang/String;
    .registers 2

    .line 6213
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultProfileLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getProfileParent$6(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 4
    .param p1, "query"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5785
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5787
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_11

    .line 5788
    const/16 v1, -0x2710

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1

    .line 5790
    :cond_11
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1
.end method

.method private synthetic blacklist lambda$getProfiles$3(Ljava/lang/Integer;)Ljava/util/List;
    .registers 5
    .param p1, "userIdentifier"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5447
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getUserBadge$8()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 6139
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getUserPropertiesFromQuery$0(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 4
    .param p1, "q"    # Landroid/os/UserManager$QueryUserId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4072
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserManager$QueryUserId;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getUserRestrictionFromQuery$1(Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "q"    # Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4321
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getUserRestrictionFromQuery$2(Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "q"    # Landroid/util/Pair;

    .line 4323
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserRestrictionsReadOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isQuietModeEnabled$7(Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "uh"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5912
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private blacklist returnNullOrThrowUserOperationException(Landroid/os/ServiceSpecificException;Z)Ljava/lang/Object;
    .registers 4
    .param p1, "exception"    # Landroid/os/ServiceSpecificException;
    .param p2, "throwInsteadOfNull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/ServiceSpecificException;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 2543
    if-nez p2, :cond_4

    .line 2546
    const/4 v0, 0x0

    return-object v0

    .line 2544
    :cond_4
    invoke-static {p1}, Landroid/os/UserManager$UserOperationException;->from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist supportsMultipleUsers()Z
    .registers 3

    .line 2656
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 2658
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110180

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2657
    const-string v2, "fw.show_multiuserui"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 2656
    :goto_1c
    return v1
.end method


# virtual methods
.method public blacklist addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/IUserRestrictionsListener;

    .line 4372
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4375
    nop

    .line 4376
    return-void

    .line 4373
    :catch_7
    move-exception v0

    .line 4374
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o canAddMoreManagedProfiles(IZ)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .line 5377
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->canAddMoreManagedProfiles(IZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5378
    :catch_7
    move-exception v0

    .line 5379
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canAddMoreProfilesToUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5397
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 5398
    :catch_8
    move-exception v0

    .line 5399
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o canAddMoreUsers()Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5280
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 5281
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5282
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .line 5283
    .local v2, "aliveUserCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_1d

    .line 5284
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 5285
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 5286
    add-int/lit8 v2, v2, 0x1

    .line 5283
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 5289
    .end local v3    # "i":I
    :cond_1d
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    if-ge v2, v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    return v3
.end method

.method public blacklist canAddMoreUsers(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 5305
    :try_start_0
    const-string v0, "android.os.usertype.full.GUEST"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5306
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 5308
    :cond_f
    invoke-virtual {p0}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_21

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    .line 5310
    :catch_21
    move-exception v0

    .line 5311
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canAddPrivateProfile()Z
    .registers 3

    .line 3359
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 3360
    :cond_8
    invoke-static {}, Landroid/multiuser/Flags;->blockPrivateSpaceCreation()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3362
    :try_start_e
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->canAddPrivateProfile(I)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    .line 3363
    :catch_17
    move-exception v0

    .line 3364
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3367
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canHaveRestrictedProfile()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3341
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3342
    :catch_9
    move-exception v0

    .line 3343
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r canSwitchUsers()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2749
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserSwitchability(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_e

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 2750
    :catch_e
    move-exception v0

    .line 2751
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearSeedAccountData()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4930
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->clearSeedAccountData(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 4933
    nop

    .line 4934
    return-void

    .line 4931
    :catch_b
    move-exception v0

    .line 4932
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 4546
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string v2, "android.os.usertype.full.GUEST"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4547
    .local v1, "guest":Landroid/content/pm/UserInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "skip_first_use_hints"

    const-string v5, "1"

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4550
    invoke-static {}, Landroid/os/UserManager;->isGuestUserAllowEphemeralStateChange()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4556
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "remove_guest_on_exit"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2d

    move v3, v5

    .line 4559
    .local v3, "resetGuestOnExit":Z
    :cond_2d
    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 4560
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v5}, Landroid/os/UserManager;->setUserEphemeral(IZ)Z
    :try_end_3a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_3a} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3a} :catch_3b

    .line 4563
    .end local v3    # "resetGuestOnExit":Z
    :cond_3a
    return-object v1

    .line 4566
    .end local v1    # "guest":Landroid/content/pm/UserInfo;
    :catch_3b
    move-exception v0

    .line 4567
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4564
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_41
    move-exception v1

    .line 4565
    .local v1, "e":Landroid/os/ServiceSpecificException;
    return-object v0
.end method

.method public whitelist createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/os/UserHandle;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 4630
    .local p3, "disallowedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v4, p0, Landroid/os/UserManager;->mUserId:I

    .line 4632
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 4631
    invoke-interface {p3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_11} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_23

    .line 4630
    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "userType":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "userType":Ljava/lang/String;
    :try_start_14
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 4632
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1
    :try_end_1c
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_1c} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 4630
    return-object p1

    .line 4636
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .line 4633
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_30

    .line 4636
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "userType":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    :catch_23
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object p1, v0

    .line 4637
    .end local p2    # "userType":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_27
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 4633
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "userType":Ljava/lang/String;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    :catch_2c
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object p1, v0

    .line 4634
    .end local p2    # "userType":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_30
    iget-object p2, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 4635
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_3e

    const/4 p2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p2, 0x0

    .line 4634
    :goto_3f
    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->returnNullOrThrowUserOperationException(Landroid/os/ServiceSpecificException;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    return-object p2
.end method

.method public greylist createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4661
    invoke-static {p2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "userId":I
    .local v1, "name":Ljava/lang/String;
    .local v3, "flags":I
    .local v4, "userId":I
    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createProfileForUser(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 4681
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "userType":Ljava/lang/String;
    .local v3, "flags":I
    .local v4, "userId":I
    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;

    .line 4706
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_2} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_12

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .end local p5    # "disallowedPackages":[Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "userType":Ljava/lang/String;
    .local v3, "flags":I
    .local v4, "userId":I
    .local v5, "disallowedPackages":[Ljava/lang/String;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_b} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p1

    .line 4710
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .line 4708
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .line 4710
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "userType":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "userId":I
    .end local v5    # "disallowedPackages":[Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    .restart local p5    # "disallowedPackages":[Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 4711
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .end local p5    # "disallowedPackages":[Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    .restart local v3    # "flags":I
    .restart local v4    # "userId":I
    .restart local v5    # "disallowedPackages":[Ljava/lang/String;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 4708
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "userType":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "userId":I
    .end local v5    # "disallowedPackages":[Ljava/lang/String;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    .restart local p5    # "disallowedPackages":[Ljava/lang/String;
    :catch_1e
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 4709
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .end local p5    # "disallowedPackages":[Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    .restart local v3    # "flags":I
    .restart local v4    # "userId":I
    .restart local v5    # "disallowedPackages":[Ljava/lang/String;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_25
    const/4 p2, 0x0

    return-object p2
.end method

.method public blacklist createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;

    .line 4728
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_2} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_12

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .end local p5    # "disallowedPackages":[Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "userType":Ljava/lang/String;
    .local v3, "flags":I
    .local v4, "userId":I
    .local v5, "disallowedPackages":[Ljava/lang/String;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_b} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p1

    .line 4732
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .line 4730
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .line 4732
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "userType":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "userId":I
    .end local v5    # "disallowedPackages":[Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    .restart local p5    # "disallowedPackages":[Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 4733
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .end local p5    # "disallowedPackages":[Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    .restart local v3    # "flags":I
    .restart local v4    # "userId":I
    .restart local v5    # "disallowedPackages":[Ljava/lang/String;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 4730
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "userType":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "userId":I
    .end local v5    # "disallowedPackages":[Ljava/lang/String;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    .restart local p5    # "disallowedPackages":[Ljava/lang/String;
    :catch_1e
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 4731
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .end local p5    # "disallowedPackages":[Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "userType":Ljava/lang/String;
    .restart local v3    # "flags":I
    .restart local v4    # "userId":I
    .restart local v5    # "disallowedPackages":[Ljava/lang/String;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_25
    const/4 p2, 0x0

    return-object p2
.end method

.method public greylist-max-o createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 4753
    :try_start_0
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    .line 4754
    .local v0, "parentUserId":I
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, v0}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4755
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 4756
    .local v2, "parentUserHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 4757
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 4756
    invoke-virtual {v3, v2, v4}, Landroid/accounts/AccountManager;->addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_1b} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 4758
    return-object v1

    .line 4761
    .end local v0    # "parentUserId":I
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "parentUserHandle":Landroid/os/UserHandle;
    :catch_1c
    move-exception v0

    .line 4762
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4759
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 4760
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4422
    invoke-static {p2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 4449
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4452
    :catch_7
    move-exception v0

    .line 4453
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4450
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 4451
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist createUser(Landroid/os/NewUserRequest;)Landroid/os/NewUserResponse;
    .registers 10
    .param p1, "newUserRequest"    # Landroid/os/NewUserRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4469
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 4470
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4471
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getUserType()Ljava/lang/String;

    move-result-object v2

    .line 4472
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getFlags()I

    move-result v3

    .line 4473
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getUserIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4474
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 4475
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getAccountType()Ljava/lang/String;

    move-result-object v6

    .line 4476
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getAccountOptions()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 4469
    invoke-interface/range {v0 .. v7}, Landroid/os/IUserManager;->createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 4478
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/os/NewUserResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/os/NewUserResponse;-><init>(Landroid/os/UserHandle;I)V
    :try_end_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_28} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 4483
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :catch_29
    move-exception v0

    .line 4484
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4480
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_2f
    move-exception v0

    .line 4481
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while creating user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4482
    new-instance v1, Landroid/os/NewUserResponse;

    const/4 v2, 0x0

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/os/NewUserResponse;-><init>(Landroid/os/UserHandle;I)V

    return-object v1
.end method

.method public greylist-max-o evictCredentialEncryptionKey(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 5024
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->evictCredentialEncryptionKey(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5027
    nop

    .line 5028
    return-void

    .line 5025
    :catch_7
    move-exception v0

    .line 5026
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4583
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getGuestUsers()Ljava/util/List;

    move-result-object v0

    .line 4584
    .local v0, "guestUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 4585
    const/4 v1, 0x0

    return-object v1

    .line 4587
    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 4588
    .end local v0    # "guestUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_16
    move-exception v0

    .line 4589
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAliveUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5087
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllProfiles()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6739
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 6740
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    .line 6739
    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 6741
    :catch_b
    move-exception v0

    .line 6742
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 6759
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 6760
    :catch_b
    move-exception v0

    .line 6761
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "badgedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    .line 6112
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 6082
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 6165
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6166
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6167
    return-object p1

    .line 6169
    :cond_b
    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 6170
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    .line 6171
    invoke-direct {p0, v0}, Landroid/os/UserManager;->getUpdatableUserBadgedLabelId(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/UserManager$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, p1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda11;-><init>(Landroid/os/UserManager;Ljava/lang/CharSequence;I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    .line 6170
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getBootUser()Landroid/os/UserHandle;
    .registers 3

    .line 6900
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getBootUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 6901
    :catch_b
    move-exception v0

    .line 6902
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCommunalProfile()Landroid/os/UserHandle;
    .registers 3

    .line 3062
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getCommunalProfileId()I

    move-result v0

    .line 3063
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 3064
    const/4 v1, 0x0

    return-object v1

    .line 3066
    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 3067
    .end local v0    # "userId":I
    :catch_11
    move-exception v0

    .line 3068
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getCredentialOwnerProfile(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 5741
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5742
    :catch_7
    move-exception v0

    .line 5743
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 6811
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6812
    :catch_7
    move-exception v0

    .line 6813
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getEnabledProfileIds(I)[I
    .registers 4
    .param p1, "userId"    # I

    .line 5697
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfileIdsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5698
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/UserManager;)V

    .line 5699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5698
    invoke-static {v0, v1}, Landroid/os/UserManagerCache;->getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I

    move-result-object v0

    return-object v0

    .line 5701
    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEnabledProfiles()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5587
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getEnabledProfiles(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5544
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 5545
    :catch_8
    move-exception v0

    .line 5546
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getGuestUsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4600
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getGuestUsers()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4601
    :catch_7
    move-exception v0

    .line 4602
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMainDisplayIdAssignedToUser()I
    .registers 3

    .line 3836
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getMainDisplayIdAssignedToUser(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3837
    :catch_9
    move-exception v0

    .line 3838
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMainUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3041
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getMainUserId()I

    move-result v0

    .line 3042
    .local v0, "mainUserId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 3043
    const/4 v1, 0x0

    return-object v1

    .line 3045
    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 3046
    .end local v0    # "mainUserId":I
    :catch_11
    move-exception v0

    .line 3047
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreInstallableSystemPackages(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4839
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 4840
    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4841
    .local v0, "installableSystemPackages":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 4842
    const/4 v1, 0x0

    return-object v1

    .line 4844
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 4845
    .end local v0    # "installableSystemPackages":[Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 4846
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPreviousForegroundUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5253
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getPreviousFullUserToEnterForeground()I

    move-result v0

    .line 5254
    .local v0, "previousUser":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 5255
    const/4 v1, 0x0

    return-object v1

    .line 5257
    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 5258
    .end local v0    # "previousUser":I
    :catch_11
    move-exception v0

    .line 5259
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5220
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5221
    :catch_7
    move-exception v0

    .line 5222
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProcessUserId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2853
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public blacklist getProfileAccessibilityString(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .line 6246
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6247
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6248
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Landroid/os/UserManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/UserManager;I)V

    const-string v3, "SystemUi.STATUS_BAR_WORK_ICON_ACCESSIBILITY"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 6252
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_20
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileAccessibilityLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getProfileIds(IZ)[I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 5657
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfileIdsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5658
    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    :goto_11
    return-object v0

    .line 5661
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    .line 5662
    :catch_19
    move-exception v0

    .line 5663
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProfileIdsExcludingHidden(IZ)[I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 5725
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getProfileIdsExcludingHidden(IZ)[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5726
    :catch_7
    move-exception v0

    .line 5727
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getProfileIdsWithDisabled(I)[I
    .registers 4
    .param p1, "userId"    # I

    .line 5679
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfileIdsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5680
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda15;-><init>(Landroid/os/UserManager;)V

    .line 5681
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5680
    invoke-static {v0, v1}, Landroid/os/UserManagerCache;->getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I

    move-result-object v0

    return-object v0

    .line 5683
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProfileLabel()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6209
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6210
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6211
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda12;-><init>(Landroid/os/UserManager;)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6215
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_22
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultProfileLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 5760
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5761
    :catch_7
    move-exception v0

    .line 5762
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5782
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfileParentReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 5783
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/UserManager;)V

    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 5793
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_19

    .line 5794
    return-object v1

    .line 5796
    :cond_19
    return-object v0

    .line 5798
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :cond_1a
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5799
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_25

    .line 5800
    return-object v1

    .line 5802
    :cond_25
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1
.end method

.method public greylist getProfiles(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5445
    invoke-static {}, Landroid/multiuser/Flags;->cacheProfilesReadOnly()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5446
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/UserManager;)V

    .line 5448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5446
    invoke-static {v0, v1}, Landroid/os/UserManagerCache;->getProfiles(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5451
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1c

    return-object v0

    .line 5452
    :catch_1c
    move-exception v0

    .line 5453
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProfilesIncludingCommunal(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5473
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 5474
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Landroid/os/UserManager;->getCommunalProfile()Landroid/os/UserHandle;

    move-result-object v1

    .line 5475
    .local v1, "communalProfile":Landroid/os/UserHandle;
    if-eqz v1, :cond_17

    .line 5476
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 5477
    .local v2, "communalInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_17

    .line 5478
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5481
    .end local v2    # "communalInfo":Landroid/content/pm/UserInfo;
    :cond_17
    return-object v0
.end method

.method public whitelist getRemainingCreatableProfileCount(Ljava/lang/String;)I
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5353
    const-string/jumbo v0, "userType must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5356
    :try_start_6
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getRemainingCreatableProfileCount(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 5357
    :catch_f
    move-exception v0

    .line 5358
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5329
    const-string/jumbo v0, "userType must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5331
    :try_start_6
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getRemainingCreatableUserCount(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 5332
    :catch_d
    move-exception v0

    .line 5333
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRestrictedProfileParent()Landroid/os/UserHandle;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3399
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3400
    .local v0, "info":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3401
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_11

    return-object v1

    .line 3402
    :cond_11
    iget v2, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3403
    .local v2, "parent":I
    const/16 v3, -0x2710

    if-ne v2, v3, :cond_18

    return-object v1

    .line 3404
    :cond_18
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSeedAccountName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4860
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getSeedAccountName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4861
    :catch_b
    move-exception v0

    .line 4862
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4893
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getSeedAccountOptions(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4894
    :catch_b
    move-exception v0

    .line 4895
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSeedAccountType()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4876
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getSeedAccountType(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4877
    :catch_b
    move-exception v0

    .line 4878
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSerialNumberForUser(Landroid/os/UserHandle;)J
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 4388
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getSerialNumbersOfUsers(Z)[J
    .registers 7
    .param p1, "excludeDying"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5165
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    .line 5167
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 5168
    .local v1, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_1d

    .line 5169
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 5168
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5171
    .end local v2    # "i":I
    :cond_1d
    return-object v1
.end method

.method public greylist-max-o getUserAccount(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 5184
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5185
    :catch_7
    move-exception v0

    .line 5186
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserBadge()Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6132
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6135
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6136
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6137
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/UserManager;)V

    const-string v3, "WORK_PROFILE_ICON_BADGE"

    const-string v4, "SOLID_COLORED"

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 6141
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2c
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 6133
    :cond_33
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "No badge found for this user."

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUserBadgeColor(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 5969
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeColorResId(I)I

    move-result v0

    .line 5970
    .local v0, "resourceId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    .line 5971
    .end local v0    # "resourceId":I
    :catch_10
    move-exception v0

    .line 5972
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserBadgeDarkColor(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 5990
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeDarkColorResId(I)I

    move-result v0

    .line 5991
    .local v0, "resourceId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    .line 5992
    .end local v0    # "resourceId":I
    :catch_10
    move-exception v0

    .line 5993
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserBadgeNoBackgroundResId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 6042
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeNoBackgroundResId(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6043
    :catch_7
    move-exception v0

    .line 6044
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserBadgeResId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 6025
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeResId(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6026
    :catch_7
    move-exception v0

    .line 6027
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserCount()I
    .registers 3

    .line 5038
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 5039
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    return v1
.end method

.method public whitelist getUserCreationTime(Landroid/os/UserHandle;)J
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 6826
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserCreationTime(I)J

    move-result-wide v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 6827
    :catch_b
    move-exception v0

    .line 6828
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserForSerialNumber(J)Landroid/os/UserHandle;
    .registers 5
    .param p1, "serialNumber"    # J

    .line 4401
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    .line 4402
    .local v0, "ident":I
    if-ltz v0, :cond_d

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist getUserHandle()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2838
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    return v0
.end method

.method public greylist getUserHandle(I)I
    .registers 4
    .param p1, "userSerialNumber"    # I

    .line 6699
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserHandle(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6700
    :catch_7
    move-exception v0

    .line 6701
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserHandles(Z)Ljava/util/List;
    .registers 7
    .param p1, "excludeDying"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5143
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    .line 5145
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5146
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 5147
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5148
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_12

    .line 5149
    :cond_26
    return-object v1
.end method

.method public whitelist getUserIcon()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6547
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserIcon(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "userId"    # I

    .line 6518
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_21

    .line 6519
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_1e

    .line 6521
    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_16

    .line 6524
    :try_start_10
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_21

    .line 6526
    goto :goto_15

    .line 6525
    :catch_14
    move-exception v2

    .line 6521
    :goto_15
    return-object v1

    .line 6523
    :catchall_16
    move-exception v1

    .line 6524
    :try_start_17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_21

    .line 6526
    goto :goto_1c

    .line 6525
    :catch_1b
    move-exception v2

    .line 6527
    :goto_1c
    nop

    .end local p0    # "this":Landroid/os/UserManager;
    .end local p1    # "userId":I
    :try_start_1d
    throw v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1e} :catch_21

    .line 6531
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/UserManager;
    .restart local p1    # "userId":I
    :cond_1e
    nop

    .line 6532
    const/4 v0, 0x0

    return-object v0

    .line 6529
    :catch_21
    move-exception v0

    .line 6530
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserIconBadgeResId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 6008
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserIconBadgeResId(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6009
    :catch_7
    move-exception v0

    .line 6010
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 3995
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserInfoReadOnly()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3996
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/UserManagerCache;->getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 3999
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_20

    return-object v0

    .line 4000
    :catch_20
    move-exception v0

    .line 4001
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserLogoutability(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 2817
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserLogoutability(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2818
    :catch_7
    move-exception v0

    .line 2819
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .registers 3

    .line 2889
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    if-ne v0, v1, :cond_15

    .line 2891
    :try_start_8
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserName()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 2892
    :catch_f
    move-exception v0

    .line 2893
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2896
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2897
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_24

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 2898
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1

    .line 2900
    :cond_24
    const-string v1, ""

    return-object v1
.end method

.method public whitelist getUserProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5566
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 5567
    .local v0, "userIds":[I
    invoke-direct {p0, v0}, Landroid/os/UserManager;->convertUserIdsToUserHandles([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4030
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4032
    .local v0, "userId":I
    if-gez v0, :cond_26

    invoke-static {}, Landroid/multiuser/Flags;->fixGetUserPropertyCache()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_26

    .line 4034
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access properties for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4037
    :cond_26
    :goto_26
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserPropertiesCorrectlyReadOnly()Z

    move-result v1

    if-eqz v1, :cond_74

    if-gez v0, :cond_2f

    goto :goto_74

    .line 4046
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4047
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 4048
    .local v2, "processUid":I
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_6a

    if-eq v1, v2, :cond_6a

    .line 4049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The System (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is fetching a copy of UserProperties on behalf of callingUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Possibly it should carefully first clearCallingIdentity or perhaps use UserManagerInternal.getUserProperties() instead?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "UserManager"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4056
    :cond_6a
    new-instance v3, Landroid/os/UserManager$QueryUserId;

    invoke-direct {v3, v0}, Landroid/os/UserManager$QueryUserId;-><init>(I)V

    invoke-direct {p0, v3}, Landroid/os/UserManager;->getUserPropertiesFromQuery(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object v3

    return-object v3

    .line 4040
    .end local v1    # "callingUid":I
    .end local v2    # "processUid":I
    :cond_74
    :goto_74
    :try_start_74
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, v0}, Landroid/os/IUserManager;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object v1
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7a} :catch_7b

    return-object v1

    .line 4041
    :catch_7b
    move-exception v1

    .line 4042
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4104
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 4105
    :catch_b
    move-exception v0

    .line 4106
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 4125
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4126
    :catch_b
    move-exception v0

    .line 4127
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 4143
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4144
    :catch_b
    move-exception v0

    .line 4145
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 4163
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4164
    :catch_b
    move-exception v0

    .line 4165
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getUserSerialNumber(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 6670
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserSerialNumberReadOnly()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 6671
    invoke-static {}, Landroid/multiuser/Flags;->cacheUserSerialNumber()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 6681
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    .line 6682
    :catch_14
    move-exception v0

    .line 6683
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6674
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    if-nez p1, :cond_1e

    .line 6675
    const/4 v0, 0x0

    return v0

    .line 6677
    :cond_1e
    iget-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManagerCache;

    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 6678
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Landroid/os/UserManager$$ExternalSyntheticLambda13;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6677
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManagerCache;->getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public greylist-max-r getUserStartRealtime()J
    .registers 3

    .line 3947
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 3954
    :try_start_a
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserStartRealtime()J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-wide v0

    .line 3955
    :catch_11
    move-exception v0

    .line 3956
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3950
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Calling from a context differing from the calling user is not currently supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUserStatusBarIconResId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 6057
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserStatusBarIconResId(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6058
    :catch_7
    move-exception v0

    .line 6059
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserSwitchability()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2771
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public blacklist getUserSwitchability(Landroid/os/UserHandle;)I
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2789
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserSwitchability(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 2790
    :catch_b
    move-exception v0

    .line 2791
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserType()Ljava/lang/String;
    .registers 3

    .line 2867
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2868
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_b

    const-string v1, ""

    goto :goto_d

    :cond_b
    iget-object v1, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_d
    return-object v1
.end method

.method public greylist-max-r getUserUnlockRealtime()J
    .registers 3

    .line 3969
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 3976
    :try_start_a
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserUnlockRealtime()J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-wide v0

    .line 3977
    :catch_11
    move-exception v0

    .line 3978
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3972
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Calling from a context differing from the calling user is not currently supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getUsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5065
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUsers(Z)Ljava/util/List;
    .registers 3
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5104
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsers(ZZZ)Ljava/util/List;
    .registers 6
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5124
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5125
    :catch_7
    move-exception v0

    .line 5126
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getVisibleUsers()Ljava/util/Set;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 3810
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3812
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    :try_start_5
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getVisibleUsers()[I

    move-result-object v1

    .line 3813
    .local v1, "visibleUserIds":[I
    if-eqz v1, :cond_1e

    .line 3814
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1e

    aget v4, v1, v3

    .line 3815
    .local v4, "userId":I
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_20

    .line 3814
    nop

    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3820
    .end local v1    # "visibleUserIds":[I
    :cond_1e
    nop

    .line 3821
    return-object v0

    .line 3818
    :catch_20
    move-exception v1

    .line 3819
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist hasBadge()Z
    .registers 2

    .line 5952
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasBadge(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 5931
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5933
    const/4 v0, 0x0

    return v0

    .line 5936
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->hasBadge(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 5937
    :catch_f
    move-exception v0

    .line 5938
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 4185
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 4186
    :catch_b
    move-exception v0

    .line 4187
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasRestrictedProfiles()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3380
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->hasRestrictedProfiles(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3381
    :catch_b
    move-exception v0

    .line 3382
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasUserRestriction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 4267
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public greylist hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4285
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4306
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 4340
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4341
    :catch_7
    move-exception v0

    .line 4342
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAdminUser()Z
    .registers 3

    .line 3117
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isAdminUser(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3118
    :catch_b
    move-exception v0

    .line 3119
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCloneProfile()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3581
    invoke-direct {p0}, Landroid/os/UserManager;->getProfileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCommunalProfile()Z
    .registers 2

    .line 3087
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->isCommunalProfile(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCredentialSharableWithParent()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6315
    :try_start_0
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 6316
    :catch_f
    move-exception v0

    .line 6318
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDemoUser()Z
    .registers 3

    .line 3452
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isDemoUser(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3453
    :catch_b
    move-exception v0

    .line 3454
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isEphemeralUser()Z
    .registers 2

    .line 3618
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isForegroundUserAdmin()Z
    .registers 3

    .line 3149
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->isForegroundUserAdmin()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3150
    :catch_7
    move-exception v0

    .line 3151
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isGuestUser()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3435
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3436
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public greylist-max-r isGuestUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3418
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3419
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public greylist isLinkedUser()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3271
    invoke-virtual {p0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    return v0
.end method

.method public whitelist isMainUser()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3018
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3019
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public whitelist isManagedProfile()Z
    .registers 2

    .line 3540
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isManagedProfile(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3562
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isMediaSharedWithParent()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6288
    :try_start_0
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 6289
    :catch_f
    move-exception v0

    .line 6291
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isPrimaryUser()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2973
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2974
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public whitelist isPrivateProfile()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3603
    invoke-direct {p0}, Landroid/os/UserManager;->getProfileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProfile()Z
    .registers 2

    .line 3471
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3479
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    .line 3480
    .local v0, "profileType":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public whitelist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 5906
    invoke-static {}, Landroid/multiuser/Flags;->cacheQuietModeState()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5907
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 5908
    .local v0, "userId":I
    if-gez v0, :cond_e

    .line 5909
    const/4 v1, 0x0

    return v1

    .line 5911
    :cond_e
    iget-object v1, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserManagerCache;

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/UserManager;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/UserManagerCache;->isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 5915
    .end local v0    # "userId":I
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2b

    return v0

    .line 5916
    :catch_2b
    move-exception v0

    .line 5917
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRestrictedProfile()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3297
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isRestricted(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3298
    :catch_b
    move-exception v0

    .line 3299
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRestrictedProfile(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3325
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isRestricted(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3326
    :catch_b
    move-exception v0

    .line 3327
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isSameProfileGroup(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 5513
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5514
    :catch_7
    move-exception v0

    .line 5515
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSameProfileGroup(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "otherUser"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5498
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    return v0
.end method

.method public blacklist isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 4359
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IUserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4360
    :catch_7
    move-exception v0

    .line 4361
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSystemUser()Z
    .registers 2

    .line 2986
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isUserAGoat()Z
    .registers 3

    .line 2944
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_e

    .line 2945
    const/4 v0, 0x0

    return v0

    .line 2949
    :cond_e
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2950
    const-string v1, "com.coffeestainstudios.goatsimulator"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 2949
    return v0
.end method

.method public greylist isUserAdmin(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3134
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3135
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public greylist-max-o isUserEphemeral(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3630
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3631
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist isUserForeground()Z
    .registers 3

    .line 3705
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserForeground(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3706
    :catch_9
    move-exception v0

    .line 3707
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUserNameSet()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2924
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserNameSet(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 2925
    :catch_b
    move-exception v0

    .line 2926
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUserOfType(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3171
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Landroid/os/IUserManager;->isUserOfType(ILjava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3172
    :catch_9
    move-exception v0

    .line 3173
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isUserRunning(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3661
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3662
    :catch_7
    move-exception v0

    .line 3663
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUserRunning(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 3653
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 3687
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3688
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3687
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 3689
    :catch_e
    move-exception v0

    .line 3690
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isUserSwitcherEnabled()Z
    .registers 2

    .line 6577
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isUserSwitcherEnabled(Z)Z
    .registers 4
    .param p1, "showEvenIfNotActionable"    # Z

    .line 6596
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->isUserSwitcherEnabled(ZI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 6597
    :catch_9
    move-exception v0

    .line 6598
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 5417
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5418
    :catch_7
    move-exception v0

    .line 5419
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUserUnlocked()Z
    .registers 2

    .line 3863
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public greylist isUserUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3896
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/UserManagerCache;->isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isUserUnlocked(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 3887
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isUserUnlockingOrUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3934
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 3935
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda10;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/UserManagerCache;->isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    .line 3934
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3926
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUserVisible()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3791
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserVisible(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3792
    :catch_9
    move-exception v0

    .line 3793
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isVisibleBackgroundUsersOnDefaultDisplaySupported()Z
    .registers 2

    .line 3763
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleBackgroundUsersSupported()Z
    .registers 2

    .line 3739
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o markGuestForDeletion(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 4946
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4947
    :catch_7
    move-exception v0

    .line 4948
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist preCreateUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4524
    const-string v0, "UserManager"

    const-string/jumbo v1, "preCreateUser(): Pre-created user is deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    :try_start_8
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_e} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 4529
    :catch_f
    move-exception v0

    .line 4530
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4527
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 4528
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/os/UserManager$UserOperationException;->from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;

    move-result-object v1

    throw v1
.end method

.method public greylist removeUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 6332
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6333
    :catch_7
    move-exception v0

    .line 6334
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeUser(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6350
    if-eqz p1, :cond_b

    .line 6353
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    return v0

    .line 6351
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "user cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o removeUserEvenWhenDisallowed(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 6369
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6370
    :catch_7
    move-exception v0

    .line 6371
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeUserWhenPossible(Landroid/os/UserHandle;Z)I
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "overrideDevicePolicy"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6398
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/os/IUserManager;->removeUserWhenPossible(IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 6399
    :catch_b
    move-exception v0

    .line 6400
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    .registers 4
    .param p1, "enableQuietMode"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 5837
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method public whitelist requestQuietModeEnabled(ZLandroid/os/UserHandle;I)Z
    .registers 5
    .param p1, "enableQuietMode"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "flags"    # I

    .line 5856
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z
    .registers 5
    .param p1, "enableQuietMode"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "target"    # Landroid/content/IntentSender;

    .line 5870
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z

    move-result v0

    return v0
.end method

.method public blacklist requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z
    .registers 11
    .param p1, "enableQuietMode"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "target"    # Landroid/content/IntentSender;
    .param p4, "flags"    # I

    .line 5885
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 5886
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 5885
    move v2, p1

    move-object v4, p3

    move v5, p4

    .end local p1    # "enableQuietMode":Z
    .end local p3    # "target":Landroid/content/IntentSender;
    .end local p4    # "flags":I
    .local v2, "enableQuietMode":Z
    .local v4, "target":Landroid/content/IntentSender;
    .local v5, "flags":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return p1

    .line 5888
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v2    # "enableQuietMode":Z
    .end local v4    # "target":Landroid/content/IntentSender;
    .end local v5    # "flags":I
    .restart local p1    # "enableQuietMode":Z
    .restart local p3    # "target":Landroid/content/IntentSender;
    .restart local p4    # "flags":I
    :catch_17
    move-exception v0

    move v2, p1

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 5889
    .end local p3    # "target":Landroid/content/IntentSender;
    .end local p4    # "flags":I
    .restart local v2    # "enableQuietMode":Z
    .restart local v4    # "target":Landroid/content/IntentSender;
    .restart local v5    # "flags":I
    .local p1, "re":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public blacklist revokeUserAdmin(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 5010
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->revokeUserAdmin(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5013
    nop

    .line 5014
    return-void

    .line 5011
    :catch_7
    move-exception v0

    .line 5012
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 6772
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 6775
    nop

    .line 6776
    return-void

    .line 6773
    :catch_b
    move-exception v0

    .line 6774
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBootUser(Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "bootUser"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6883
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->setBootUser(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 6886
    nop

    .line 6887
    return-void

    .line 6884
    :catch_b
    move-exception v0

    .line 6885
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 6798
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6801
    nop

    .line 6802
    return-void

    .line 6799
    :catch_7
    move-exception v0

    .line 6800
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRestrictionsChallenge(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newPin"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6788
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;

    .line 4914
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    .end local p3    # "accountType":Ljava/lang/String;
    .end local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .local v1, "userId":I
    .local v2, "accountName":Ljava/lang/String;
    .local v3, "accountType":Ljava/lang/String;
    .local v4, "accountOptions":Landroid/os/PersistableBundle;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 4918
    nop

    .line 4919
    return-void

    .line 4916
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_15

    .end local v1    # "userId":I
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountOptions":Landroid/os/PersistableBundle;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    .restart local p3    # "accountType":Ljava/lang/String;
    .restart local p4    # "accountOptions":Landroid/os/PersistableBundle;
    :catch_f
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p1, v0

    .line 4917
    .end local p2    # "accountName":Ljava/lang/String;
    .end local p3    # "accountType":Ljava/lang/String;
    .end local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .restart local v1    # "userId":I
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "accountOptions":Landroid/os/PersistableBundle;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o setUserAccount(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 5200
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5203
    nop

    .line 5204
    return-void

    .line 5201
    :catch_7
    move-exception v0

    .line 5202
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserAdmin(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4989
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setUserAdmin(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4992
    nop

    .line 4993
    return-void

    .line 4990
    :catch_7
    move-exception v0

    .line 4991
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserEnabled(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4968
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4971
    nop

    .line 4972
    return-void

    .line 4969
    :catch_7
    move-exception v0

    .line 4970
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserEphemeral(IZ)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enableEphemeral"    # Z

    .line 6452
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserEphemeral(IZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6453
    :catch_7
    move-exception v0

    .line 6454
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 6481
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6486
    nop

    .line 6487
    return-void

    .line 6484
    :catch_7
    move-exception v0

    .line 6485
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6482
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 6483
    .local v0, "e":Landroid/os/ServiceSpecificException;
    return-void
.end method

.method public whitelist setUserIcon(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 6503
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 6504
    return-void
.end method

.method public greylist-max-o setUserName(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 6427
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6430
    nop

    .line 6431
    return-void

    .line 6428
    :catch_7
    move-exception v0

    .line 6429
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUserName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6468
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 6469
    return-void
.end method

.method public whitelist setUserRestriction(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4226
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 4229
    nop

    .line 4230
    return-void

    .line 4227
    :catch_b
    move-exception v0

    .line 4228
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4247
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 4250
    nop

    .line 4251
    return-void

    .line 4248
    :catch_b
    move-exception v0

    .line 4249
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUserRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6862
    const-string v0, "accountName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6863
    const-string v0, "accountType must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6866
    :try_start_a
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 6867
    :catch_11
    move-exception v0

    .line 6868
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 6843
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6844
    :catch_7
    move-exception v0

    .line 6845
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
