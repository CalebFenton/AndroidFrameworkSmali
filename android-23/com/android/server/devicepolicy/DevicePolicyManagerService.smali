.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final ATTR_DELEGATED_CERT_INSTALLER:Ljava/lang/String; = "delegated-cert-installer"

.field private static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field private static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final DBG:Z = false

.field private static final DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400e6

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final PROFILE_KEYGUARD_FEATURES:I = 0x38

.field private static final PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x30

.field private static final PROFILE_WIPED_NOTIFICATION_ID:I = 0x3e9

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_BAR_DISABLE2_MASK:I = 0x1

.field private static final STATUS_BAR_DISABLE_MASK:I = 0x2070000

.field public static final SYSTEM_PROP_DISABLE_CAMERA_PREFIX:Ljava/lang/String; = "sys.secpolicy.camera.off_"

.field private static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field private static final VERBOSE_LOG:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field mNotificationManager:Landroid/app/NotificationManager;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mToken:Landroid/os/Binder;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearWipeProfileNotification()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePasswordExpirationNotification(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "responseBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@7
    .line 200
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "no_usb_file_transfer"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 201
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "no_config_tethering"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 202
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "no_network_reset"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 203
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@21
    const-string/jumbo v1, "no_factory_reset"

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 204
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@29
    const-string/jumbo v1, "no_add_user"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 205
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@31
    const-string/jumbo v1, "no_config_cell_broadcasts"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 206
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@39
    const-string/jumbo v1, "no_config_mobile_networks"

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    .line 207
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@41
    const-string/jumbo v1, "no_physical_media"

    #@44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    .line 208
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@49
    const-string/jumbo v1, "no_unmute_microphone"

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4f
    .line 209
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@51
    const-string/jumbo v1, "no_adjust_volume"

    #@54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57
    .line 210
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@59
    const-string/jumbo v1, "no_sms"

    #@5c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    .line 211
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@61
    const-string/jumbo v1, "no_fun"

    #@64
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@67
    .line 212
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@69
    const-string/jumbo v1, "no_safe_boot"

    #@6c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6f
    .line 213
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@71
    const-string/jumbo v1, "no_create_windows"

    #@74
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@77
    .line 220
    new-instance v0, Ljava/util/HashSet;

    #@79
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@7c
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    #@7e
    .line 221
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    #@80
    const-string/jumbo v1, "no_wallpaper"

    #@83
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@86
    .line 229
    new-instance v0, Ljava/util/HashSet;

    #@88
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8b
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    #@8d
    .line 230
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    #@8f
    const-string/jumbo v1, "default_input_method"

    #@92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@95
    .line 231
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    #@97
    const-string/jumbo v1, "skip_first_use_hints"

    #@9a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9d
    .line 232
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    #@9f
    const-string/jumbo v1, "install_non_market_apps"

    #@a2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a5
    .line 234
    new-instance v0, Ljava/util/HashSet;

    #@a7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@aa
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    #@ac
    .line 235
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    #@ae
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    #@b0
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@b3
    .line 236
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    #@b5
    const-string/jumbo v1, "location_mode"

    #@b8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    .line 238
    new-instance v0, Ljava/util/HashSet;

    #@bd
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c0
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@c2
    .line 239
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@c4
    const-string/jumbo v1, "adb_enabled"

    #@c7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ca
    .line 240
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@cc
    const-string/jumbo v1, "auto_time"

    #@cf
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d2
    .line 241
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@d4
    const-string/jumbo v1, "auto_time_zone"

    #@d7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@da
    .line 242
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@dc
    const-string/jumbo v1, "data_roaming"

    #@df
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e2
    .line 243
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@e4
    const-string/jumbo v1, "usb_mass_storage_enabled"

    #@e7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ea
    .line 244
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@ec
    const-string/jumbo v1, "wifi_sleep_policy"

    #@ef
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f2
    .line 245
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@f4
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@f7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fa
    .line 246
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@fc
    const-string/jumbo v1, "wifi_device_owner_configs_lockdown"

    #@ff
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@102
    .line 248
    new-instance v0, Ljava/util/HashSet;

    #@104
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@107
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@109
    .line 249
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@10b
    const-string/jumbo v1, "bluetooth_on"

    #@10e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@111
    .line 250
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@113
    const-string/jumbo v1, "development_settings_enabled"

    #@116
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@119
    .line 251
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@11b
    const-string/jumbo v1, "mode_ringer"

    #@11e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@121
    .line 252
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@123
    const-string/jumbo v1, "network_preference"

    #@126
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@129
    .line 253
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@12b
    const-string/jumbo v1, "wifi_on"

    #@12e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@131
    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1043
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    #@4
    .line 282
    new-instance v0, Landroid/os/Binder;

    #@6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    #@b
    .line 348
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@12
    .line 350
    new-instance v0, Landroid/os/Handler;

    #@14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@19
    .line 352
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    #@1b
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@20
    .line 1044
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@22
    .line 1045
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@24
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2a
    .line 1046
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2d
    move-result-object v0

    #@2e
    .line 1047
    const-string/jumbo v1, "android.software.device_admin"

    #@31
    .line 1046
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@37
    .line 1048
    const-string/jumbo v0, "power"

    #@3a
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/os/PowerManager;

    #@40
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@42
    .line 1049
    const-class v0, Landroid/os/PowerManagerInternal;

    #@44
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@4a
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@4c
    .line 1050
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@4e
    const-string/jumbo v1, "DPM"

    #@51
    const/4 v2, 0x1

    #@52
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@58
    .line 1051
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    #@5a
    invoke-direct {v0, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;)V

    #@5d
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    #@5f
    .line 1052
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@61
    if-nez v0, :cond_0

    #@63
    .line 1054
    return-void

    #@64
    .line 1056
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    #@66
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@69
    .line 1057
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    #@6c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6f
    .line 1058
    const-string/jumbo v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    #@72
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@75
    .line 1059
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@78
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7b
    .line 1060
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    #@7e
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@81
    .line 1061
    const-string/jumbo v0, "android.security.STORAGE_CHANGED"

    #@84
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@87
    .line 1062
    const/16 v0, 0x3e8

    #@89
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@8c
    .line 1063
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@8e
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@90
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@92
    move-object v0, p1

    #@93
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@96
    .line 1064
    new-instance v3, Landroid/content/IntentFilter;

    #@98
    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@9b
    .line 1065
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@9e
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a1
    .line 1066
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@a4
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a7
    .line 1067
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@aa
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ad
    .line 1068
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@b0
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b3
    .line 1069
    const-string/jumbo v0, "package"

    #@b6
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@b9
    .line 1070
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@bb
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@bd
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@bf
    move-object v0, p1

    #@c0
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@c3
    .line 1071
    new-instance v3, Landroid/content/IntentFilter;

    #@c5
    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@c8
    .line 1072
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@cb
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ce
    .line 1073
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@d0
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d2
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@d4
    move-object v0, p1

    #@d5
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@d8
    .line 1075
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@da
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    #@dc
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@df
    .line 1043
    return-void
.end method

.method private addDeviceInitializerToLockTaskPackagesLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 6195
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 6196
    return-void

    #@7
    .line 6199
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceInitializer()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 6200
    .local v0, "deviceInitializerPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    #@d
    .line 6201
    return-void

    #@e
    .line 6204
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    .line 6205
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_2

    #@18
    .line 6206
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 6207
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    #@1e
    .line 6194
    :cond_2
    return-void
.end method

.method private checkCallerIsCurrentUserOrProfile()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 5173
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v1

    #@5
    .line 5174
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 5177
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@b
    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    .line 5179
    .local v0, "callingUser":Landroid/content/pm/UserInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@12
    move-result-object v6

    #@13
    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v2

    #@17
    .line 5185
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    iget v6, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@1f
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    #@21
    if-eq v6, v7, :cond_0

    #@23
    .line 5186
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@26
    const-string/jumbo v7, "Cannot set permitted input methods for managed profile of a user that isn\'t the foreground user."

    #@29
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 5196
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 5188
    return v8

    #@30
    .line 5180
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v3

    #@31
    .line 5181
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@34
    const-string/jumbo v7, "Failed to talk to activity managed."

    #@37
    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    .line 5196
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 5182
    return v8

    #@3e
    .line 5190
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_1

    #@44
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@46
    if-eq v1, v6, :cond_1

    #@48
    .line 5191
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@4b
    const-string/jumbo v7, "Cannot set permitted input methods of a user that isn\'t the foreground user."

    #@4e
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@51
    .line 5196
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 5193
    return v8

    #@55
    .line 5196
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@58
    .line 5198
    const/4 v6, 0x1

    #@59
    return v6

    #@5a
    .line 5195
    .end local v0    # "callingUser":Landroid/content/pm/UserInfo;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    #@5b
    .line 5196
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5e
    .line 5195
    throw v6
.end method

.method private checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    #@1
    .line 5011
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v9

    #@5
    .line 5012
    .local v9, "userIdToCheck":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 5016
    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@b
    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@e
    move-result-object v8

    #@f
    .line 5017
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@12
    move-result v10

    #@13
    if-eqz v10, :cond_0

    #@15
    .line 5018
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@17
    .line 5021
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@1a
    move-result-object v6

    #@1b
    .line 5022
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "enabledPackage$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v10

    #@23
    if-eqz v10, :cond_3

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 5023
    .local v2, "enabledPackage":Ljava/lang/String;
    const/4 v7, 0x0

    #@2c
    .line 5026
    .local v7, "systemService":Z
    const/16 v10, 0x2000

    #@2e
    .line 5025
    :try_start_1
    invoke-interface {v6, v2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@31
    move-result-object v0

    #@32
    .line 5027
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    and-int/lit8 v10, v10, 0x1

    #@36
    if-eqz v10, :cond_2

    #@38
    const/4 v7, 0x1

    #@39
    .line 5031
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    #@3b
    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    move-result v10

    #@3f
    if-nez v10, :cond_1

    #@41
    .line 5036
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@44
    .line 5032
    return v12

    #@45
    .line 5027
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v7, 0x0

    #@46
    goto :goto_0

    #@47
    .line 5028
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@48
    .line 5029
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@4b
    const-string/jumbo v11, "Can\'t talk to package managed"

    #@4e
    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 5035
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v3    # "enabledPackage$iterator":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "systemService":Z
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    #@53
    .line 5036
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@56
    .line 5035
    throw v10

    #@57
    .line 5036
    .restart local v3    # "enabledPackage$iterator":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@5a
    .line 5038
    const/4 v10, 0x1

    #@5b
    return v10
.end method

.method private cleanUpOldUsers()V
    .locals 10

    #@0
    .prologue
    .line 1806
    monitor-enter p0

    #@1
    .line 1807
    :try_start_0
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@3
    if-eqz v9, :cond_0

    #@5
    .line 1808
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@7
    invoke-virtual {v9}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerKeys()Ljava/util/Set;

    #@a
    move-result-object v8

    #@b
    .line 1809
    .local v8, "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    new-instance v7, Ljava/util/HashSet;

    #@d
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@10
    .line 1810
    .local v7, "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@16
    move-result v9

    #@17
    if-ge v2, v9, :cond_1

    #@19
    .line 1811
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@1e
    move-result v9

    #@1f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v9

    #@23
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 1810
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_1

    #@29
    .line 1808
    .end local v2    # "i":I
    .end local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    #@2b
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .restart local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_0

    #@2f
    .restart local v2    # "i":I
    .restart local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit p0

    #@30
    .line 1814
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@32
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@35
    move-result-object v0

    #@36
    .line 1816
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    #@38
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@3b
    .line 1817
    .local v1, "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@3e
    .line 1818
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@41
    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v6

    #@45
    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v9

    #@49
    if-eqz v9, :cond_2

    #@4b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v5

    #@4f
    check-cast v5, Landroid/content/pm/UserInfo;

    #@51
    .line 1820
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    #@53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v9

    #@57
    invoke-interface {v1, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5a
    goto :goto_2

    #@5b
    .line 1806
    .end local v0    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v1    # "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v9

    #@5c
    monitor-exit p0

    #@5d
    throw v9

    #@5e
    .line 1822
    .restart local v0    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v2    # "i":I
    .restart local v6    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v4

    #@62
    .local v4, "userId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v9

    #@66
    if-eqz v9, :cond_3

    #@68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Ljava/lang/Integer;

    #@6e
    .line 1823
    .local v3, "userId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@71
    move-result v9

    #@72
    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    #@75
    goto :goto_3

    #@76
    .line 1801
    .end local v3    # "userId":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private clearUserPoliciesLocked(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4408
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@4
    move-result v4

    #@5
    .line 4410
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@8
    move-result-object v2

    #@9
    .line 4411
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    #@b
    .line 4412
    const/4 v5, 0x0

    #@c
    iput-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@e
    .line 4413
    iput-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@10
    .line 4414
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@13
    .line 4416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v0

    #@17
    .line 4418
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    #@1a
    .line 4419
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@1d
    move-result-object v5

    #@1e
    .line 4421
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@21
    move-result v6

    #@22
    .line 4420
    const/4 v7, 0x4

    #@23
    .line 4421
    const/4 v8, 0x0

    #@24
    .line 4419
    invoke-interface {v5, v7, v8, v6}, Landroid/content/pm/IPackageManager;->updatePermissionFlagsForAllApps(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 4424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 4407
    :goto_0
    return-void

    #@2b
    .line 4422
    :catch_0
    move-exception v3

    #@2c
    .line 4424
    .local v3, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    goto :goto_0

    #@30
    .line 4423
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@31
    .line 4424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 4423
    throw v5
.end method

.method private clearUserRestrictions(Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4430
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    #@5
    move-result-object v2

    #@6
    .line 4431
    .local v2, "userRestrictions":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@8
    new-instance v4, Landroid/os/Bundle;

    #@a
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@d
    invoke-virtual {v3, v4, p1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@10
    .line 4433
    const-string/jumbo v3, "audio"

    #@13
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@16
    move-result-object v3

    #@17
    .line 4432
    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@1a
    move-result-object v1

    #@1b
    .line 4434
    .local v1, "iAudioService":Landroid/media/IAudioService;
    const-string/jumbo v3, "no_adjust_volume"

    #@1e
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 4436
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@26
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 4437
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@2d
    move-result v4

    #@2e
    .line 4436
    const/4 v5, 0x1

    #@2f
    const/4 v6, 0x0

    #@30
    invoke-interface {v1, v5, v6, v3, v4}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@33
    .line 4442
    :cond_0
    :goto_0
    const-string/jumbo v3, "no_unmute_microphone"

    #@36
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 4444
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@3e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 4445
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@45
    move-result v4

    #@46
    .line 4444
    const/4 v5, 0x1

    #@47
    invoke-interface {v1, v5, v3, v4}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    .line 4429
    :cond_1
    :goto_1
    return-void

    #@4b
    .line 4446
    :catch_0
    move-exception v0

    #@4c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@4d
    .line 4438
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@4e
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private clearWipeProfileNotification()V
    .locals 2

    #@0
    .prologue
    .line 3419
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x3e9

    #@6
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    #@9
    .line 3418
    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 4744
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v0

    #@4
    .line 4746
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    #@7
    .line 4745
    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v6

    #@b
    .line 4748
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@d
    .line 4749
    const/4 v2, 0x4

    #@e
    .line 4748
    if-ne v1, v2, :cond_0

    #@10
    .line 4752
    const-string/jumbo v5, "DevicePolicyManager"

    #@13
    .line 4751
    const/4 v2, 0x0

    #@14
    .line 4752
    const/4 v3, 0x1

    #@15
    move-object v1, p1

    #@16
    move v4, p2

    #@17
    .line 4750
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 4742
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 4754
    :catch_0
    move-exception v7

    #@1c
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enforceCanSetDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4283
    if-nez p1, :cond_0

    #@3
    .line 4284
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@5
    .line 4285
    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    #@8
    .line 4284
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 4286
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 4287
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    .line 4288
    const-string/jumbo v1, "Trying to set device initializer but device is already provisioned."

    #@17
    .line 4287
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 4291
    :cond_0
    const/4 v0, -0x2

    #@1c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1f
    .line 4282
    :cond_1
    return-void
.end method

.method private enforceCanSetDeviceOwner()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4672
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@8
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 4673
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v2, "Trying to set the device owner, but device owner is already set."

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 4676
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1a
    move-result v0

    #@1b
    .line 4677
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    #@1d
    if-eq v0, v1, :cond_1

    #@1f
    if-nez v0, :cond_5

    #@21
    .line 4678
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_2

    #@27
    .line 4679
    return-void

    #@28
    .line 4681
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2a
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    #@2d
    move-result v1

    #@2e
    const/4 v2, 0x1

    #@2f
    if-le v1, v2, :cond_3

    #@31
    .line 4682
    new-instance v1, Ljava/lang/IllegalStateException;

    #@33
    const-string/jumbo v2, "Not allowed to set the device owner because there are already several users on the device"

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 4685
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@3c
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@43
    move-result-object v1

    #@44
    array-length v1, v1

    #@45
    if-lez v1, :cond_4

    #@47
    .line 4686
    new-instance v1, Ljava/lang/IllegalStateException;

    #@49
    const-string/jumbo v2, "Not allowed to set the device owner because there are already some accounts on the device"

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 4689
    :cond_4
    return-void

    #@51
    .line 4691
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@53
    .line 4692
    const-string/jumbo v2, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    #@56
    .line 4691
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@59
    .line 4693
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_6

    #@5f
    .line 4694
    new-instance v1, Ljava/lang/IllegalStateException;

    #@61
    const-string/jumbo v2, "Cannot set the device owner if the device is already set-up"

    #@64
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@67
    throw v1

    #@68
    .line 4671
    :cond_6
    return-void
.end method

.method private enforceCanSetProfileOwner(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4634
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@3
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@6
    move-result-object v1

    #@7
    .line 4635
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    #@9
    .line 4637
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    .line 4638
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Attempted to set profile owner for invalid userId: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 4637
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 4640
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 4641
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2b
    const-string/jumbo v3, "Cannot set a profile owner on a guest"

    #@2e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 4643
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@35
    move-result-object v2

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 4644
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3a
    const-string/jumbo v3, "Trying to set the profile owner, but profile owner is already set."

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 4647
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@44
    move-result v0

    #@45
    .line 4648
    .local v0, "callingUid":I
    const/16 v2, 0x7d0

    #@47
    if-eq v0, v2, :cond_3

    #@49
    if-nez v0, :cond_5

    #@4b
    .line 4649
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_4

    #@51
    .line 4650
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@53
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    #@5a
    move-result-object v2

    #@5b
    array-length v2, v2

    #@5c
    if-lez v2, :cond_4

    #@5e
    .line 4651
    new-instance v2, Ljava/lang/IllegalStateException;

    #@60
    const-string/jumbo v3, "Not allowed to set the profile owner because there are already some accounts on the profile"

    #@63
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2

    #@67
    .line 4654
    :cond_4
    return-void

    #@68
    .line 4656
    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@6a
    .line 4657
    const-string/jumbo v3, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    #@6d
    .line 4656
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@70
    .line 4658
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@73
    move-result v2

    #@74
    if-eqz v2, :cond_6

    #@76
    .line 4659
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@79
    move-result v2

    #@7a
    const/16 v3, 0x3e8

    #@7c
    if-eq v2, v3, :cond_6

    #@7e
    .line 4660
    new-instance v2, Ljava/lang/IllegalStateException;

    #@80
    const-string/jumbo v3, "Cannot set the profile owner on a user which is already set-up"

    #@83
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@86
    throw v2

    #@87
    .line 4633
    :cond_6
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 4700
    if-gez p1, :cond_0

    #@2
    .line 4701
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "Invalid userId "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 4703
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v0

    #@20
    .line 4704
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@23
    move-result v1

    #@24
    if-ne p1, v1, :cond_1

    #@26
    return-void

    #@27
    .line 4705
    :cond_1
    const/16 v1, 0x3e8

    #@29
    if-eq v0, v1, :cond_2

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 4706
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2f
    .line 4707
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@32
    const-string/jumbo v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    #@35
    .line 4706
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 4699
    :cond_2
    return-void
.end method

.method private enforceNotManagedProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4719
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4720
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "You can not "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " for a managed profile. "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 4718
    :cond_0
    return-void
.end method

.method private enforceSystemProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 4714
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 4712
    :cond_0
    return-void
.end method

.method private getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5045
    const-string/jumbo v2, "accessibility"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 5046
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@9
    .line 5047
    const/4 v1, 0x0

    #@a
    .line 5048
    :goto_0
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    #@c
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-direct {v2, v3, v1, p1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    #@11
    return-object v2

    #@12
    .line 5047
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@15
    move-result-object v1

    #@16
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    goto :goto_0
.end method

.method private getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1244
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@4
    move-result v3

    #@5
    .line 1245
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@8
    move-result-object v2

    #@9
    .line 1246
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    #@b
    .line 1247
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@d
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@13
    .line 1248
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    #@15
    .line 1249
    new-instance v4, Ljava/lang/SecurityException;

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "No active admin "

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v4

    #@2f
    .line 1251
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    #@32
    move-result v4

    #@33
    if-eq v4, p3, :cond_1

    #@35
    .line 1252
    new-instance v4, Ljava/lang/SecurityException;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Admin "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    const-string/jumbo v6, " is not owned by uid "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 1253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@51
    move-result v6

    #@52
    .line 1252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4

    #@5e
    .line 1255
    :cond_1
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_4

    #@64
    .line 1256
    return-object v0

    #@65
    .line 1259
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@67
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v1

    #@6b
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_4

    #@71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@77
    .line 1260
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    #@7a
    move-result v4

    #@7b
    if-ne v4, p3, :cond_3

    #@7d
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z

    #@80
    move-result v4

    #@81
    if-eqz v4, :cond_3

    #@83
    .line 1262
    return-object v0

    #@84
    .line 1267
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v5
.end method

.method private getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2811
    const/4 v2, 0x0

    #@1
    .line 2812
    .local v2, "count":I
    const/4 v4, 0x0

    #@2
    .line 2813
    .local v4, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@4
    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@7
    move-result-object v7

    #@8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v6

    #@c
    .end local v4    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_4

    #@12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Landroid/content/pm/UserInfo;

    #@18
    .line 2814
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@1a
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@1d
    move-result-object v3

    #@1e
    .line 2815
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v7, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@20
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@30
    .line 2816
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@32
    if-eqz v7, :cond_1

    #@34
    .line 2822
    if-eqz v2, :cond_2

    #@36
    .line 2823
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@38
    if-le v2, v7, :cond_3

    #@3a
    .line 2825
    :cond_2
    :goto_1
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@3c
    .line 2826
    move-object v4, v0

    #@3d
    .local v4, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    goto :goto_0

    #@3e
    .line 2824
    .end local v4    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_1

    #@44
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@46
    if-lt v2, v7, :cond_1

    #@48
    goto :goto_1

    #@49
    .line 2830
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    return-object v4
.end method

.method private getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 4603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v6

    #@5
    .line 4607
    .local v6, "token":J
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    #@7
    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@a
    .line 4608
    .local v1, "handle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@c
    const/4 v10, 0x0

    #@d
    invoke-virtual {v9, p1, v10, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v5

    #@11
    .line 4613
    .local v5, "userContext":Landroid/content/Context;
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v0

    #@15
    .line 4614
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    #@16
    .line 4615
    .local v4, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@18
    .line 4616
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v3

    #@1c
    .line 4617
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1f
    move-result-object v4

    #@20
    .line 4619
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "result":Ljava/lang/CharSequence;
    :cond_0
    if-eqz v4, :cond_1

    #@22
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-object v8

    #@26
    .line 4621
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 4619
    return-object v8

    #@2a
    .line 4609
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "handle":Landroid/os/UserHandle;
    .end local v5    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    #@2b
    .line 4610
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string/jumbo v9, "DevicePolicyManagerService"

    #@2e
    new-instance v10, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v10

    #@37
    const-string/jumbo v11, " is not installed for user "

    #@3a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v10

    #@3e
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 4621
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 4611
    return-object v8

    #@4d
    .line 4620
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    #@4e
    .line 4621
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 4620
    throw v8
.end method

.method private getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4199
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 4200
    .local v1, "deviceOwnerPackageName":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 4201
    return-object v6

    #@8
    .line 4204
    :cond_0
    const/4 v5, 0x0

    #@9
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@c
    move-result-object v4

    #@d
    .line 4205
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v3

    #@13
    .line 4206
    .local v3, "n":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@16
    .line 4207
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1e
    .line 4208
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@20
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 4209
    return-object v0

    #@2b
    .line 4206
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 4212
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    return-object v6
.end method

.method private getEncryptionStatus()I
    .locals 5

    #@0
    .prologue
    .line 3846
    const-string/jumbo v1, "ro.crypto.state"

    #@3
    const-string/jumbo v4, "unsupported"

    #@6
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 3847
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "encrypted"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 3848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 3850
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 3851
    const/4 v1, 0x3

    #@1e
    .line 3854
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 3850
    return v1

    #@22
    .line 3852
    :cond_0
    const/4 v1, 0x4

    #@23
    goto :goto_0

    #@24
    .line 3853
    :catchall_0
    move-exception v1

    #@25
    .line 3854
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 3853
    throw v1

    #@29
    .line 3856
    .end local v2    # "token":J
    :cond_1
    const-string/jumbo v1, "unencrypted"

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 3857
    const/4 v1, 0x1

    #@33
    return v1

    #@34
    .line 3859
    :cond_2
    const/4 v1, 0x0

    #@35
    return v1
.end method

.method private getLockTaskPackagesLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5939
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@3
    move-result-object v0

    #@4
    .line 5940
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@6
    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    #@0
    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1196
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "notification"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/NotificationManager;

    #@f
    .line 1195
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@11
    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@13
    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2382
    const-wide/16 v8, 0x0

    #@2
    .line 2384
    .local v8, "timeout":J
    if-eqz p1, :cond_1

    #@4
    .line 2385
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@7
    move-result-object v3

    #@8
    .line 2386
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    #@a
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@c
    :goto_0
    return-wide v12

    #@d
    .line 2382
    :cond_0
    const-wide/16 v12, 0x0

    #@f
    .line 2386
    goto :goto_0

    #@10
    .line 2389
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-object/from16 v0, p0

    #@12
    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@14
    move/from16 v0, p2

    #@16
    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@19
    move-result-object v6

    #@1a
    .line 2390
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v10

    #@1e
    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v11

    #@22
    if-eqz v11, :cond_5

    #@24
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v7

    #@28
    check-cast v7, Landroid/content/pm/UserInfo;

    #@2a
    .line 2391
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    #@2c
    move-object/from16 v0, p0

    #@2e
    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@31
    move-result-object v5

    #@32
    .line 2392
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v2

    #@38
    .line 2393
    .local v2, "N":I
    const/4 v4, 0x0

    #@39
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    #@3b
    .line 2394
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@43
    .line 2395
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    #@45
    cmp-long v11, v8, v12

    #@47
    if-eqz v11, :cond_3

    #@49
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@4b
    const-wide/16 v14, 0x0

    #@4d
    cmp-long v11, v12, v14

    #@4f
    if-eqz v11, :cond_4

    #@51
    .line 2396
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@53
    cmp-long v11, v8, v12

    #@55
    if-lez v11, :cond_4

    #@57
    .line 2397
    :cond_3
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@59
    .line 2393
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 2401
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    return-wide v8
.end method

.method private getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4571
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@3
    if-eqz v5, :cond_0

    #@5
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@7
    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    #@a
    move-result-object v4

    #@b
    .line 4572
    :goto_0
    if-nez v4, :cond_1

    #@d
    .line 4573
    return-object v6

    #@e
    .line 4571
    :cond_0
    const/4 v4, 0x0

    #@f
    .local v4, "profileOwner":Landroid/content/ComponentName;
    goto :goto_0

    #@10
    .line 4575
    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@13
    move-result-object v3

    #@14
    .line 4576
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v2

    #@1a
    .line 4577
    .local v2, "n":I
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@1d
    .line 4578
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@25
    .line 4579
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@27
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    .line 4580
    return-object v0

    #@32
    .line 4577
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1

    #@35
    .line 4583
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    return-object v6
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 4725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 4727
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@6
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v2

    #@a
    .line 4729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 4727
    return-object v2

    #@e
    .line 4728
    :catchall_0
    move-exception v2

    #@f
    .line 4729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 4728
    throw v2
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    #@0
    .prologue
    .line 1186
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1187
    const-string/jumbo v1, "window"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 1188
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@11
    .line 1190
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@13
    return-object v1
.end method

.method private handlePackagesChanged(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 993
    const/4 v7, 0x0

    #@1
    .line 995
    .local v7, "removed":Z
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@4
    move-result-object v5

    #@5
    .line 996
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@8
    move-result-object v4

    #@9
    .line 997
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    monitor-enter p0

    #@a
    .line 998
    :try_start_0
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v8

    #@10
    add-int/lit8 v3, v8, -0x1

    #@12
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    #@14
    .line 999
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1003
    .local v0, "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@1e
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 1004
    .local v1, "adminPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_2

    #@2a
    .line 1005
    :cond_0
    const/4 v8, 0x0

    #@2b
    invoke-interface {v4, v1, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@2e
    move-result-object v8

    #@2f
    if-eqz v8, :cond_1

    #@31
    .line 1006
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@33
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@36
    move-result-object v8

    #@37
    const/4 v9, 0x0

    #@38
    invoke-interface {v4, v8, v9, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@3b
    move-result-object v8

    #@3c
    if-nez v8, :cond_2

    #@3e
    .line 1008
    :cond_1
    const/4 v7, 0x1

    #@3f
    .line 1009
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@44
    .line 1010
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@46
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@48
    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    .line 998
    .end local v1    # "adminPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@51
    goto :goto_0

    #@52
    .line 1017
    .end local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eqz v7, :cond_4

    #@54
    .line 1018
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@57
    .line 1019
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@5a
    .line 1020
    iget v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@5c
    invoke-direct {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@5f
    .line 1023
    :cond_4
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@61
    if-eqz v8, :cond_6

    #@63
    .line 1024
    if-eqz p1, :cond_5

    #@65
    .line 1025
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@67
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    move-result v8

    #@6b
    .line 1023
    if-eqz v8, :cond_6

    #@6d
    .line 1029
    :cond_5
    :try_start_3
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@6f
    const/4 v9, 0x0

    #@70
    .line 1028
    invoke-interface {v4, v8, v9, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@73
    move-result-object v8

    #@74
    if-nez v8, :cond_6

    #@76
    .line 1030
    const/4 v8, 0x0

    #@77
    iput-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@79
    .line 1031
    iget v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@7b
    invoke-direct {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    :cond_6
    :goto_2
    monitor-exit p0

    #@7f
    .line 992
    return-void

    #@80
    .line 997
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    #@81
    monitor-exit p0

    #@82
    throw v8

    #@83
    .line 1033
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    #@84
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@85
    .line 1013
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catch_1
    move-exception v6

    #@86
    .local v6, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(I)V
    .locals 14
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1828
    monitor-enter p0

    #@1
    .line 1829
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 1831
    .local v4, "now":J
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@7
    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@a
    move-result-object v7

    #@b
    .line 1832
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v9

    #@f
    .local v9, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v10

    #@13
    if-eqz v10, :cond_2

    #@15
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v8

    #@19
    check-cast v8, Landroid/content/pm/UserInfo;

    #@1b
    .line 1833
    .local v8, "ui":Landroid/content/pm/UserInfo;
    iget v6, v8, Landroid/content/pm/UserInfo;->id:I

    #@1d
    .line 1834
    .local v6, "profileUserHandle":I
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@20
    move-result-object v3

    #@21
    .line 1835
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v1

    #@27
    .line 1836
    .local v1, "count":I
    if-lez v1, :cond_0

    #@29
    .line 1837
    const/4 v2, 0x0

    #@2a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@2c
    .line 1838
    iget-object v10, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@34
    .line 1839
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@36
    const/4 v11, 0x6

    #@37
    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@3a
    move-result v10

    #@3b
    if-eqz v10, :cond_1

    #@3d
    .line 1840
    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@3f
    const-wide/16 v12, 0x0

    #@41
    cmp-long v10, v10, v12

    #@43
    if-lez v10, :cond_1

    #@45
    .line 1841
    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@47
    const-wide/32 v12, 0x19bfcc00

    #@4a
    sub-long/2addr v10, v12

    #@4b
    cmp-long v10, v4, v10

    #@4d
    if-ltz v10, :cond_1

    #@4f
    .line 1842
    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@51
    const-wide/16 v12, 0x0

    #@53
    cmp-long v10, v10, v12

    #@55
    if-lez v10, :cond_1

    #@57
    .line 1844
    const-string/jumbo v10, "android.app.action.ACTION_PASSWORD_EXPIRING"

    #@5a
    .line 1843
    invoke-virtual {p0, v0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    #@5d
    .line 1837
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1849
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "profileUserHandle":I
    .end local v8    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@62
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@65
    move-result-object v11

    #@66
    invoke-virtual {p0, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    monitor-exit p0

    #@6a
    .line 1827
    return-void

    #@6b
    .line 1828
    .end local v4    # "now":J
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "ui$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    #@6c
    monitor-exit p0

    #@6d
    throw v10
.end method

.method private hasUserSetupCompleted(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4458
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 4459
    return v1

    #@6
    .line 4461
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@9
    move-result-object v0

    #@a
    .line 4463
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    #@c
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    #@e
    :cond_1
    return v1
.end method

.method private isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z
    .locals 7
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "reqPolicy"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1272
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@4
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    .line 1273
    .local v0, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 1274
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 1275
    iget-object v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@1c
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    .line 1274
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 1276
    :goto_0
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@26
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_4

    #@30
    .line 1277
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    const/4 v1, 0x0

    #@37
    .line 1279
    .local v1, "ownsInitialization":Z
    :goto_1
    const/4 v3, -0x2

    #@38
    if-ne p2, v3, :cond_5

    #@3a
    .line 1280
    if-nez p3, :cond_0

    #@3c
    if-nez v0, :cond_1

    #@3e
    if-nez v1, :cond_1

    #@40
    .line 1281
    :cond_0
    if-eqz v0, :cond_9

    #@42
    .line 1280
    if-eqz v2, :cond_9

    #@44
    .line 1282
    :cond_1
    return v6

    #@45
    .line 1273
    .end local v1    # "ownsInitialization":Z
    :cond_2
    const/4 v2, 0x0

    #@46
    .local v2, "ownsProfile":Z
    goto :goto_0

    #@47
    .line 1277
    .end local v2    # "ownsProfile":Z
    :cond_3
    const/4 v1, 0x1

    #@48
    .restart local v1    # "ownsInitialization":Z
    goto :goto_1

    #@49
    .line 1276
    .end local v1    # "ownsInitialization":Z
    :cond_4
    const/4 v1, 0x0

    #@4a
    .restart local v1    # "ownsInitialization":Z
    goto :goto_1

    #@4b
    .line 1284
    :cond_5
    const/4 v3, -0x1

    #@4c
    if-ne p2, v3, :cond_8

    #@4e
    .line 1285
    if-nez p3, :cond_6

    #@50
    if-nez v0, :cond_7

    #@52
    :cond_6
    if-nez v2, :cond_7

    #@54
    if-eqz v1, :cond_9

    #@56
    .line 1287
    :cond_7
    return v6

    #@57
    .line 1290
    :cond_8
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@59
    invoke-virtual {v3, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_9

    #@5f
    .line 1291
    return v6

    #@60
    .line 1294
    :cond_9
    return v5
.end method

.method private isCallerDelegatedCertInstaller()Z
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    .line 3120
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v4

    #@9
    .line 3121
    .local v4, "userHandle":I
    monitor-enter p0

    #@a
    .line 3122
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@d
    move-result-object v2

    #@e
    .line 3123
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v6, :cond_0

    #@12
    monitor-exit p0

    #@13
    .line 3124
    return v5

    #@14
    .line 3128
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@19
    move-result-object v6

    #@1a
    .line 3129
    iget-object v7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@1c
    .line 3128
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result v3

    #@20
    .line 3130
    .local v3, "uid":I
    if-ne v3, v0, :cond_1

    #@22
    const/4 v5, 0x1

    #@23
    :cond_1
    monitor-exit p0

    #@24
    return v5

    #@25
    .line 3131
    .end local v3    # "uid":I
    :catch_0
    move-exception v1

    #@26
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    #@27
    .line 3132
    return v5

    #@28
    .line 3121
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    #@29
    monitor-exit p0

    #@2a
    throw v5
.end method

.method private isCallerDeviceOwnerOrInitializer(I)Z
    .locals 6
    .param p1, "callerUid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6353
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 6354
    .local v1, "pkgs":[Ljava/lang/String;
    array-length v4, v1

    #@c
    move v2, v3

    #@d
    :goto_0
    if-ge v2, v4, :cond_2

    #@f
    aget-object v0, v1, v2

    #@11
    .line 6355
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@14
    move-result v5

    #@15
    if-nez v5, :cond_0

    #@17
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 6356
    :cond_0
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 6354
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 6359
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private isEncryptionSupported()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3835
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    #@0
    .prologue
    .line 3101
    const-string/jumbo v1, "vold.decrypt"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3102
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    const/4 v1, 0x1

    #@13
    goto :goto_0
.end method

.method private static isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z
    .locals 2
    .param p0, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p1, "minPasswordQuality"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6309
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@3
    if-ge v0, p1, :cond_0

    #@5
    .line 6310
    return v1

    #@6
    .line 6312
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@8
    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 4734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 4736
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@6
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    .line 4738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 4736
    return v2

    #@12
    .line 4737
    :catchall_0
    move-exception v2

    #@13
    .line 4738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 4737
    throw v2
.end method

.method private isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5667
    const/16 v2, 0x2000

    #@3
    invoke-interface {p1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@6
    move-result-object v0

    #@7
    .line 5669
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    #@9
    .line 5670
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "The application "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 5671
    const-string/jumbo v3, " is not present on this device"

    #@1e
    .line 5670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 5673
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2c
    and-int/lit8 v2, v2, 0x1

    #@2e
    if-eqz v2, :cond_1

    #@30
    const/4 v1, 0x1

    #@31
    :cond_1
    return v1
.end method

.method private loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 31
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1541
    invoke-static/range {p2 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    #@3
    move-result-object v16

    #@4
    .line 1542
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    const/16 v22, 0x0

    #@6
    .line 1543
    .local v22, "stream":Ljava/io/FileInputStream;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    #@9
    move-result-object v13

    #@a
    .line 1545
    .local v13, "file":Ljava/io/File;
    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    #@c
    move-object/from16 v0, v23

    #@e
    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_d

    #@11
    .line 1546
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .local v23, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@14
    move-result-object v19

    #@15
    .line 1547
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@17
    invoke-virtual/range {v28 .. v28}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1a
    move-result-object v28

    #@1b
    move-object/from16 v0, v19

    #@1d
    move-object/from16 v1, v23

    #@1f
    move-object/from16 v2, v28

    #@21
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@24
    .line 1550
    :cond_0
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@27
    move-result v25

    #@28
    .local v25, "type":I
    const/16 v28, 0x1

    #@2a
    move/from16 v0, v25

    #@2c
    move/from16 v1, v28

    #@2e
    if-eq v0, v1, :cond_1

    #@30
    .line 1551
    const/16 v28, 0x2

    #@32
    move/from16 v0, v25

    #@34
    move/from16 v1, v28

    #@36
    if-ne v0, v1, :cond_0

    #@38
    .line 1553
    :cond_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3b
    move-result-object v24

    #@3c
    .line 1554
    .local v24, "tag":Ljava/lang/String;
    const-string/jumbo v28, "policies"

    #@3f
    move-object/from16 v0, v28

    #@41
    move-object/from16 v1, v24

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v28

    #@47
    if-nez v28, :cond_5

    #@49
    .line 1555
    new-instance v28, Lorg/xmlpull/v1/XmlPullParserException;

    #@4b
    .line 1556
    new-instance v29, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v30, "Settings do not start with policies tag: found "

    #@53
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v29

    #@57
    move-object/from16 v0, v29

    #@59
    move-object/from16 v1, v24

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v29

    #@5f
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v29

    #@63
    .line 1555
    invoke-direct/range {v28 .. v29}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@66
    throw v28
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    #@67
    .line 1640
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    :catch_0
    move-exception v9

    #@68
    .local v9, "e":Ljava/lang/NullPointerException;
    move-object/from16 v22, v23

    #@6a
    .line 1641
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@6d
    new-instance v29, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v30, "failed parsing "

    #@75
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v29

    #@79
    move-object/from16 v0, v29

    #@7b
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v29

    #@7f
    const-string/jumbo v30, " "

    #@82
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v29

    #@86
    move-object/from16 v0, v29

    #@88
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v29

    #@8c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v29

    #@90
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 1654
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v22, :cond_2

    #@95
    .line 1655
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    #@98
    .line 1662
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    #@9a
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@9c
    move-object/from16 v28, v0

    #@9e
    move-object/from16 v0, p1

    #@a0
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@a2
    move-object/from16 v29, v0

    #@a4
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a7
    move-result-object v29

    #@a8
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@ab
    .line 1668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ae
    move-result-wide v14

    #@af
    .line 1670
    .local v14, "identity":J
    :try_start_3
    new-instance v27, Lcom/android/internal/widget/LockPatternUtils;

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@b5
    move-object/from16 v28, v0

    #@b7
    invoke-direct/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@ba
    .line 1671
    .local v27, "utils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, v27

    #@bc
    move/from16 v1, p2

    #@be
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    #@c1
    move-result v28

    #@c2
    move-object/from16 v0, p1

    #@c4
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@c6
    move/from16 v29, v0

    #@c8
    move/from16 v0, v28

    #@ca
    move/from16 v1, v29

    #@cc
    if-ge v0, v1, :cond_3

    #@ce
    .line 1672
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@d1
    new-instance v29, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v30, "Active password quality 0x"

    #@d9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v29

    #@dd
    .line 1673
    move-object/from16 v0, p1

    #@df
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@e1
    move/from16 v30, v0

    #@e3
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e6
    move-result-object v30

    #@e7
    .line 1672
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v29

    #@eb
    .line 1674
    const-string/jumbo v30, " does not match actual quality 0x"

    #@ee
    .line 1672
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v29

    #@f2
    .line 1675
    move-object/from16 v0, v27

    #@f4
    move/from16 v1, p2

    #@f6
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    #@f9
    move-result v30

    #@fa
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@fd
    move-result-object v30

    #@fe
    .line 1672
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v29

    #@102
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v29

    #@106
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@109
    .line 1676
    const/16 v28, 0x0

    #@10b
    move/from16 v0, v28

    #@10d
    move-object/from16 v1, p1

    #@10f
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@111
    .line 1677
    const/16 v28, 0x0

    #@113
    move/from16 v0, v28

    #@115
    move-object/from16 v1, p1

    #@117
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@119
    .line 1678
    const/16 v28, 0x0

    #@11b
    move/from16 v0, v28

    #@11d
    move-object/from16 v1, p1

    #@11f
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@121
    .line 1679
    const/16 v28, 0x0

    #@123
    move/from16 v0, v28

    #@125
    move-object/from16 v1, p1

    #@127
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@129
    .line 1680
    const/16 v28, 0x0

    #@12b
    move/from16 v0, v28

    #@12d
    move-object/from16 v1, p1

    #@12f
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@131
    .line 1681
    const/16 v28, 0x0

    #@133
    move/from16 v0, v28

    #@135
    move-object/from16 v1, p1

    #@137
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@139
    .line 1682
    const/16 v28, 0x0

    #@13b
    move/from16 v0, v28

    #@13d
    move-object/from16 v1, p1

    #@13f
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@141
    .line 1683
    const/16 v28, 0x0

    #@143
    move/from16 v0, v28

    #@145
    move-object/from16 v1, p1

    #@147
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@149
    .line 1686
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14c
    .line 1689
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@14f
    .line 1690
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@152
    .line 1691
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@155
    .line 1692
    move-object/from16 v0, p0

    #@157
    move/from16 v1, p2

    #@159
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->addDeviceInitializerToLockTaskPackagesLocked(I)V

    #@15c
    .line 1693
    move-object/from16 v0, p1

    #@15e
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@160
    move-object/from16 v28, v0

    #@162
    move-object/from16 v0, p0

    #@164
    move-object/from16 v1, v28

    #@166
    move/from16 v2, p2

    #@168
    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Ljava/util/List;I)V

    #@16b
    .line 1694
    move-object/from16 v0, p1

    #@16d
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@16f
    move/from16 v28, v0

    #@171
    if-eqz v28, :cond_4

    #@173
    .line 1695
    move-object/from16 v0, p1

    #@175
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@177
    move/from16 v28, v0

    #@179
    move-object/from16 v0, p0

    #@17b
    move/from16 v1, v28

    #@17d
    move/from16 v2, p2

    #@17f
    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setStatusBarDisabledInternal(ZI)Z

    #@182
    .line 1540
    :cond_4
    return-void

    #@183
    .line 1560
    .end local v14    # "identity":J
    .end local v27    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    :cond_5
    :try_start_4
    const-string/jumbo v28, "permission-provider"

    #@186
    const/16 v29, 0x0

    #@188
    move-object/from16 v0, v19

    #@18a
    move-object/from16 v1, v29

    #@18c
    move-object/from16 v2, v28

    #@18e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@191
    move-result-object v21

    #@192
    .line 1561
    .local v21, "permissionProvider":Ljava/lang/String;
    if-eqz v21, :cond_6

    #@194
    .line 1562
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@197
    move-result-object v28

    #@198
    move-object/from16 v0, v28

    #@19a
    move-object/from16 v1, p1

    #@19c
    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    #@19e
    .line 1564
    :cond_6
    const-string/jumbo v28, "setup-complete"

    #@1a1
    const/16 v29, 0x0

    #@1a3
    move-object/from16 v0, v19

    #@1a5
    move-object/from16 v1, v29

    #@1a7
    move-object/from16 v2, v28

    #@1a9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1ac
    move-result-object v26

    #@1ad
    .line 1565
    .local v26, "userSetupComplete":Ljava/lang/String;
    if-eqz v26, :cond_7

    #@1af
    const/16 v28, 0x1

    #@1b1
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@1b4
    move-result-object v28

    #@1b5
    move-object/from16 v0, v28

    #@1b7
    move-object/from16 v1, v26

    #@1b9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bc
    move-result v28

    #@1bd
    if-eqz v28, :cond_7

    #@1bf
    .line 1566
    const/16 v28, 0x1

    #@1c1
    move/from16 v0, v28

    #@1c3
    move-object/from16 v1, p1

    #@1c5
    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    #@1c7
    .line 1568
    :cond_7
    const-string/jumbo v28, "permission-policy"

    #@1ca
    const/16 v29, 0x0

    #@1cc
    move-object/from16 v0, v19

    #@1ce
    move-object/from16 v1, v29

    #@1d0
    move-object/from16 v2, v28

    #@1d2
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d5
    move-result-object v20

    #@1d6
    .line 1569
    .local v20, "permissionPolicy":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d9
    move-result v28

    #@1da
    if-nez v28, :cond_8

    #@1dc
    .line 1570
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1df
    move-result v28

    #@1e0
    move/from16 v0, v28

    #@1e2
    move-object/from16 v1, p1

    #@1e4
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    #@1e6
    .line 1573
    :cond_8
    const-string/jumbo v28, "delegated-cert-installer"

    #@1e9
    .line 1572
    const/16 v29, 0x0

    #@1eb
    move-object/from16 v0, v19

    #@1ed
    move-object/from16 v1, v29

    #@1ef
    move-object/from16 v2, v28

    #@1f1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f4
    move-result-object v28

    #@1f5
    move-object/from16 v0, v28

    #@1f7
    move-object/from16 v1, p1

    #@1f9
    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@1fb
    .line 1575
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1fe
    move-result v25

    #@1ff
    .line 1576
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@202
    move-result v18

    #@203
    .line 1577
    .local v18, "outerDepth":I
    move-object/from16 v0, p1

    #@205
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@207
    move-object/from16 v28, v0

    #@209
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    #@20c
    .line 1578
    move-object/from16 v0, p1

    #@20e
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@210
    move-object/from16 v28, v0

    #@212
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    #@215
    .line 1579
    move-object/from16 v0, p1

    #@217
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@219
    move-object/from16 v28, v0

    #@21b
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->clear()V

    #@21e
    .line 1580
    :cond_9
    :goto_3
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@221
    move-result v25

    #@222
    const/16 v28, 0x1

    #@224
    move/from16 v0, v25

    #@226
    move/from16 v1, v28

    #@228
    if-eq v0, v1, :cond_12

    #@22a
    .line 1581
    const/16 v28, 0x3

    #@22c
    move/from16 v0, v25

    #@22e
    move/from16 v1, v28

    #@230
    if-ne v0, v1, :cond_a

    #@232
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@235
    move-result v28

    #@236
    move/from16 v0, v28

    #@238
    move/from16 v1, v18

    #@23a
    if-le v0, v1, :cond_12

    #@23c
    .line 1582
    :cond_a
    const/16 v28, 0x3

    #@23e
    move/from16 v0, v25

    #@240
    move/from16 v1, v28

    #@242
    if-eq v0, v1, :cond_9

    #@244
    const/16 v28, 0x4

    #@246
    move/from16 v0, v25

    #@248
    move/from16 v1, v28

    #@24a
    if-eq v0, v1, :cond_9

    #@24c
    .line 1585
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24f
    move-result-object v24

    #@250
    .line 1586
    const-string/jumbo v28, "admin"

    #@253
    move-object/from16 v0, v28

    #@255
    move-object/from16 v1, v24

    #@257
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25a
    move-result v28

    #@25b
    if-eqz v28, :cond_b

    #@25d
    .line 1587
    const-string/jumbo v28, "name"

    #@260
    const/16 v29, 0x0

    #@262
    move-object/from16 v0, v19

    #@264
    move-object/from16 v1, v29

    #@266
    move-object/from16 v2, v28

    #@268
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    #@26b
    move-result-object v17

    #@26c
    .line 1590
    .local v17, "name":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@26f
    move-result-object v28

    #@270
    .line 1589
    move-object/from16 v0, p0

    #@272
    move-object/from16 v1, v28

    #@274
    move/from16 v2, p2

    #@276
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    #@279
    move-result-object v5

    #@27a
    .line 1597
    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_9

    #@27c
    .line 1598
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@27e
    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    #@281
    .line 1599
    .local v4, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, v19

    #@283
    invoke-virtual {v4, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@286
    .line 1600
    move-object/from16 v0, p1

    #@288
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@28a
    move-object/from16 v28, v0

    #@28c
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@28e
    move-object/from16 v29, v0

    #@290
    invoke-virtual/range {v29 .. v29}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@293
    move-result-object v29

    #@294
    move-object/from16 v0, v28

    #@296
    move-object/from16 v1, v29

    #@298
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    #@29b
    goto :goto_3

    #@29c
    .line 1602
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v11

    #@29d
    .line 1603
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@2a0
    new-instance v29, Ljava/lang/StringBuilder;

    #@2a2
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@2a5
    const-string/jumbo v30, "Failed loading admin "

    #@2a8
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v29

    #@2ac
    move-object/from16 v0, v29

    #@2ae
    move-object/from16 v1, v17

    #@2b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v29

    #@2b4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b7
    move-result-object v29

    #@2b8
    move-object/from16 v0, v28

    #@2ba
    move-object/from16 v1, v29

    #@2bc
    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    #@2bf
    goto/16 :goto_3

    #@2c1
    .line 1642
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_2
    move-exception v10

    #@2c2
    .local v10, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v22, v23

    #@2c4
    .line 1643
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@2c7
    new-instance v29, Ljava/lang/StringBuilder;

    #@2c9
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@2cc
    const-string/jumbo v30, "failed parsing "

    #@2cf
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v29

    #@2d3
    move-object/from16 v0, v29

    #@2d5
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v29

    #@2d9
    const-string/jumbo v30, " "

    #@2dc
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2df
    move-result-object v29

    #@2e0
    move-object/from16 v0, v29

    #@2e2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v29

    #@2e6
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e9
    move-result-object v29

    #@2ea
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ed
    goto/16 :goto_1

    #@2ef
    .line 1605
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_b
    :try_start_7
    const-string/jumbo v28, "failed-password-attempts"

    #@2f2
    move-object/from16 v0, v28

    #@2f4
    move-object/from16 v1, v24

    #@2f6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f9
    move-result v28

    #@2fa
    if-eqz v28, :cond_c

    #@2fc
    .line 1607
    const-string/jumbo v28, "value"

    #@2ff
    const/16 v29, 0x0

    #@301
    move-object/from16 v0, v19

    #@303
    move-object/from16 v1, v29

    #@305
    move-object/from16 v2, v28

    #@307
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30a
    move-result-object v28

    #@30b
    .line 1606
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@30e
    move-result v28

    #@30f
    move/from16 v0, v28

    #@311
    move-object/from16 v1, p1

    #@313
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    #@315
    goto/16 :goto_3

    #@317
    .line 1644
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_3
    move-exception v12

    #@318
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v22, v23

    #@31a
    .line 1645
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@31d
    new-instance v29, Ljava/lang/StringBuilder;

    #@31f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@322
    const-string/jumbo v30, "failed parsing "

    #@325
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v29

    #@329
    move-object/from16 v0, v29

    #@32b
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32e
    move-result-object v29

    #@32f
    const-string/jumbo v30, " "

    #@332
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@335
    move-result-object v29

    #@336
    move-object/from16 v0, v29

    #@338
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v29

    #@33c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33f
    move-result-object v29

    #@340
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@343
    goto/16 :goto_1

    #@345
    .line 1608
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_c
    :try_start_8
    const-string/jumbo v28, "password-owner"

    #@348
    move-object/from16 v0, v28

    #@34a
    move-object/from16 v1, v24

    #@34c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34f
    move-result v28

    #@350
    if-eqz v28, :cond_d

    #@352
    .line 1610
    const-string/jumbo v28, "value"

    #@355
    const/16 v29, 0x0

    #@357
    move-object/from16 v0, v19

    #@359
    move-object/from16 v1, v29

    #@35b
    move-object/from16 v2, v28

    #@35d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@360
    move-result-object v28

    #@361
    .line 1609
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@364
    move-result v28

    #@365
    move/from16 v0, v28

    #@367
    move-object/from16 v1, p1

    #@369
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@36b
    goto/16 :goto_3

    #@36d
    .line 1646
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_4
    move-exception v6

    #@36e
    .local v6, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v22, v23

    #@370
    .end local v23    # "stream":Ljava/io/FileInputStream;
    .local v22, "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    #@372
    .line 1611
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_d
    const-string/jumbo v28, "active-password"

    #@375
    move-object/from16 v0, v28

    #@377
    move-object/from16 v1, v24

    #@379
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37c
    move-result v28

    #@37d
    if-eqz v28, :cond_e

    #@37f
    .line 1613
    const-string/jumbo v28, "quality"

    #@382
    const/16 v29, 0x0

    #@384
    move-object/from16 v0, v19

    #@386
    move-object/from16 v1, v29

    #@388
    move-object/from16 v2, v28

    #@38a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38d
    move-result-object v28

    #@38e
    .line 1612
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@391
    move-result v28

    #@392
    move/from16 v0, v28

    #@394
    move-object/from16 v1, p1

    #@396
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@398
    .line 1615
    const-string/jumbo v28, "length"

    #@39b
    const/16 v29, 0x0

    #@39d
    move-object/from16 v0, v19

    #@39f
    move-object/from16 v1, v29

    #@3a1
    move-object/from16 v2, v28

    #@3a3
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a6
    move-result-object v28

    #@3a7
    .line 1614
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3aa
    move-result v28

    #@3ab
    move/from16 v0, v28

    #@3ad
    move-object/from16 v1, p1

    #@3af
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@3b1
    .line 1617
    const-string/jumbo v28, "uppercase"

    #@3b4
    const/16 v29, 0x0

    #@3b6
    move-object/from16 v0, v19

    #@3b8
    move-object/from16 v1, v29

    #@3ba
    move-object/from16 v2, v28

    #@3bc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3bf
    move-result-object v28

    #@3c0
    .line 1616
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c3
    move-result v28

    #@3c4
    move/from16 v0, v28

    #@3c6
    move-object/from16 v1, p1

    #@3c8
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@3ca
    .line 1619
    const-string/jumbo v28, "lowercase"

    #@3cd
    const/16 v29, 0x0

    #@3cf
    move-object/from16 v0, v19

    #@3d1
    move-object/from16 v1, v29

    #@3d3
    move-object/from16 v2, v28

    #@3d5
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3d8
    move-result-object v28

    #@3d9
    .line 1618
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3dc
    move-result v28

    #@3dd
    move/from16 v0, v28

    #@3df
    move-object/from16 v1, p1

    #@3e1
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@3e3
    .line 1621
    const-string/jumbo v28, "letters"

    #@3e6
    const/16 v29, 0x0

    #@3e8
    move-object/from16 v0, v19

    #@3ea
    move-object/from16 v1, v29

    #@3ec
    move-object/from16 v2, v28

    #@3ee
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3f1
    move-result-object v28

    #@3f2
    .line 1620
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3f5
    move-result v28

    #@3f6
    move/from16 v0, v28

    #@3f8
    move-object/from16 v1, p1

    #@3fa
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@3fc
    .line 1623
    const-string/jumbo v28, "numeric"

    #@3ff
    const/16 v29, 0x0

    #@401
    move-object/from16 v0, v19

    #@403
    move-object/from16 v1, v29

    #@405
    move-object/from16 v2, v28

    #@407
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40a
    move-result-object v28

    #@40b
    .line 1622
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40e
    move-result v28

    #@40f
    move/from16 v0, v28

    #@411
    move-object/from16 v1, p1

    #@413
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@415
    .line 1625
    const-string/jumbo v28, "symbols"

    #@418
    const/16 v29, 0x0

    #@41a
    move-object/from16 v0, v19

    #@41c
    move-object/from16 v1, v29

    #@41e
    move-object/from16 v2, v28

    #@420
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@423
    move-result-object v28

    #@424
    .line 1624
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@427
    move-result v28

    #@428
    move/from16 v0, v28

    #@42a
    move-object/from16 v1, p1

    #@42c
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@42e
    .line 1627
    const-string/jumbo v28, "nonletter"

    #@431
    const/16 v29, 0x0

    #@433
    move-object/from16 v0, v19

    #@435
    move-object/from16 v1, v29

    #@437
    move-object/from16 v2, v28

    #@439
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43c
    move-result-object v28

    #@43d
    .line 1626
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@440
    move-result v28

    #@441
    move/from16 v0, v28

    #@443
    move-object/from16 v1, p1

    #@445
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    #@447
    goto/16 :goto_3

    #@449
    .line 1648
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_5
    move-exception v7

    #@44a
    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v22, v23

    #@44c
    .line 1649
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@44f
    new-instance v29, Ljava/lang/StringBuilder;

    #@451
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@454
    const-string/jumbo v30, "failed parsing "

    #@457
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v29

    #@45b
    move-object/from16 v0, v29

    #@45d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@460
    move-result-object v29

    #@461
    const-string/jumbo v30, " "

    #@464
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@467
    move-result-object v29

    #@468
    move-object/from16 v0, v29

    #@46a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46d
    move-result-object v29

    #@46e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@471
    move-result-object v29

    #@472
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@475
    goto/16 :goto_1

    #@477
    .line 1628
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string/jumbo v28, "lock-task-component"

    #@47a
    move-object/from16 v0, v28

    #@47c
    move-object/from16 v1, v24

    #@47e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@481
    move-result v28

    #@482
    if-eqz v28, :cond_f

    #@484
    .line 1629
    move-object/from16 v0, p1

    #@486
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@488
    move-object/from16 v28, v0

    #@48a
    const-string/jumbo v29, "name"

    #@48d
    const/16 v30, 0x0

    #@48f
    move-object/from16 v0, v19

    #@491
    move-object/from16 v1, v30

    #@493
    move-object/from16 v2, v29

    #@495
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@498
    move-result-object v29

    #@499
    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    #@49c
    goto/16 :goto_3

    #@49e
    .line 1650
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_6
    move-exception v8

    #@49f
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v22, v23

    #@4a1
    .line 1651
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@4a4
    new-instance v29, Ljava/lang/StringBuilder;

    #@4a6
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@4a9
    const-string/jumbo v30, "failed parsing "

    #@4ac
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4af
    move-result-object v29

    #@4b0
    move-object/from16 v0, v29

    #@4b2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b5
    move-result-object v29

    #@4b6
    const-string/jumbo v30, " "

    #@4b9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bc
    move-result-object v29

    #@4bd
    move-object/from16 v0, v29

    #@4bf
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v29

    #@4c3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c6
    move-result-object v29

    #@4c7
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4ca
    goto/16 :goto_1

    #@4cc
    .line 1630
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_f
    :try_start_a
    const-string/jumbo v28, "statusbar"

    #@4cf
    move-object/from16 v0, v28

    #@4d1
    move-object/from16 v1, v24

    #@4d3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d6
    move-result v28

    #@4d7
    if-eqz v28, :cond_10

    #@4d9
    .line 1632
    const-string/jumbo v28, "disabled"

    #@4dc
    const/16 v29, 0x0

    #@4de
    move-object/from16 v0, v19

    #@4e0
    move-object/from16 v1, v29

    #@4e2
    move-object/from16 v2, v28

    #@4e4
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e7
    move-result-object v28

    #@4e8
    .line 1631
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@4eb
    move-result v28

    #@4ec
    move/from16 v0, v28

    #@4ee
    move-object/from16 v1, p1

    #@4f0
    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@4f2
    goto/16 :goto_3

    #@4f4
    .line 1633
    :cond_10
    const-string/jumbo v28, "do-not-ask-credentials-on-boot"

    #@4f7
    move-object/from16 v0, v28

    #@4f9
    move-object/from16 v1, v24

    #@4fb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4fe
    move-result v28

    #@4ff
    if-eqz v28, :cond_11

    #@501
    .line 1634
    const/16 v28, 0x1

    #@503
    move/from16 v0, v28

    #@505
    move-object/from16 v1, p1

    #@507
    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    #@509
    goto/16 :goto_3

    #@50b
    .line 1636
    :cond_11
    const-string/jumbo v28, "DevicePolicyManagerService"

    #@50e
    new-instance v29, Ljava/lang/StringBuilder;

    #@510
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@513
    const-string/jumbo v30, "Unknown tag: "

    #@516
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@519
    move-result-object v29

    #@51a
    move-object/from16 v0, v29

    #@51c
    move-object/from16 v1, v24

    #@51e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@521
    move-result-object v29

    #@522
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@525
    move-result-object v29

    #@526
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@529
    .line 1637
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    #@52c
    goto/16 :goto_3

    #@52e
    :cond_12
    move-object/from16 v22, v23

    #@530
    .end local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v22    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    #@532
    .line 1657
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_7
    move-exception v7

    #@533
    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@535
    .line 1685
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v14    # "identity":J
    :catchall_0
    move-exception v28

    #@536
    .line 1686
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@539
    .line 1685
    throw v28

    #@53a
    .line 1640
    .end local v14    # "identity":J
    .local v22, "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    #@53b
    .restart local v9    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_0

    #@53d
    .line 1642
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v10

    #@53e
    .restart local v10    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    #@540
    .line 1644
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :catch_a
    move-exception v12

    #@541
    .restart local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_5

    #@543
    .line 1646
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b
    move-exception v6

    #@544
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    #@546
    .line 1648
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v7

    #@547
    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    #@549
    .line 1650
    .end local v7    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v8

    #@54a
    .restart local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_7
.end method

.method private lockNowUnchecked()V
    .locals 8

    #@0
    .prologue
    .line 3086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3089
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v4

    #@a
    .line 3090
    const/4 v6, 0x1

    #@b
    const/4 v7, 0x0

    #@c
    .line 3089
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@f
    .line 3092
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    #@11
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@16
    const/4 v4, -0x1

    #@17
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    #@1a
    .line 3093
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    #@1d
    move-result-object v1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v1, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 3096
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 3085
    :goto_0
    return-void

    #@26
    .line 3094
    :catch_0
    move-exception v0

    #@27
    .line 3096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    goto :goto_0

    #@2b
    .line 3095
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    .line 3096
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 3095
    throw v1
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    #@0
    .prologue
    .line 1416
    if-nez p0, :cond_0

    #@2
    .line 1417
    const-string/jumbo v0, "/data/system/device_policies.xml"

    #@5
    .line 1420
    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    #@7
    new-instance v2, Ljava/io/File;

    #@9
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    new-instance v3, Ljava/io/File;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, ".tmp"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    #@28
    return-object v1

    #@29
    .line 1418
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    #@2b
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "device_policies.xml"

    #@32
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 3175
    const-string/jumbo v1, "X.509"

    #@3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v0

    #@7
    .line 3176
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@12
    return-object v1
.end method

.method private removeDeviceInitializerFromLockTaskPackages(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 6212
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceInitializer()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 6213
    .local v0, "deviceInitializerPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 6214
    return-void

    #@7
    .line 6217
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    .line 6218
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 6219
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    #@14
    .line 6211
    :cond_1
    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3689
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 3690
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@a
    .line 3691
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@12
    .line 3692
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 3693
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@18
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@1a
    invoke-direct {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 3694
    return-void

    #@1e
    .line 3690
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 3698
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 3688
    return-void
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 3702
    if-nez p2, :cond_0

    #@4
    .line 3703
    const-string/jumbo p2, ""

    #@7
    .line 3705
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 3706
    const-string/jumbo p1, ""

    #@c
    .line 3709
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    .line 3710
    const-string/jumbo v5, ":"

    #@13
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 3711
    .local v0, "data":[Ljava/lang/String;
    const/16 v2, 0x1f90

    #@19
    .line 3712
    .local v2, "proxyPort":I
    array-length v5, v0

    #@1a
    if-le v5, v7, :cond_2

    #@1c
    .line 3714
    const/4 v5, 0x1

    #@1d
    :try_start_0
    aget-object v5, v0, v5

    #@1f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v2

    #@23
    .line 3717
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@26
    move-result-object p2

    #@27
    .line 3718
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v4

    #@2d
    .line 3720
    .local v4, "res":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/ProxyInfo;

    #@2f
    aget-object v5, v0, v6

    #@31
    invoke-direct {v3, v5, v2, p2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@34
    .line 3721
    .local v3, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->isValid()Z

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_3

    #@3a
    .line 3722
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "Invalid proxy properties, ignoring: "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 3723
    return-void

    #@59
    .line 3725
    :cond_3
    const-string/jumbo v5, "global_http_proxy_host"

    #@5c
    aget-object v6, v0, v6

    #@5e
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@61
    .line 3726
    const-string/jumbo v5, "global_http_proxy_port"

    #@64
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@67
    .line 3727
    const-string/jumbo v5, "global_http_proxy_exclusion_list"

    #@6a
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@6d
    .line 3701
    return-void

    #@6e
    .line 3715
    .end local v3    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v4    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    #@6f
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1424
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@3
    move-result-object v8

    #@4
    .line 1425
    .local v8, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    #@7
    move-result-object v6

    #@8
    .line 1426
    .local v6, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    #@9
    .line 1428
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    #@b
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    #@e
    move-result-object v11

    #@f
    const/4 v12, 0x0

    #@10
    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1429
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    #@15
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@18
    .line 1430
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1a
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1d
    move-result-object v11

    #@1e
    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@21
    .line 1431
    const/4 v11, 0x1

    #@22
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v11

    #@26
    const/4 v12, 0x0

    #@27
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@2a
    .line 1433
    const-string/jumbo v11, "policies"

    #@2d
    const/4 v12, 0x0

    #@2e
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 1434
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    #@33
    if-eqz v11, :cond_0

    #@35
    .line 1435
    const-string/jumbo v11, "permission-provider"

    #@38
    .line 1436
    iget-object v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    #@3a
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@3d
    move-result-object v12

    #@3e
    .line 1435
    const/4 v13, 0x0

    #@3f
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 1438
    :cond_0
    iget-boolean v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    #@44
    if-eqz v11, :cond_1

    #@46
    .line 1439
    const-string/jumbo v11, "setup-complete"

    #@49
    .line 1440
    const/4 v12, 0x1

    #@4a
    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@4d
    move-result-object v12

    #@4e
    .line 1439
    const/4 v13, 0x0

    #@4f
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    .line 1442
    :cond_1
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    #@54
    if-eqz v11, :cond_2

    #@56
    .line 1443
    const-string/jumbo v11, "permission-policy"

    #@59
    .line 1444
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    #@5b
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    .line 1443
    const/4 v13, 0x0

    #@60
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 1446
    :cond_2
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@65
    if-eqz v11, :cond_3

    #@67
    .line 1447
    const-string/jumbo v11, "delegated-cert-installer"

    #@6a
    .line 1448
    iget-object v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@6c
    .line 1447
    const/4 v13, 0x0

    #@6d
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@70
    .line 1451
    :cond_3
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@75
    move-result v0

    #@76
    .line 1452
    .local v0, "N":I
    const/4 v5, 0x0

    #@77
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    #@79
    .line 1453
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@81
    .line 1454
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_4

    #@83
    .line 1455
    const-string/jumbo v11, "admin"

    #@86
    const/4 v12, 0x0

    #@87
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8a
    .line 1456
    const-string/jumbo v11, "name"

    #@8d
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@8f
    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@92
    move-result-object v12

    #@93
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@96
    move-result-object v12

    #@97
    const/4 v13, 0x0

    #@98
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9b
    .line 1457
    invoke-virtual {v1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@9e
    .line 1458
    const-string/jumbo v11, "admin"

    #@a1
    const/4 v12, 0x0

    #@a2
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    .line 1452
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@a7
    goto :goto_0

    #@a8
    .line 1462
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@aa
    if-ltz v11, :cond_6

    #@ac
    .line 1463
    const-string/jumbo v11, "password-owner"

    #@af
    const/4 v12, 0x0

    #@b0
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b3
    .line 1464
    const-string/jumbo v11, "value"

    #@b6
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@b8
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@bb
    move-result-object v12

    #@bc
    const/4 v13, 0x0

    #@bd
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c0
    .line 1465
    const-string/jumbo v11, "password-owner"

    #@c3
    const/4 v12, 0x0

    #@c4
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c7
    .line 1468
    :cond_6
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@c9
    if-eqz v11, :cond_7

    #@cb
    .line 1469
    const-string/jumbo v11, "failed-password-attempts"

    #@ce
    const/4 v12, 0x0

    #@cf
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d2
    .line 1470
    const-string/jumbo v11, "value"

    #@d5
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@d7
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@da
    move-result-object v12

    #@db
    const/4 v13, 0x0

    #@dc
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@df
    .line 1471
    const-string/jumbo v11, "failed-password-attempts"

    #@e2
    const/4 v12, 0x0

    #@e3
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e6
    .line 1474
    :cond_7
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@e8
    if-nez v11, :cond_8

    #@ea
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@ec
    if-eqz v11, :cond_a

    #@ee
    .line 1478
    :cond_8
    :goto_1
    const-string/jumbo v11, "active-password"

    #@f1
    const/4 v12, 0x0

    #@f2
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f5
    .line 1479
    const-string/jumbo v11, "quality"

    #@f8
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@fa
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@fd
    move-result-object v12

    #@fe
    const/4 v13, 0x0

    #@ff
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@102
    .line 1480
    const-string/jumbo v11, "length"

    #@105
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@107
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10a
    move-result-object v12

    #@10b
    const/4 v13, 0x0

    #@10c
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10f
    .line 1481
    const-string/jumbo v11, "uppercase"

    #@112
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@114
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@117
    move-result-object v12

    #@118
    const/4 v13, 0x0

    #@119
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11c
    .line 1482
    const-string/jumbo v11, "lowercase"

    #@11f
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@121
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@124
    move-result-object v12

    #@125
    const/4 v13, 0x0

    #@126
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@129
    .line 1483
    const-string/jumbo v11, "letters"

    #@12c
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@12e
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@131
    move-result-object v12

    #@132
    const/4 v13, 0x0

    #@133
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@136
    .line 1484
    const-string/jumbo v11, "numeric"

    #@139
    .line 1485
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@13b
    .line 1484
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13e
    move-result-object v12

    #@13f
    const/4 v13, 0x0

    #@140
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@143
    .line 1486
    const-string/jumbo v11, "symbols"

    #@146
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@148
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@14b
    move-result-object v12

    #@14c
    const/4 v13, 0x0

    #@14d
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@150
    .line 1487
    const-string/jumbo v11, "nonletter"

    #@153
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    #@155
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@158
    move-result-object v12

    #@159
    const/4 v13, 0x0

    #@15a
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15d
    .line 1488
    const-string/jumbo v11, "active-password"

    #@160
    const/4 v12, 0x0

    #@161
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@164
    .line 1491
    :cond_9
    const/4 v5, 0x0

    #@165
    :goto_2
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@167
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@16a
    move-result v11

    #@16b
    if-ge v5, v11, :cond_b

    #@16d
    .line 1492
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@16f
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@172
    move-result-object v2

    #@173
    check-cast v2, Ljava/lang/String;

    #@175
    .line 1493
    .local v2, "component":Ljava/lang/String;
    const-string/jumbo v11, "lock-task-component"

    #@178
    const/4 v12, 0x0

    #@179
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17c
    .line 1494
    const-string/jumbo v11, "name"

    #@17f
    const/4 v12, 0x0

    #@180
    invoke-interface {v7, v12, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@183
    .line 1495
    const-string/jumbo v11, "lock-task-component"

    #@186
    const/4 v12, 0x0

    #@187
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18a
    .line 1491
    add-int/lit8 v5, v5, 0x1

    #@18c
    goto :goto_2

    #@18d
    .line 1475
    .end local v2    # "component":Ljava/lang/String;
    :cond_a
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@18f
    if-nez v11, :cond_8

    #@191
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@193
    if-nez v11, :cond_8

    #@195
    .line 1476
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@197
    if-nez v11, :cond_8

    #@199
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@19b
    if-nez v11, :cond_8

    #@19d
    .line 1477
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@19f
    if-nez v11, :cond_8

    #@1a1
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    #@1a3
    if-eqz v11, :cond_9

    #@1a5
    goto/16 :goto_1

    #@1a7
    .line 1498
    :cond_b
    iget-boolean v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@1a9
    if-eqz v11, :cond_c

    #@1ab
    .line 1499
    const-string/jumbo v11, "statusbar"

    #@1ae
    const/4 v12, 0x0

    #@1af
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b2
    .line 1500
    const-string/jumbo v11, "disabled"

    #@1b5
    iget-boolean v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@1b7
    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@1ba
    move-result-object v12

    #@1bb
    const/4 v13, 0x0

    #@1bc
    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1bf
    .line 1501
    const-string/jumbo v11, "statusbar"

    #@1c2
    const/4 v12, 0x0

    #@1c3
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c6
    .line 1504
    :cond_c
    iget-boolean v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    #@1c8
    if-eqz v11, :cond_d

    #@1ca
    .line 1505
    const-string/jumbo v11, "do-not-ask-credentials-on-boot"

    #@1cd
    const/4 v12, 0x0

    #@1ce
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d1
    .line 1506
    const-string/jumbo v11, "do-not-ask-credentials-on-boot"

    #@1d4
    const/4 v12, 0x0

    #@1d5
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d8
    .line 1509
    :cond_d
    const-string/jumbo v11, "policies"

    #@1db
    const/4 v12, 0x0

    #@1dc
    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1df
    .line 1511
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@1e2
    .line 1512
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    #@1e5
    .line 1513
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1e8
    .line 1514
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    #@1eb
    .line 1515
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V

    #@1ee
    .line 1516
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@1f1
    move-object v9, v10

    #@1f2
    .line 1423
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    return-void

    #@1f3
    .line 1517
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    #@1f4
    .line 1519
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v9, :cond_e

    #@1f6
    .line 1520
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1f9
    .line 1525
    :cond_e
    :goto_5
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->rollback()V

    #@1fc
    goto :goto_3

    #@1fd
    .line 1522
    :catch_1
    move-exception v4

    #@1fe
    .local v4, "ex":Ljava/io/IOException;
    goto :goto_5

    #@1ff
    .line 1517
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    #@200
    .restart local v3    # "e":Ljava/io/IOException;
    move-object v9, v10

    #@201
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1348
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v4, p3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 1349
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "ui$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/content/pm/UserInfo;

    #@16
    .line 1350
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    #@18
    .line 1351
    .local v0, "id":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V

    #@1b
    goto :goto_0

    #@1c
    .line 1347
    .end local v0    # "id":I
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1530
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1531
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 1532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 1534
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@13
    new-instance v4, Landroid/os/UserHandle;

    #@15
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@18
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 1536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1529
    return-void

    #@1f
    .line 1535
    :catchall_0
    move-exception v3

    #@20
    .line 1536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 1535
    throw v3
.end method

.method private sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "responseBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3282
    invoke-static {p2}, Landroid/security/IKeyChainAliasCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainAliasCallback;

    #@3
    move-result-object v0

    #@4
    .line 3283
    .local v0, "keyChainAliasResponse":Landroid/security/IKeyChainAliasCallback;
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    #@6
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V

    #@9
    const/4 v2, 0x0

    #@a
    new-array v2, v2, [Ljava/lang/Void;

    #@c
    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@f
    .line 3280
    return-void
.end method

.method private sendWipeProfileNotification()V
    .locals 5

    #@0
    .prologue
    .line 3407
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const v3, 0x10400ed

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 3408
    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification$Builder;

    #@b
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@10
    .line 3409
    const v3, 0x108008a

    #@13
    .line 3408
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@16
    move-result-object v2

    #@17
    .line 3410
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@19
    const v4, 0x10400ea

    #@1c
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 3408
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@27
    move-result-object v2

    #@28
    .line 3412
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2a
    const v4, 0x1060059

    #@2d
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    #@30
    move-result v3

    #@31
    .line 3408
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@34
    move-result-object v2

    #@35
    .line 3413
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    #@37
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    #@3a
    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@3d
    move-result-object v3

    #@3e
    .line 3408
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@45
    move-result-object v1

    #@46
    .line 3415
    .local v1, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    #@49
    move-result-object v2

    #@4a
    const/16 v3, 0x3e9

    #@4c
    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    #@4f
    .line 3406
    return-void
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V
    .locals 14
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "onEnableData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1956
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 1957
    const-string/jumbo v12, "android.permission.MANAGE_DEVICE_ADMINS"

    #@5
    const/4 v13, 0x0

    #@6
    .line 1956
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1958
    move/from16 v0, p3

    #@b
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@e
    .line 1960
    move/from16 v0, p3

    #@10
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@13
    move-result-object v9

    #@14
    .line 1961
    .local v9, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move/from16 v0, p3

    #@16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    #@19
    move-result-object v6

    #@1a
    .line 1962
    .local v6, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_0

    #@1c
    .line 1963
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v12, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v13, "Bad admin: "

    #@26
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v12

    #@2a
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v12

    #@2e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v12

    #@32
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v11

    #@36
    .line 1965
    :cond_0
    monitor-enter p0

    #@37
    .line 1966
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3a
    move-result-wide v4

    #@3b
    .line 1968
    .local v4, "ident":J
    if-nez p2, :cond_1

    #@3d
    .line 1969
    :try_start_1
    move/from16 v0, p3

    #@3f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@42
    move-result-object v11

    #@43
    if-eqz v11, :cond_1

    #@45
    .line 1970
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@47
    const-string/jumbo v12, "Admin is already added"

    #@4a
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 1992
    :catchall_0
    move-exception v11

    #@4f
    .line 1993
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 1992
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    .line 1965
    .end local v4    # "ident":J
    :catchall_1
    move-exception v11

    #@54
    monitor-exit p0

    #@55
    throw v11

    #@56
    .line 1972
    .restart local v4    # "ident":J
    :cond_1
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@58
    invoke-direct {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    #@5b
    .line 1973
    .local v7, "newAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@5d
    invoke-virtual {v11, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 1974
    const/4 v10, -0x1

    #@61
    .line 1975
    .local v10, "replaceIndex":I
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@66
    move-result v2

    #@67
    .line 1976
    .local v2, "N":I
    const/4 v3, 0x0

    #@68
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@6a
    .line 1977
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@6c
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v8

    #@70
    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@72
    .line 1978
    .local v8, "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@74
    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@77
    move-result-object v11

    #@78
    invoke-virtual {v11, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v11

    #@7c
    if-eqz v11, :cond_3

    #@7e
    .line 1979
    move v10, v3

    #@7f
    .line 1983
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/4 v11, -0x1

    #@80
    if-ne v10, v11, :cond_4

    #@82
    .line 1984
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@84
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@87
    .line 1985
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@8a
    move-result-object v11

    #@8b
    move/from16 v0, p3

    #@8d
    invoke-direct {p0, v11, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    #@90
    .line 1989
    :goto_1
    move/from16 v0, p3

    #@92
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@95
    .line 1990
    const-string/jumbo v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    #@98
    .line 1991
    const/4 v12, 0x0

    #@99
    .line 1990
    move-object/from16 v0, p4

    #@9b
    invoke-virtual {p0, v7, v11, v0, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9e
    .line 1993
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a1
    monitor-exit p0

    #@a2
    .line 1955
    return-void

    #@a3
    .line 1976
    .restart local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@a5
    goto :goto_0

    #@a6
    .line 1987
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    :try_start_5
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v11, v10, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ab
    goto :goto_1
.end method

.method private setDoNotAskCredentialsOnBoot()V
    .locals 2

    #@0
    .prologue
    .line 2977
    monitor-enter p0

    #@1
    .line 2978
    const/4 v1, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@5
    move-result-object v0

    #@6
    .line 2979
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    #@8
    if-nez v1, :cond_0

    #@a
    .line 2980
    const/4 v1, 0x1

    #@b
    iput-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    #@d
    .line 2981
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 2976
    return-void

    #@13
    .line 2977
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    #@0
    .prologue
    .line 3866
    return-void
.end method

.method private setLockTaskPackagesLocked(ILjava/util/List;)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5916
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@3
    move-result-object v0

    #@4
    .line 5917
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@6
    .line 5920
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@9
    .line 5921
    invoke-direct {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Ljava/util/List;I)V

    #@c
    .line 5915
    return-void
.end method

.method private setStatusBarDisabledInternal(ZI)Z
    .locals 8
    .param p1, "disabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 6146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 6149
    .local v4, "ident":J
    :try_start_0
    const-string/jumbo v6, "statusbar"

    #@7
    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v6

    #@b
    .line 6148
    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@e
    move-result-object v3

    #@f
    .line 6150
    .local v3, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    #@11
    .line 6151
    if-eqz p1, :cond_0

    #@13
    const/high16 v1, 0x2070000

    #@15
    .line 6152
    .local v1, "flags1":I
    :goto_0
    if-eqz p1, :cond_1

    #@17
    const/4 v2, 0x1

    #@18
    .line 6153
    .local v2, "flags2":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    #@1a
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-interface {v3, v1, v6, v7, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@23
    .line 6154
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    #@25
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    invoke-interface {v3, v2, v6, v7, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 6155
    const/4 v6, 0x1

    #@2f
    .line 6160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 6155
    return v6

    #@33
    .line 6151
    .end local v1    # "flags1":I
    .end local v2    # "flags2":I
    :cond_0
    const/4 v1, 0x0

    #@34
    .restart local v1    # "flags1":I
    goto :goto_0

    #@35
    .line 6152
    :cond_1
    const/4 v2, 0x0

    #@36
    .restart local v2    # "flags2":I
    goto :goto_1

    #@37
    .line 6160
    .end local v1    # "flags1":I
    .end local v2    # "flags2":I
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 6162
    .end local v3    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_2
    const/4 v6, 0x0

    #@3b
    return v6

    #@3c
    .line 6157
    :catch_0
    move-exception v0

    #@3d
    .line 6158
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@40
    const-string/jumbo v7, "Failed to disable the status bar"

    #@43
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 6160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    goto :goto_2

    #@4a
    .line 6159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@4b
    .line 6160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 6159
    throw v6
.end method

.method private updateDeviceOwnerLocked()V
    .locals 5

    #@0
    .prologue
    .line 1712
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1713
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 1715
    .local v2, "ident":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->updateDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 1719
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 1711
    :goto_0
    return-void

    #@13
    .line 1716
    :catch_0
    move-exception v1

    #@14
    .line 1719
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    goto :goto_0

    #@18
    .line 1718
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@19
    .line 1719
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1718
    throw v4
.end method

.method private updateLockTaskPackagesLocked(Ljava/util/List;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1700
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1701
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 1703
    .local v2, "ident":J
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    new-array v4, v4, [Ljava/lang/String;

    #@e
    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, [Ljava/lang/String;

    #@14
    invoke-interface {v0, p2, v4}, Landroid/app/IActivityManager;->updateLockTaskPackages(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1707
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1699
    :goto_0
    return-void

    #@1b
    .line 1704
    :catch_0
    move-exception v1

    #@1c
    .line 1707
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    goto :goto_0

    #@20
    .line 1706
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@21
    .line 1707
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 1706
    throw v4
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3507
    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v12, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@5
    move-result-object v7

    #@6
    .line 3508
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v11

    #@a
    .local v11, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v12

    #@e
    if-eqz v12, :cond_3

    #@10
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v10

    #@14
    check-cast v10, Landroid/content/pm/UserInfo;

    #@16
    .line 3509
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    #@18
    .line 3510
    .local v6, "profileId":I
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@1b
    move-result-object v5

    #@1c
    .line 3511
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v12, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    .line 3512
    .local v0, "N":I
    if-lez v0, :cond_2

    #@24
    .line 3513
    const/4 v4, 0x0

    #@25
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    #@27
    .line 3514
    iget-object v12, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@2f
    .line 3515
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@31
    const/4 v13, 0x6

    #@32
    invoke-virtual {v12, v13}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@35
    move-result v12

    #@36
    if-eqz v12, :cond_0

    #@38
    .line 3516
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@3a
    .line 3517
    .local v8, "timeout":J
    const-wide/16 v12, 0x0

    #@3c
    cmp-long v12, v8, v12

    #@3e
    if-lez v12, :cond_1

    #@40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@43
    move-result-wide v12

    #@44
    add-long v2, v8, v12

    #@46
    .line 3518
    .local v2, "expiration":J
    :goto_2
    iput-wide v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@48
    .line 3513
    .end local v2    # "expiration":J
    .end local v8    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 3517
    .restart local v8    # "timeout":J
    :cond_1
    const-wide/16 v2, 0x0

    #@4d
    .restart local v2    # "expiration":J
    goto :goto_2

    #@4e
    .line 3522
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "expiration":J
    .end local v4    # "i":I
    .end local v8    # "timeout":J
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@51
    goto :goto_0

    #@52
    .line 3506
    .end local v0    # "N":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "profileId":I
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3921
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 3925
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e
    .line 3918
    :goto_0
    return-void

    #@f
    .line 3922
    :catch_0
    move-exception v0

    #@10
    .line 3923
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@13
    const-string/jumbo v4, "Unable to notify WindowManager."

    #@16
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 3925
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    goto :goto_0

    #@1d
    .line 3924
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    .line 3925
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 3924
    throw v1
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    #@0
    .prologue
    .line 1724
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid quality constant: 0x"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 1736
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1733
    :sswitch_0
    return-void

    #@22
    .line 1724
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDataLocked(ZLjava/lang/String;)V
    .locals 4
    .param p1, "wipeExtRequested"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3321
    if-eqz p1, :cond_0

    #@2
    .line 3322
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 3323
    const-string/jumbo v3, "storage"

    #@7
    .line 3322
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/os/storage/StorageManager;

    #@d
    .line 3324
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    #@10
    .line 3327
    .end local v1    # "sm":Landroid/os/storage/StorageManager;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v2, p2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 3320
    :goto_0
    return-void

    #@16
    .line 3328
    :catch_0
    move-exception v0

    #@17
    .line 3329
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@1a
    const-string/jumbo v3, "Failed requesting data wipe"

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method private wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    .locals 2
    .param p1, "wipeExtRequested"    # Z
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3380
    if-nez p2, :cond_0

    #@2
    .line 3381
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDataLocked(ZLjava/lang/String;)V

    #@5
    .line 3379
    :goto_0
    return-void

    #@6
    .line 3383
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@8
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;

    #@a
    invoke-direct {v1, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    goto :goto_0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 4958
    const-string/jumbo v1, "ComponentName is null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4959
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v3

    #@a
    .line 4960
    .local v3, "callingUserId":I
    monitor-enter p0

    #@b
    .line 4961
    const/4 v1, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 4963
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v0

    #@13
    .line 4964
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-wide v10

    #@17
    .line 4966
    .local v10, "id":J
    and-int/lit8 v1, p3, 0x1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 4967
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 4968
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    move-object v1, p2

    #@22
    .line 4967
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    #@25
    .line 4970
    :cond_0
    and-int/lit8 v1, p3, 0x2

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 4971
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 4972
    const/4 v7, 0x0

    #@2e
    const/4 v9, 0x0

    #@2f
    move-object v4, v0

    #@30
    move-object v5, p2

    #@31
    move v8, v3

    #@32
    .line 4971
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@35
    .line 4977
    :cond_1
    :try_start_2
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    :goto_0
    monitor-exit p0

    #@39
    .line 4957
    return-void

    #@3a
    .line 4974
    :catch_0
    move-exception v12

    #@3b
    .line 4977
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 4960
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "id":J
    .end local v12    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit p0

    #@41
    throw v1

    #@42
    .line 4976
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "id":J
    :catchall_1
    move-exception v1

    #@43
    .line 4977
    :try_start_4
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@46
    .line 4976
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2309
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 2310
    .local v4, "userId":I
    const/4 v1, 0x0

    #@5
    .line 2312
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    #@6
    .line 2314
    const/4 v5, -0x1

    #@7
    .line 2313
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@a
    move-result-object v0

    #@b
    .line 2315
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@d
    if-nez v5, :cond_0

    #@f
    .line 2316
    new-instance v5, Ljava/util/ArrayList;

    #@11
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@16
    .line 2318
    :cond_0
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@18
    .line 2319
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 2320
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 2321
    new-instance v2, Ljava/util/ArrayList;

    #@23
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 2322
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    move-object v1, v2

    #@2a
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    #@2b
    .line 2326
    if-eqz v1, :cond_2

    #@2d
    .line 2327
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    #@2f
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    #@32
    .line 2328
    const/4 v5, 0x1

    #@33
    return v5

    #@34
    .line 2312
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    #@35
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    #@36
    throw v5

    #@37
    .line 2331
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    #@38
    return v5

    #@39
    .line 2312
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    #@3a
    move-object v1, v2

    #@3b
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4803
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4804
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v4

    #@a
    .line 4805
    .local v4, "userHandle":I
    monitor-enter p0

    #@b
    .line 4806
    const/4 v5, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 4808
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v2

    #@13
    .line 4809
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-wide v0

    #@17
    .line 4811
    .local v0, "id":J
    :try_start_1
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    .line 4815
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    :goto_0
    monitor-exit p0

    #@1e
    .line 4802
    return-void

    #@1f
    .line 4812
    :catch_0
    move-exception v3

    #@20
    .line 4815
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 4805
    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@25
    monitor-exit p0

    #@26
    throw v5

    #@27
    .line 4814
    .restart local v0    # "id":J
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1
    move-exception v5

    #@28
    .line 4815
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@2b
    .line 4814
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v2

    #@8
    const/16 v5, 0x3e8

    #@a
    if-eq v2, v5, :cond_0

    #@c
    .line 3242
    return-void

    #@d
    .line 3245
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@10
    move-result-object v4

    #@11
    .line 3247
    .local v4, "caller":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@14
    move-result v2

    #@15
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@1a
    move-result-object v11

    #@1b
    .line 3248
    .local v11, "aliasChooser":Landroid/content/ComponentName;
    if-nez v11, :cond_1

    #@1d
    invoke-virtual {v4}, Landroid/os/UserHandle;->isOwner()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 3249
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@26
    move-result-object v12

    #@27
    .line 3250
    .local v12, "deviceOwnerAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v12, :cond_1

    #@29
    .line 3251
    iget-object v2, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@2b
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@2e
    move-result-object v11

    #@2f
    .line 3254
    .end local v12    # "deviceOwnerAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    if-nez v11, :cond_2

    #@31
    .line 3255
    const/4 v2, 0x0

    #@32
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, p4

    #@36
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V

    #@39
    .line 3256
    return-void

    #@3a
    .line 3259
    :cond_2
    new-instance v3, Landroid/content/Intent;

    #@3c
    const-string/jumbo v2, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    #@3f
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    .line 3260
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@45
    .line 3261
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    #@48
    move/from16 v0, p1

    #@4a
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4d
    .line 3262
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    #@50
    move-object/from16 v0, p2

    #@52
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@55
    .line 3263
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    #@58
    move-object/from16 v0, p3

    #@5a
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5d
    .line 3264
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

    #@60
    move-object/from16 v0, p4

    #@62
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    #@65
    .line 3266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@68
    move-result-wide v14

    #@69
    .line 3268
    .local v14, "id":J
    :try_start_0
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@6d
    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;

    #@6f
    move-object/from16 v0, p0

    #@71
    move-object/from16 v1, p4

    #@73
    invoke-direct {v6, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V

    #@76
    const/4 v5, 0x0

    #@77
    .line 3274
    const/4 v7, 0x0

    #@78
    const/4 v8, -0x1

    #@79
    const/4 v9, 0x0

    #@7a
    const/4 v10, 0x0

    #@7b
    .line 3268
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7e
    .line 3276
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@81
    .line 3239
    return-void

    #@82
    .line 3275
    :catchall_0
    move-exception v2

    #@83
    .line 3276
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 3275
    throw v2
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4984
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4985
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v0

    #@a
    .line 4986
    .local v0, "callingUserId":I
    monitor-enter p0

    #@b
    .line 4987
    const/4 v5, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 4988
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v1

    #@13
    .line 4989
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-wide v2

    #@17
    .line 4992
    .local v2, "id":J
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v1, v0, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    #@1e
    .line 4996
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x0

    #@23
    invoke-interface {v1, v6, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    .line 5000
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    :goto_0
    monitor-exit p0

    #@2a
    .line 4983
    return-void

    #@2b
    .line 4997
    :catch_0
    move-exception v4

    #@2c
    .line 5000
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 4986
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "id":J
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@31
    monitor-exit p0

    #@32
    throw v5

    #@33
    .line 4999
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "id":J
    :catchall_1
    move-exception v5

    #@34
    .line 5000
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@37
    .line 4999
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public clearDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4335
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4336
    return-void

    #@5
    .line 4338
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@8
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 4340
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@12
    move-result-object v0

    #@13
    .line 4342
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    #@16
    move-result v1

    #@17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1a
    move-result v4

    #@1b
    if-eq v1, v4, :cond_1

    #@1d
    .line 4343
    new-instance v1, Ljava/lang/SecurityException;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Admin "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, " is not owned by uid "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 4344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@39
    move-result v5

    #@3a
    .line 4343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@45
    throw v1

    #@46
    .line 4347
    :cond_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@48
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_2

    #@52
    .line 4348
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@54
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_4

    #@5e
    .line 4352
    :cond_2
    monitor-enter p0

    #@5f
    .line 4353
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@62
    move-result-wide v2

    #@63
    .line 4355
    .local v2, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@65
    if-eqz v1, :cond_3

    #@67
    .line 4356
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@69
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceInitializer()V

    #@6c
    .line 4357
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@6e
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 4360
    :cond_3
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    monitor-exit p0

    #@75
    .line 4334
    return-void

    #@76
    .line 4349
    .end local v2    # "ident":J
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    #@78
    .line 4350
    const-string/jumbo v4, "clearDeviceInitializer can only be called by the device initializer/owner"

    #@7b
    .line 4349
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v1

    #@7f
    .line 4359
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v1

    #@80
    .line 4360
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@83
    .line 4359
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@84
    .line 4352
    .end local v2    # "ident":J
    :catchall_1
    move-exception v1

    #@85
    monitor-exit p0

    #@86
    throw v1
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4217
    const-string/jumbo v2, "packageName is null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4219
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@10
    move-result v1

    #@11
    .line 4220
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v2

    #@15
    if-eq v1, v2, :cond_0

    #@17
    .line 4221
    new-instance v2, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v3, "Invalid packageName"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 4223
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@21
    .line 4224
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/SecurityException;

    #@23
    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v2

    #@27
    .line 4226
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uid":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_1

    #@2d
    .line 4227
    new-instance v2, Ljava/lang/SecurityException;

    #@2f
    const-string/jumbo v3, "clearDeviceOwner can only be called by the device owner"

    #@32
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 4229
    :cond_1
    monitor-enter p0

    #@37
    .line 4230
    :try_start_1
    new-instance v2, Landroid/os/UserHandle;

    #@39
    const/4 v3, 0x0

    #@3a
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@3d
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserPoliciesLocked(Landroid/os/UserHandle;)V

    #@40
    .line 4231
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@42
    if-eqz v2, :cond_2

    #@44
    .line 4232
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@46
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceOwner()V

    #@49
    .line 4233
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@4b
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    #@4e
    .line 4234
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    :cond_2
    monitor-exit p0

    #@52
    .line 4216
    return-void

    #@53
    .line 4229
    :catchall_0
    move-exception v2

    #@54
    monitor-exit p0

    #@55
    throw v2
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4822
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4823
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v4

    #@a
    .line 4824
    .local v4, "userHandle":I
    monitor-enter p0

    #@b
    .line 4825
    const/4 v5, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 4827
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v2

    #@13
    .line 4828
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-wide v0

    #@17
    .line 4830
    .local v0, "id":J
    :try_start_1
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    .line 4834
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    :goto_0
    monitor-exit p0

    #@1e
    .line 4821
    return-void

    #@1f
    .line 4831
    :catch_0
    move-exception v3

    #@20
    .line 4834
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 4824
    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@25
    monitor-exit p0

    #@26
    throw v5

    #@27
    .line 4833
    .restart local v0    # "id":J
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1
    move-exception v5

    #@28
    .line 4834
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@2b
    .line 4833
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4392
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4393
    return-void

    #@5
    .line 4395
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@8
    move-result-object v0

    #@9
    .line 4397
    .local v0, "callingUser":Landroid/os/UserHandle;
    const/4 v1, -0x1

    #@a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@d
    .line 4398
    monitor-enter p0

    #@e
    .line 4399
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserPoliciesLocked(Landroid/os/UserHandle;)V

    #@11
    .line 4400
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 4401
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@17
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    #@1e
    .line 4402
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@20
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_1
    monitor-exit p0

    #@24
    .line 4391
    return-void

    #@25
    .line 4398
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 5342
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    #@4
    move-result-object v6

    #@5
    .line 5343
    .local v6, "user":Landroid/os/UserHandle;
    if-nez v6, :cond_0

    #@7
    .line 5344
    return-object v8

    #@8
    .line 5346
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 5348
    .local v2, "id":J
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 5349
    .local v5, "profileOwnerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@13
    move-result-object v4

    #@14
    .line 5350
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v0

    #@18
    .line 5352
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v7

    #@1c
    .line 5355
    .local v7, "userHandle":I
    :try_start_1
    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    #@1f
    move-result v8

    #@20
    if-nez v8, :cond_1

    #@22
    .line 5356
    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    #@25
    .line 5360
    :cond_1
    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 5365
    :goto_0
    const/4 v8, 0x1

    #@29
    :try_start_2
    invoke-direct {p0, p4, v8, v7, p5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    #@2c
    .line 5366
    invoke-virtual {p0, p4, p3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 5369
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@32
    .line 5367
    return-object v6

    #@33
    .line 5361
    :catch_0
    move-exception v1

    #@34
    .line 5362
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v8, "DevicePolicyManagerService"

    #@37
    const-string/jumbo v9, "Failed to make remote calls for configureUser"

    #@3a
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 5368
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "profileOwnerPkg":Ljava/lang/String;
    .end local v7    # "userHandle":I
    :catchall_0
    move-exception v8

    #@3f
    .line 5369
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@42
    .line 5368
    throw v8
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5322
    const-string/jumbo v3, "ComponentName is null"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 5323
    monitor-enter p0

    #@8
    .line 5324
    const/4 v3, -0x2

    #@9
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@c
    .line 5326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    move-result-wide v0

    #@10
    .line 5328
    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-virtual {v3, p2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@16
    move-result-object v2

    #@17
    .line 5329
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@19
    .line 5330
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v3

    #@1d
    .line 5334
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    monitor-exit p0

    #@21
    .line 5330
    return-object v3

    #@22
    .line 5334
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@25
    monitor-exit p0

    #@26
    .line 5332
    return-object v5

    #@27
    .line 5333
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@28
    .line 5334
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@2b
    .line 5333
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2c
    .line 5323
    .end local v0    # "id":J
    :catchall_1
    move-exception v3

    #@2d
    monitor-exit p0

    #@2e
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4760
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v8, "android.permission.DUMP"

    #@5
    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_0

    #@b
    .line 4763
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    .line 4764
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v8

    #@1b
    .line 4763
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    .line 4765
    const-string/jumbo v8, ", uid="

    #@22
    .line 4763
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    .line 4765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v8

    #@2a
    .line 4763
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 4766
    return-void

    #@36
    .line 4769
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    #@38
    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@3b
    .line 4771
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    #@3c
    .line 4772
    :try_start_0
    const-string/jumbo v7, "Current Device Policy Manager state:"

    #@3f
    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@42
    .line 4773
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@44
    if-eqz v7, :cond_1

    #@46
    .line 4774
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@48
    const-string/jumbo v8, "  "

    #@4b
    invoke-virtual {v7, v8, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@4e
    .line 4776
    :cond_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@50
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@53
    move-result v6

    #@54
    .line 4777
    .local v6, "userCount":I
    const/4 v5, 0x0

    #@55
    .local v5, "u":I
    :goto_0
    if-ge v5, v6, :cond_5

    #@57
    .line 4778
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@59
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    #@5c
    move-result v7

    #@5d
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@60
    move-result-object v4

    #@61
    .line 4779
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v8, "  Enabled Device Admins (User "

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    const-string/jumbo v8, "):"

    #@76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@81
    .line 4780
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v0

    #@87
    .line 4781
    .local v0, "N":I
    const/4 v2, 0x0

    #@88
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@8a
    .line 4782
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@8c
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8f
    move-result-object v1

    #@90
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@92
    .line 4783
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_2

    #@94
    .line 4784
    const-string/jumbo v7, "  "

    #@97
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@9c
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    .line 4785
    const-string/jumbo v7, ":"

    #@aa
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    .line 4786
    const-string/jumbo v7, "    "

    #@b0
    invoke-virtual {v1, v7, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@b3
    .line 4781
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@b5
    goto :goto_1

    #@b6
    .line 4789
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@bb
    move-result v7

    #@bc
    if-nez v7, :cond_4

    #@be
    .line 4790
    new-instance v7, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v8, "  Removing Device Admins (User "

    #@c6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v7

    #@ca
    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@cc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    const-string/jumbo v8, "): "

    #@d3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v7

    #@d7
    .line 4791
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    #@d9
    .line 4790
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v7

    #@e1
    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@e4
    .line 4794
    :cond_4
    const-string/jumbo v7, " "

    #@e7
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 4795
    const-string/jumbo v7, "  mPasswordOwner="

    #@ed
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@f2
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f5
    .line 4777
    add-int/lit8 v5, v5, 0x1

    #@f7
    goto/16 :goto_0

    #@f9
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_5
    monitor-exit p0

    #@fa
    .line 4759
    return-void

    #@fb
    .line 4771
    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    #@fc
    monitor-exit p0

    #@fd
    throw v7
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5572
    const-string/jumbo v7, "ComponentName is null"

    #@3
    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5573
    monitor-enter p0

    #@7
    .line 5576
    const/4 v7, -0x1

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 5578
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v6

    #@f
    .line 5579
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-wide v0

    #@13
    .line 5587
    .local v0, "id":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@18
    move-result-object v5

    #@19
    .line 5588
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@1c
    move-result-object v3

    #@1d
    .line 5591
    .local v3, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_0

    #@1f
    .line 5592
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@22
    move-result-object v3

    #@23
    .line 5595
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v2

    #@27
    .line 5596
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@29
    invoke-direct {p0, v2, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    #@2c
    move-result v7

    #@2d
    if-nez v7, :cond_1

    #@2f
    .line 5597
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v8, "Only system apps can be enabled this way."

    #@34
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@38
    .line 5603
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v4

    #@39
    .line 5605
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@3c
    new-instance v8, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v9, "Failed to install "

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-static {v7, v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    .line 5607
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    #@57
    .line 5571
    return-void

    #@58
    .line 5601
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_1
    :try_start_4
    invoke-interface {v2, p2, v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5b
    .line 5607
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 5573
    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    #@60
    monitor-exit p0

    #@61
    throw v7

    #@62
    .line 5606
    .restart local v0    # "id":J
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v7

    #@63
    .line 5607
    :try_start_6
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@66
    .line 5606
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 17
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5614
    const-string/jumbo v14, "ComponentName is null"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v14}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 5615
    monitor-enter p0

    #@9
    .line 5618
    const/4 v14, -0x1

    #@a
    :try_start_0
    move-object/from16 v0, p0

    #@c
    move-object/from16 v1, p1

    #@e
    invoke-virtual {v0, v1, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@11
    .line 5620
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v13

    #@15
    .line 5621
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    move-result-wide v4

    #@19
    .line 5624
    .local v4, "id":J
    :try_start_1
    move-object/from16 v0, p0

    #@1b
    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@1d
    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@20
    move-result-object v12

    #@21
    .line 5625
    .local v12, "um":Landroid/os/UserManager;
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@24
    move-result-object v11

    #@25
    .line 5628
    .local v11, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v11, :cond_0

    #@27
    .line 5629
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@2a
    move-result-object v11

    #@2b
    .line 5632
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2e
    move-result-object v10

    #@2f
    .line 5634
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    #@31
    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@33
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@36
    move-result-object v14

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v14}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@3c
    move-result-object v14

    #@3d
    .line 5636
    iget v15, v11, Landroid/content/pm/UserInfo;->id:I

    #@3f
    .line 5635
    const/16 v16, 0x0

    #@41
    .line 5633
    move-object/from16 v0, p2

    #@43
    move/from16 v1, v16

    #@45
    invoke-interface {v10, v0, v14, v1, v15}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@48
    move-result-object v2

    #@49
    .line 5639
    .local v2, "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    #@4a
    .line 5640
    .local v8, "numberOfAppsInstalled":I
    if-eqz v2, :cond_3

    #@4c
    .line 5641
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v7

    #@50
    .local v7, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v14

    #@54
    if-eqz v14, :cond_3

    #@56
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v6

    #@5a
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@5c
    .line 5642
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5e
    if-eqz v14, :cond_1

    #@60
    .line 5643
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@62
    iget-object v9, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@64
    .line 5644
    .local v9, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-direct {v0, v10, v9, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    #@6b
    move-result v14

    #@6c
    if-eqz v14, :cond_2

    #@6e
    .line 5645
    add-int/lit8 v8, v8, 0x1

    #@70
    .line 5646
    invoke-interface {v10, v9, v13}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 5655
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v12    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    #@75
    .line 5657
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v14, "DevicePolicyManagerService"

    #@78
    new-instance v15, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v16, "Failed to resolve intent for: "

    #@80
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v15

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v15

    #@8a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v15

    #@8e
    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@91
    .line 5660
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@94
    .line 5658
    const/4 v14, 0x0

    #@95
    monitor-exit p0

    #@96
    return v14

    #@97
    .line 5648
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "info$iterator":Ljava/util/Iterator;
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "um":Landroid/os/UserManager;
    :cond_2
    :try_start_4
    const-string/jumbo v14, "DevicePolicyManagerService"

    #@9a
    new-instance v15, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v16, "Not enabling "

    #@a2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v15

    #@a6
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v15

    #@aa
    const-string/jumbo v16, " since is not a"

    #@ad
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v15

    #@b1
    .line 5649
    const-string/jumbo v16, " system app"

    #@b4
    .line 5648
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v15

    #@b8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v15

    #@bc
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bf
    goto :goto_0

    #@c0
    .line 5659
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v12    # "um":Landroid/os/UserManager;
    :catchall_0
    move-exception v14

    #@c1
    .line 5660
    :try_start_5
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@c4
    .line 5659
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@c5
    .line 5615
    .end local v4    # "id":J
    .end local v13    # "userId":I
    :catchall_1
    move-exception v14

    #@c6
    monitor-exit p0

    #@c7
    throw v14

    #@c8
    .line 5660
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "id":J
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "um":Landroid/os/UserManager;
    .restart local v13    # "userId":I
    :cond_3
    :try_start_6
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@cb
    monitor-exit p0

    #@cc
    .line 5654
    return v8
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3107
    if-nez p1, :cond_1

    #@3
    .line 3108
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDelegatedCertInstaller()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 3109
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v1, "android.permission.MANAGE_CA_CERTIFICATES"

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 3106
    :cond_0
    :goto_0
    return-void

    #@12
    .line 3112
    :cond_1
    monitor-enter p0

    #@13
    .line 3113
    const/4 v0, -0x1

    #@14
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    goto :goto_0

    #@19
    .line 3112
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 8
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1388
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 1389
    return-object v7

    #@6
    .line 1391
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 1392
    new-instance v3, Landroid/content/Intent;

    #@b
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@e
    .line 1393
    .local v3, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11
    .line 1394
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v4

    #@17
    .line 1396
    const v5, 0x8080

    #@1a
    .line 1394
    invoke-virtual {v4, v3, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    .line 1398
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    #@20
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@23
    move-result v4

    #@24
    if-gtz v4, :cond_2

    #@26
    .line 1399
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "Unknown admin: "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4

    #@40
    .line 1403
    :cond_2
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    #@42
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@44
    const/4 v4, 0x0

    #@45
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@4b
    invoke-direct {v5, v6, v4}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    return-object v5

    #@4f
    .line 1408
    :catch_0
    move-exception v0

    #@50
    .line 1409
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@53
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, "Bad device admin requested for user="

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    const-string/jumbo v6, ": "

    #@66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 1411
    return-object v7

    #@76
    .line 1404
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@77
    .line 1405
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@7a
    new-instance v5, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v6, "Bad device admin requested for user="

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    const-string/jumbo v6, ": "

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    .line 1407
    return-object v7
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5697
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5702
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@3
    .line 5703
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@5
    if-nez v5, :cond_0

    #@7
    .line 5704
    const/4 v5, 0x0

    #@8
    return-object v5

    #@9
    .line 5706
    :cond_0
    monitor-enter p0

    #@a
    .line 5707
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@d
    move-result-object v3

    #@e
    .line 5708
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v0

    #@14
    .line 5709
    .local v0, "N":I
    new-instance v4, Ljava/util/HashSet;

    #@16
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@19
    .line 5710
    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@1c
    .line 5711
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@24
    .line 5712
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@26
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@29
    .line 5710
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 5714
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    #@2f
    move-result v5

    #@30
    new-array v5, v5, [Ljava/lang/String;

    #@32
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit p0

    #@39
    return-object v5

    #@3a
    .line 5706
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    #@3b
    monitor-exit p0

    #@3c
    throw v5
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 1215
    .local v1, "callingUid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@7
    move-result-object v3

    #@8
    .line 1216
    .local v3, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    #@a
    .line 1217
    return-object v3

    #@b
    .line 1220
    :cond_0
    if-eqz p1, :cond_3

    #@d
    .line 1221
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@10
    move-result v4

    #@11
    .line 1222
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@14
    move-result-object v2

    #@15
    .line 1223
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@17
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1d
    .line 1224
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, -0x2

    #@1e
    if-ne p2, v5, :cond_1

    #@20
    .line 1225
    new-instance v5, Ljava/lang/SecurityException;

    #@22
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "Admin "

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@30
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 1226
    const-string/jumbo v7, " does not own the device"

    #@3b
    .line 1225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5

    #@47
    .line 1228
    :cond_1
    const/4 v5, -0x1

    #@48
    if-ne p2, v5, :cond_2

    #@4a
    .line 1229
    new-instance v5, Ljava/lang/SecurityException;

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "Admin "

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@5a
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    .line 1230
    const-string/jumbo v7, " does not own the profile"

    #@65
    .line 1229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@70
    throw v5

    #@71
    .line 1232
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    #@73
    new-instance v6, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v7, "Admin "

    #@7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@81
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 1233
    const-string/jumbo v7, " did not specify uses-policy for: "

    #@8c
    .line 1232
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    .line 1234
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@92
    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    .line 1232
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v5

    #@a2
    .line 1236
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userId":I
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    #@a4
    new-instance v6, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v7, "No active admin owned by uid "

    #@ac
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v6

    #@b0
    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b3
    move-result v7

    #@b4
    .line 1236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v6

    #@b8
    .line 1237
    const-string/jumbo v7, " for policy #"

    #@bb
    .line 1236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v6

    #@c7
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v5
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1202
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@4
    move-result-object v1

    #@5
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@d
    .line 1203
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    #@f
    .line 1204
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@15
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    #@18
    move-result-object v2

    #@19
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 1203
    if-eqz v1, :cond_0

    #@21
    .line 1205
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@27
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    #@2a
    move-result-object v2

    #@2b
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 1203
    if-eqz v1, :cond_0

    #@33
    .line 1206
    return-object v0

    #@34
    .line 1208
    :cond_0
    return-object v3
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2039
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 2040
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@6
    return-object v4

    #@7
    .line 2043
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@a
    .line 2044
    monitor-enter p0

    #@b
    .line 2045
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@e
    move-result-object v2

    #@f
    .line 2046
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    .line 2047
    .local v0, "N":I
    if-gtz v0, :cond_1

    #@17
    .line 2048
    const/4 v4, 0x0

    #@18
    monitor-exit p0

    #@19
    return-object v4

    #@1a
    .line 2050
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1f
    .line 2051
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@22
    .line 2052
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@2a
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@2c
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 2051
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    :cond_2
    monitor-exit p0

    #@37
    .line 2054
    return-object v3

    #@38
    .line 2044
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v4

    #@39
    monitor-exit p0

    #@3a
    throw v4
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5412
    const-string/jumbo v4, "ComponentName is null"

    #@3
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5413
    new-instance v1, Landroid/os/UserHandle;

    #@8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v4

    #@c
    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    .line 5415
    .local v1, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    #@10
    .line 5416
    const/4 v4, -0x1

    #@11
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    .line 5418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    move-result-wide v2

    #@18
    .line 5420
    .local v2, "id":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@1a
    invoke-virtual {v4, p2, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v0

    #@1e
    .line 5423
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@20
    .line 5425
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    monitor-exit p0

    #@24
    .line 5423
    return-object v0

    #@25
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_3
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 5424
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    #@29
    .line 5425
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@2c
    .line 5424
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2d
    .line 5415
    .end local v2    # "id":J
    :catchall_1
    move-exception v4

    #@2e
    monitor-exit p0

    #@2f
    throw v4
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3965
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 3966
    return v1

    #@6
    .line 3968
    :cond_0
    monitor-enter p0

    #@7
    .line 3969
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@a
    move-result-object v0

    #@b
    .line 3970
    .local v0, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    #@d
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_1
    monitor-exit p0

    #@10
    return v1

    #@11
    .line 3968
    .end local v0    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5875
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5876
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 5878
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5879
    monitor-enter p0

    #@d
    .line 5881
    const/4 v1, -0x1

    #@e
    .line 5880
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@11
    move-result-object v0

    #@12
    .line 5882
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return v1

    #@16
    .line 5879
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public getBluetoothContactSharingDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5891
    monitor-enter p0

    #@1
    .line 5892
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@4
    move-result-object v0

    #@5
    .line 5893
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    #@7
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :goto_0
    monitor-exit p0

    #@a
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0

    #@d
    .line 5891
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4008
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 4009
    return v4

    #@6
    .line 4011
    :cond_0
    monitor-enter p0

    #@7
    .line 4012
    if-eqz p1, :cond_2

    #@9
    .line 4013
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@c
    move-result-object v1

    #@d
    .line 4014
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@f
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_1
    monitor-exit p0

    #@12
    return v4

    #@13
    .line 4017
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@16
    move-result-object v3

    #@17
    .line 4019
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    .line 4020
    .local v0, "N":I
    const/4 v2, 0x0

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@20
    .line 4021
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@28
    .line 4022
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 4023
    const/4 v4, 0x1

    #@2d
    monitor-exit p0

    #@2e
    return v4

    #@2f
    .line 4020
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    #@33
    .line 4026
    return v4

    #@34
    .line 4011
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    #@35
    monitor-exit p0

    #@36
    throw v4
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 3312
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v1

    #@4
    .line 3313
    .local v1, "userHandle":I
    monitor-enter p0

    #@5
    .line 3314
    const/4 v2, -0x1

    #@6
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@9
    .line 3315
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@c
    move-result-object v0

    #@d
    .line 3316
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    return-object v2

    #@11
    .line 3313
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    #@12
    monitor-exit p0

    #@13
    throw v2
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5783
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5784
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 5786
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5787
    monitor-enter p0

    #@d
    .line 5789
    const/4 v1, -0x1

    #@e
    .line 5788
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@11
    move-result-object v0

    #@12
    .line 5790
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return v1

    #@16
    .line 5787
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5798
    monitor-enter p0

    #@1
    .line 5799
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@4
    move-result-object v0

    #@5
    .line 5800
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    #@7
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :goto_0
    monitor-exit p0

    #@a
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0

    #@d
    .line 5798
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2362
    monitor-enter p0

    #@2
    .line 2364
    const/4 v1, -0x1

    #@3
    .line 2363
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@6
    move-result-object v0

    #@7
    .line 2365
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2366
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    .line 2365
    if-eqz v1, :cond_1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 2367
    return-object v2

    #@15
    .line 2369
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v1

    #@19
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1c
    move-result v2

    #@1d
    if-ne v1, v2, :cond_2

    #@1f
    .line 2370
    new-instance v1, Ljava/util/ArrayList;

    #@21
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    return-object v1

    #@28
    .line 2372
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    return-object v1

    #@2c
    .line 2362
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2743
    monitor-enter p0

    #@1
    .line 2746
    const/4 v3, 0x0

    #@2
    .line 2747
    const/4 v4, 0x1

    #@3
    .line 2746
    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@6
    .line 2750
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v1

    #@a
    .line 2751
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    #@c
    move v0, p1

    #@d
    .line 2752
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@10
    move-result-object v2

    #@11
    .line 2754
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return v3

    #@15
    .line 2751
    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    :try_start_1
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .restart local v0    # "id":I
    goto :goto_0

    #@18
    .line 2743
    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@19
    monitor-exit p0

    #@1a
    throw v3
.end method

.method public getDeviceInitializer()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4309
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 4310
    return-object v1

    #@6
    .line 4312
    :cond_0
    monitor-enter p0

    #@7
    .line 4313
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@9
    if-eqz v0, :cond_1

    #@b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@d
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 4314
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v0

    #@19
    monitor-exit p0

    #@1a
    return-object v0

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    .line 4317
    return-object v1

    #@1d
    .line 4312
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4322
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 4323
    return-object v1

    #@6
    .line 4325
    :cond_0
    monitor-enter p0

    #@7
    .line 4326
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@9
    if-eqz v0, :cond_1

    #@b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@d
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 4327
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v0

    #@19
    monitor-exit p0

    #@1a
    return-object v0

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    .line 4330
    return-object v1

    #@1d
    .line 4325
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4171
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 4172
    return-object v1

    #@6
    .line 4174
    :cond_0
    monitor-enter p0

    #@7
    .line 4175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@9
    if-eqz v0, :cond_1

    #@b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@d
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 4176
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v0

    #@19
    monitor-exit p0

    #@1a
    return-object v0

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    .line 4179
    return-object v1

    #@1d
    .line 4174
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4184
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 4185
    return-object v3

    #@6
    .line 4187
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    #@b
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 4188
    monitor-enter p0

    #@f
    .line 4189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@11
    if-eqz v1, :cond_1

    #@13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 4192
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 4193
    .local v0, "deviceOwnerPackage":Ljava/lang/String;
    const/4 v1, 0x0

    #@22
    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v1

    #@26
    monitor-exit p0

    #@27
    return-object v1

    #@28
    .end local v0    # "deviceOwnerPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    #@29
    .line 4190
    return-object v3

    #@2a
    .line 4188
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit p0

    #@2c
    throw v1
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 4

    #@0
    .prologue
    .line 2988
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 2989
    const-string/jumbo v2, "android.permission.QUERY_DO_NOT_ASK_CREDENTIALS_ON_BOOT"

    #@5
    const/4 v3, 0x0

    #@6
    .line 2988
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2990
    monitor-enter p0

    #@a
    .line 2991
    const/4 v1, 0x0

    #@b
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@e
    move-result-object v0

    #@f
    .line 2992
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return v1

    #@13
    .line 2990
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3651
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 3652
    return-object v5

    #@6
    .line 3654
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 3655
    monitor-enter p0

    #@a
    .line 3656
    const/4 v4, 0x0

    #@b
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@e
    move-result-object v3

    #@f
    .line 3659
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 3660
    .local v0, "N":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@18
    .line 3661
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@20
    .line 3662
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 3665
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@26
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v4

    #@2a
    monitor-exit p0

    #@2b
    return-object v4

    #@2c
    .line 3660
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0

    #@30
    .line 3670
    return-object v5

    #@31
    .line 3655
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    #@32
    monitor-exit p0

    #@33
    throw v4
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 4060
    iget-boolean v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v12, :cond_0

    #@5
    .line 4061
    return v11

    #@6
    .line 4063
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 4064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v4

    #@d
    .line 4066
    .local v4, "ident":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 4067
    if-eqz p1, :cond_2

    #@10
    .line 4068
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@13
    move-result-object v1

    #@14
    .line 4069
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@16
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19
    .line 4107
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 4069
    return v11

    #@1d
    .line 4072
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_3
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@1f
    invoke-virtual {v11, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@22
    move-result-object v7

    #@23
    .line 4074
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@26
    move-result v11

    #@27
    if-eqz v11, :cond_4

    #@29
    .line 4077
    new-instance v6, Ljava/util/ArrayList;

    #@2b
    const/4 v11, 0x1

    #@2c
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    .line 4078
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 4086
    :goto_0
    const/4 v10, 0x0

    #@33
    .line 4087
    .local v10, "which":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v9

    #@37
    .local v9, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v11

    #@3b
    if-eqz v11, :cond_6

    #@3d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v8

    #@41
    check-cast v8, Landroid/content/pm/UserInfo;

    #@43
    .line 4088
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    #@45
    invoke-virtual {p0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@48
    move-result-object v3

    #@49
    .line 4089
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v0

    #@4f
    .line 4090
    .local v0, "N":I
    const/4 v2, 0x0

    #@50
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@52
    .line 4091
    iget-object v11, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@5a
    .line 4092
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    #@5c
    if-eq v11, p2, :cond_5

    #@5e
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@61
    move-result v11

    #@62
    if-eqz v11, :cond_5

    #@64
    .line 4099
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@66
    and-int/lit8 v11, v11, 0x30

    #@68
    or-int/2addr v10, v11

    #@69
    .line 4090
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_1

    #@6c
    .line 4082
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v10    # "which":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@6e
    invoke-virtual {v11, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@71
    move-result-object v6

    #@72
    .restart local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    #@73
    .line 4095
    .restart local v0    # "N":I
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v10    # "which":I
    :cond_5
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    or-int/2addr v10, v11

    #@76
    goto :goto_2

    #@77
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@78
    .line 4107
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7b
    .line 4104
    return v10

    #@7c
    .line 4066
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v10    # "which":I
    :catchall_0
    move-exception v11

    #@7d
    :try_start_5
    monitor-exit p0

    #@7e
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@7f
    .line 4106
    :catchall_1
    move-exception v11

    #@80
    .line 4107
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@83
    .line 4106
    throw v11
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5929
    const-string/jumbo v2, "ComponentName is null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5930
    monitor-enter p0

    #@7
    .line 5931
    const/4 v2, -0x2

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 5932
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@12
    move-result v1

    #@13
    .line 5933
    .local v1, "userHandle":I
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 5934
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    new-array v2, v2, [Ljava/lang/String;

    #@1d
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v2

    #@25
    .line 5930
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "userHandle":I
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2
.end method

.method public getManagedUserId(I)I
    .locals 3
    .param p1, "callingUserId"    # I

    #@0
    .prologue
    .line 5842
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/content/pm/UserInfo;

    #@16
    .line 5843
    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@18
    if-eq v2, p1, :cond_0

    #@1a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 5849
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@22
    return v2

    #@23
    .line 5854
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, -0x1

    #@24
    return v2
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2781
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2782
    return v1

    #@6
    .line 2784
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2785
    monitor-enter p0

    #@a
    .line 2786
    if-eqz p1, :cond_2

    #@c
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    move-result-object v0

    #@10
    .line 2788
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    if-eqz v0, :cond_1

    #@12
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_1
    monitor-exit p0

    #@15
    return v1

    #@16
    .line 2787
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result-object v0

    #@1a
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    goto :goto_0

    #@1b
    .line 2785
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 3040
    move-object/from16 v0, p0

    #@2
    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    if-nez v11, :cond_0

    #@6
    .line 3041
    const-wide/16 v12, 0x0

    #@8
    return-wide v12

    #@9
    .line 3043
    :cond_0
    move-object/from16 v0, p0

    #@b
    move/from16 v1, p2

    #@d
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@10
    .line 3044
    monitor-enter p0

    #@11
    .line 3045
    const-wide/16 v8, 0x0

    #@13
    .line 3047
    .local v8, "time":J
    if-eqz p1, :cond_2

    #@15
    .line 3048
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@18
    move-result-object v3

    #@19
    .line 3049
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    #@1b
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :goto_0
    monitor-exit p0

    #@1e
    return-wide v12

    #@1f
    .line 3045
    :cond_1
    const-wide/16 v12, 0x0

    #@21
    .line 3049
    goto :goto_0

    #@22
    .line 3053
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@24
    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@26
    move/from16 v0, p2

    #@28
    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@2b
    move-result-object v6

    #@2c
    .line 3054
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v10

    #@30
    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v11

    #@34
    if-eqz v11, :cond_6

    #@36
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v7

    #@3a
    check-cast v7, Landroid/content/pm/UserInfo;

    #@3c
    .line 3055
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@43
    move-result-object v5

    #@44
    .line 3056
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v2

    #@4a
    .line 3057
    .local v2, "N":I
    const/4 v4, 0x0

    #@4b
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    #@4d
    .line 3058
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@55
    .line 3059
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    #@57
    cmp-long v11, v8, v12

    #@59
    if-nez v11, :cond_5

    #@5b
    .line 3060
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@5d
    .line 3057
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 3061
    :cond_5
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@62
    const-wide/16 v14, 0x0

    #@64
    cmp-long v11, v12, v14

    #@66
    if-eqz v11, :cond_4

    #@68
    .line 3062
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@6a
    cmp-long v11, v8, v12

    #@6c
    if-lez v11, :cond_4

    #@6e
    .line 3063
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    goto :goto_2

    #@71
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    #@72
    .line 3067
    return-wide v8

    #@73
    .line 3044
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v10    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    #@74
    monitor-exit p0

    #@75
    throw v11
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2406
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2407
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 2409
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@a
    .line 2410
    monitor-enter p0

    #@b
    .line 2411
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    .line 2410
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2279
    move-object/from16 v0, p0

    #@2
    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    if-nez v11, :cond_0

    #@6
    .line 2280
    const-wide/16 v12, 0x0

    #@8
    return-wide v12

    #@9
    .line 2282
    :cond_0
    move-object/from16 v0, p0

    #@b
    move/from16 v1, p2

    #@d
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@10
    .line 2283
    monitor-enter p0

    #@11
    .line 2284
    const-wide/16 v8, 0x0

    #@13
    .line 2286
    .local v8, "timeout":J
    if-eqz p1, :cond_2

    #@15
    .line 2287
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@18
    move-result-object v3

    #@19
    .line 2288
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    #@1b
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :goto_0
    monitor-exit p0

    #@1e
    return-wide v12

    #@1f
    .line 2284
    :cond_1
    const-wide/16 v12, 0x0

    #@21
    .line 2288
    goto :goto_0

    #@22
    .line 2291
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@24
    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@26
    move/from16 v0, p2

    #@28
    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@2b
    move-result-object v6

    #@2c
    .line 2292
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v10

    #@30
    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v11

    #@34
    if-eqz v11, :cond_6

    #@36
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v7

    #@3a
    check-cast v7, Landroid/content/pm/UserInfo;

    #@3c
    .line 2293
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@43
    move-result-object v5

    #@44
    .line 2294
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v2

    #@4a
    .line 2295
    .local v2, "N":I
    const/4 v4, 0x0

    #@4b
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    #@4d
    .line 2296
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@55
    .line 2297
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    #@57
    cmp-long v11, v8, v12

    #@59
    if-eqz v11, :cond_4

    #@5b
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@5d
    const-wide/16 v14, 0x0

    #@5f
    cmp-long v11, v12, v14

    #@61
    if-eqz v11, :cond_5

    #@63
    .line 2298
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@65
    cmp-long v11, v8, v12

    #@67
    if-lez v11, :cond_5

    #@69
    .line 2299
    :cond_4
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    .line 2295
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@6d
    goto :goto_1

    #@6e
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    #@6f
    .line 2303
    return-wide v8

    #@70
    .line 2283
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v10    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    #@71
    monitor-exit p0

    #@72
    throw v11
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2219
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2220
    return v8

    #@6
    .line 2222
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2223
    monitor-enter p0

    #@a
    .line 2224
    const/4 v3, 0x0

    #@b
    .line 2226
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2227
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2228
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2232
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2233
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_5

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2234
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2235
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2236
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2237
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2238
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@46
    if-ge v3, v8, :cond_4

    #@48
    .line 2239
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2236
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    #@4e
    .line 2243
    return v3

    #@4f
    .line 2223
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@50
    monitor-exit p0

    #@51
    throw v8
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2172
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2173
    return v8

    #@6
    .line 2175
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2176
    monitor-enter p0

    #@a
    .line 2177
    const/4 v3, 0x0

    #@b
    .line 2179
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2180
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2181
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2185
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2186
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_5

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2187
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2188
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2189
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2190
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2191
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@46
    if-ge v3, v8, :cond_4

    #@48
    .line 2192
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2189
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    #@4e
    .line 2196
    return v3

    #@4f
    .line 2176
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@50
    monitor-exit p0

    #@51
    throw v8
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2525
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2526
    return v8

    #@6
    .line 2528
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2529
    monitor-enter p0

    #@a
    .line 2530
    const/4 v3, 0x0

    #@b
    .line 2532
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2533
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2534
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2538
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2539
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_6

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2540
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2541
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2542
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2543
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2544
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    #@46
    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    #@49
    move-result v8

    #@4a
    if-nez v8, :cond_5

    #@4c
    .line 2542
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 2547
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@51
    if-ge v3, v8, :cond_4

    #@53
    .line 2548
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_1

    #@56
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    #@57
    .line 2552
    return v3

    #@58
    .line 2529
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@59
    monitor-exit p0

    #@5a
    throw v8
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2478
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2479
    return v8

    #@6
    .line 2481
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2482
    monitor-enter p0

    #@a
    .line 2483
    const/4 v3, 0x0

    #@b
    .line 2485
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2486
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2487
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2491
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2492
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_5

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2493
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2494
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2495
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2496
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2497
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@46
    if-ge v3, v8, :cond_4

    #@48
    .line 2498
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2495
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    #@4e
    .line 2502
    return v3

    #@4f
    .line 2482
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@50
    monitor-exit p0

    #@51
    throw v8
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2675
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2676
    return v8

    #@6
    .line 2678
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2679
    monitor-enter p0

    #@a
    .line 2680
    const/4 v3, 0x0

    #@b
    .line 2682
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2683
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2684
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2688
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2689
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_6

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2690
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2691
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2692
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2693
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2694
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    #@46
    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    #@49
    move-result v8

    #@4a
    if-nez v8, :cond_5

    #@4c
    .line 2692
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 2697
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@51
    if-ge v3, v8, :cond_4

    #@53
    .line 2698
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_1

    #@56
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    #@57
    .line 2702
    return v3

    #@58
    .line 2679
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@59
    monitor-exit p0

    #@5a
    throw v8
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2575
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2576
    return v8

    #@6
    .line 2578
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2579
    monitor-enter p0

    #@a
    .line 2580
    const/4 v3, 0x0

    #@b
    .line 2582
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2583
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2584
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2588
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2589
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_6

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2590
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2591
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2592
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2593
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2594
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    #@46
    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    #@49
    move-result v8

    #@4a
    if-nez v8, :cond_5

    #@4c
    .line 2592
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 2597
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@51
    if-ge v3, v8, :cond_4

    #@53
    .line 2598
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_1

    #@56
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    #@57
    .line 2602
    return v3

    #@58
    .line 2579
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@59
    monitor-exit p0

    #@5a
    throw v8
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2625
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2626
    return v8

    #@6
    .line 2628
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2629
    monitor-enter p0

    #@a
    .line 2630
    const/4 v3, 0x0

    #@b
    .line 2632
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2633
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2634
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2638
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2639
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_6

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2640
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2641
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2642
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2643
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2644
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    #@46
    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    #@49
    move-result v8

    #@4a
    if-nez v8, :cond_5

    #@4c
    .line 2642
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 2647
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@51
    if-ge v3, v8, :cond_4

    #@53
    .line 2648
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_1

    #@56
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    #@57
    .line 2652
    return v3

    #@58
    .line 2629
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@59
    monitor-exit p0

    #@5a
    throw v8
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2434
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2435
    return v8

    #@6
    .line 2437
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2438
    monitor-enter p0

    #@a
    .line 2439
    const/4 v3, 0x0

    #@b
    .line 2441
    .local v3, "length":I
    if-eqz p1, :cond_2

    #@d
    .line 2442
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2443
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2447
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2448
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_5

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2449
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2450
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2451
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2452
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2453
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@46
    if-ge v3, v8, :cond_4

    #@48
    .line 2454
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2451
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    #@4e
    .line 2458
    return v3

    #@4f
    .line 2438
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@50
    monitor-exit p0

    #@51
    throw v8
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2125
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2126
    return v8

    #@6
    .line 2128
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2129
    monitor-enter p0

    #@a
    .line 2130
    const/4 v3, 0x0

    #@b
    .line 2132
    .local v3, "mode":I
    if-eqz p1, :cond_2

    #@d
    .line 2133
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v1

    #@11
    .line 2134
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@13
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    return v8

    #@17
    .line 2138
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2139
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v7

    #@21
    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_5

    #@27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/content/pm/UserInfo;

    #@2d
    .line 2140
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@32
    move-result-object v4

    #@33
    .line 2141
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 2142
    .local v0, "N":I
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@3c
    .line 2143
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    .line 2144
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@46
    if-ge v3, v8, :cond_4

    #@48
    .line 2145
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2142
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    #@4e
    .line 2149
    return v3

    #@4f
    .line 2129
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@50
    monitor-exit p0

    #@51
    throw v8
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 6476
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v1

    #@7
    .line 6478
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@a
    move-result-object v5

    #@b
    .line 6479
    .local v5, "user":Landroid/os/UserHandle;
    monitor-enter p0

    #@c
    .line 6480
    const/4 v6, -0x1

    #@d
    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    .line 6481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    move-result-wide v2

    #@14
    .line 6483
    .local v2, "ident":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@17
    move-result-object v6

    #@18
    .line 6484
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    #@1b
    move-result v7

    #@1c
    .line 6483
    invoke-interface {v6, p3, p2, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    #@1f
    move-result v0

    #@20
    .line 6485
    .local v0, "granted":I
    invoke-virtual {v1, p3, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result v4

    #@24
    .line 6486
    .local v4, "permFlags":I
    and-int/lit8 v6, v4, 0x4

    #@26
    .line 6487
    const/4 v7, 0x4

    #@27
    .line 6486
    if-eq v6, v7, :cond_0

    #@29
    .line 6497
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    monitor-exit p0

    #@2d
    .line 6489
    return v8

    #@2e
    .line 6492
    :cond_0
    if-nez v0, :cond_1

    #@30
    .line 6493
    const/4 v6, 0x1

    #@31
    .line 6497
    :goto_0
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@34
    monitor-exit p0

    #@35
    .line 6492
    return v6

    #@36
    .line 6494
    :cond_1
    const/4 v6, 0x2

    #@37
    goto :goto_0

    #@38
    .line 6496
    .end local v0    # "granted":I
    .end local v4    # "permFlags":I
    :catchall_0
    move-exception v6

    #@39
    .line 6497
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 6496
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    .line 6479
    .end local v2    # "ident":J
    :catchall_1
    move-exception v6

    #@3e
    monitor-exit p0

    #@3f
    throw v6
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 6421
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 6422
    .local v0, "userId":I
    monitor-enter p0

    #@5
    .line 6423
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@8
    move-result-object v1

    #@9
    .line 6424
    .local v1, "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return v2

    #@d
    .line 6422
    .end local v1    # "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    #@e
    monitor-exit p0

    #@f
    throw v2
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5098
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5099
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 5101
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5103
    monitor-enter p0

    #@d
    .line 5105
    const/4 v1, -0x1

    #@e
    .line 5104
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@11
    move-result-object v0

    #@12
    .line 5106
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v1

    #@16
    .line 5103
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 23
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5112
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    move/from16 v22, v0

    #@6
    if-nez v22, :cond_0

    #@8
    .line 5113
    const/16 v22, 0x0

    #@a
    return-object v22

    #@b
    .line 5115
    :cond_0
    monitor-enter p0

    #@c
    .line 5116
    const/16 v16, 0x0

    #@e
    .line 5120
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@12
    move-object/from16 v22, v0

    #@14
    move-object/from16 v0, v22

    #@16
    move/from16 v1, p1

    #@18
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1b
    move-result-object v15

    #@1c
    .line 5121
    .local v15, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@1f
    move-result v3

    #@20
    .line 5122
    .local v3, "PROFILES_SIZE":I
    const/4 v8, 0x0

    #@21
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    #@23
    .line 5125
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v22

    #@27
    check-cast v22, Landroid/content/pm/UserInfo;

    #@29
    move-object/from16 v0, v22

    #@2b
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2d
    move/from16 v22, v0

    #@2f
    move-object/from16 v0, p0

    #@31
    move/from16 v1, v22

    #@33
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@36
    move-result-object v14

    #@37
    .line 5126
    .local v14, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@39
    move-object/from16 v22, v0

    #@3b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    move-result v2

    #@3f
    .line 5127
    .local v2, "N":I
    const/4 v12, 0x0

    #@40
    .local v12, "j":I
    move-object/from16 v17, v16

    #@42
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-ge v12, v2, :cond_2

    #@44
    .line 5128
    :try_start_1
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@46
    move-object/from16 v22, v0

    #@48
    move-object/from16 v0, v22

    #@4a
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@50
    .line 5129
    .local v5, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@52
    .line 5130
    .local v7, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_8

    #@54
    .line 5131
    if-nez v17, :cond_1

    #@56
    .line 5132
    new-instance v16, Ljava/util/ArrayList;

    #@58
    move-object/from16 v0, v16

    #@5a
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5d
    .line 5127
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@5f
    move-object/from16 v17, v16

    #@61
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    #@62
    .line 5134
    :cond_1
    move-object/from16 v0, v17

    #@64
    invoke-interface {v0, v7}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@67
    move-object/from16 v16, v17

    #@69
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    #@6a
    .line 5122
    .end local v5    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@6c
    move-object/from16 v16, v17

    #@6e
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    #@6f
    .line 5141
    .end local v2    # "N":I
    .end local v12    # "j":I
    .end local v14    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v16, :cond_7

    #@71
    .line 5142
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    move-result-wide v10

    #@75
    .line 5144
    .local v10, "id":J
    :try_start_3
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@79
    move-object/from16 v22, v0

    #@7b
    move-object/from16 v0, v22

    #@7d
    move/from16 v1, p1

    #@7f
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@82
    move-result-object v21

    #@83
    .line 5145
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@86
    move-result v22

    #@87
    if-eqz v22, :cond_4

    #@89
    .line 5146
    move-object/from16 v0, v21

    #@8b
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@8d
    move/from16 p1, v0

    #@8f
    .line 5149
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    #@92
    move-result-object v4

    #@93
    .line 5151
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    #@96
    move-result-object v9

    #@97
    .line 5153
    .local v9, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@9a
    move-result-object v13

    #@9b
    .line 5154
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v9, :cond_6

    #@9d
    .line 5155
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a0
    move-result-object v19

    #@a1
    .local v19, "service$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@a4
    move-result v22

    #@a5
    if-eqz v22, :cond_6

    #@a7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v18

    #@ab
    check-cast v18, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@ad
    .line 5156
    .local v18, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@b0
    move-result-object v22

    #@b1
    move-object/from16 v0, v22

    #@b3
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b5
    move-object/from16 v20, v0

    #@b7
    .line 5157
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v20

    #@b9
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@bb
    .line 5158
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    #@bd
    move/from16 v22, v0

    #@bf
    and-int/lit8 v22, v22, 0x1

    #@c1
    if-eqz v22, :cond_5

    #@c3
    .line 5159
    move-object/from16 v0, v20

    #@c5
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@c7
    move-object/from16 v22, v0

    #@c9
    move-object/from16 v0, v16

    #@cb
    move-object/from16 v1, v22

    #@cd
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d0
    goto :goto_3

    #@d1
    .line 5163
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v18    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v19    # "service$iterator":Ljava/util/Iterator;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v22

    #@d2
    .line 5164
    :try_start_4
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@d5
    .line 5163
    throw v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@d6
    .line 5115
    .end local v3    # "PROFILES_SIZE":I
    .end local v8    # "i":I
    .end local v10    # "id":J
    .end local v15    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v22

    #@d7
    :goto_4
    monitor-exit p0

    #@d8
    throw v22

    #@d9
    .line 5164
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v8    # "i":I
    .restart local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v10    # "id":J
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_6
    :try_start_5
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@dc
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v10    # "id":J
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    monitor-exit p0

    #@dd
    .line 5168
    return-object v16

    #@de
    .line 5115
    .restart local v2    # "N":I
    .restart local v12    # "j":I
    .restart local v14    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v22

    #@df
    move-object/from16 v16, v17

    #@e1
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    #@e2
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v16, v17

    #@e4
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5246
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5247
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 5249
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5251
    monitor-enter p0

    #@d
    .line 5253
    const/4 v1, -0x1

    #@e
    .line 5252
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@11
    move-result-object v0

    #@12
    .line 5254
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v1

    #@16
    .line 5251
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 26

    #@0
    .prologue
    .line 5262
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v24

    #@4
    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v6

    #@8
    .line 5269
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    #@a
    move/from16 v23, v0

    #@c
    .line 5270
    .local v23, "userId":I
    monitor-enter p0

    #@d
    .line 5271
    const/16 v20, 0x0

    #@f
    .line 5275
    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@13
    move-object/from16 v24, v0

    #@15
    move-object/from16 v0, v24

    #@17
    move/from16 v1, v23

    #@19
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1c
    move-result-object v19

    #@1d
    .line 5276
    .local v19, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@20
    move-result v3

    #@21
    .line 5277
    .local v3, "PROFILES_SIZE":I
    const/4 v9, 0x0

    #@22
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_2

    #@24
    .line 5280
    move-object/from16 v0, v19

    #@26
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v24

    #@2a
    check-cast v24, Landroid/content/pm/UserInfo;

    #@2c
    move-object/from16 v0, v24

    #@2e
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@30
    move/from16 v24, v0

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, v24

    #@36
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@39
    move-result-object v18

    #@3a
    .line 5281
    .local v18, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v18

    #@3c
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@3e
    move-object/from16 v24, v0

    #@40
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    move-result v2

    #@44
    .line 5282
    .local v2, "N":I
    const/16 v16, 0x0

    #@46
    .local v16, "j":I
    move-object/from16 v21, v20

    #@48
    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move/from16 v0, v16

    #@4a
    if-ge v0, v2, :cond_1

    #@4c
    .line 5283
    :try_start_2
    move-object/from16 v0, v18

    #@4e
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@50
    move-object/from16 v24, v0

    #@52
    move-object/from16 v0, v24

    #@54
    move/from16 v1, v16

    #@56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v4

    #@5a
    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@5c
    .line 5284
    .local v4, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@5e
    .line 5285
    .local v8, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_6

    #@60
    .line 5286
    if-nez v21, :cond_0

    #@62
    .line 5287
    new-instance v20, Ljava/util/ArrayList;

    #@64
    move-object/from16 v0, v20

    #@66
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@69
    .line 5282
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@6b
    move-object/from16 v21, v20

    #@6d
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    #@6e
    .line 5263
    .end local v2    # "N":I
    .end local v3    # "PROFILES_SIZE":I
    .end local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v16    # "j":I
    .end local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "userId":I
    :catch_0
    move-exception v7

    #@6f
    .line 5264
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v24, "DevicePolicyManagerService"

    #@72
    const-string/jumbo v25, "Failed to make remote calls to get current user"

    #@75
    move-object/from16 v0, v24

    #@77
    move-object/from16 v1, v25

    #@79
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    .line 5266
    const/16 v24, 0x0

    #@7e
    return-object v24

    #@7f
    .line 5289
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v2    # "N":I
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v16    # "j":I
    .restart local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "userId":I
    :cond_0
    :try_start_3
    move-object/from16 v0, v21

    #@81
    invoke-interface {v0, v8}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@84
    move-object/from16 v20, v21

    #@86
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    #@87
    .line 5277
    .end local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@89
    move-object/from16 v20, v21

    #@8b
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    #@8c
    .line 5296
    .end local v2    # "N":I
    .end local v16    # "j":I
    .end local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v20, :cond_5

    #@8e
    .line 5297
    :try_start_4
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@92
    move-object/from16 v24, v0

    #@94
    .line 5298
    const-string/jumbo v25, "input_method"

    #@97
    .line 5297
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9a
    move-result-object v15

    #@9b
    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    #@9d
    .line 5299
    .local v15, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    #@a0
    move-result-object v14

    #@a1
    .line 5300
    .local v14, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a4
    move-result-wide v10

    #@a5
    .line 5302
    .local v10, "id":J
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@a8
    move-result-object v17

    #@a9
    .line 5303
    .local v17, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v14, :cond_4

    #@ab
    .line 5304
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ae
    move-result-object v13

    #@af
    .local v13, "ime$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@b2
    move-result v24

    #@b3
    if-eqz v24, :cond_4

    #@b5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b8
    move-result-object v12

    #@b9
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@bb
    .line 5305
    .local v12, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@be
    move-result-object v22

    #@bf
    .line 5306
    .local v22, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v22

    #@c1
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c3
    .line 5307
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@c5
    move/from16 v24, v0

    #@c7
    and-int/lit8 v24, v24, 0x1

    #@c9
    if-eqz v24, :cond_3

    #@cb
    .line 5308
    move-object/from16 v0, v22

    #@cd
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@cf
    move-object/from16 v24, v0

    #@d1
    move-object/from16 v0, v20

    #@d3
    move-object/from16 v1, v24

    #@d5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d8
    goto :goto_3

    #@d9
    .line 5312
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "ime$iterator":Ljava/util/Iterator;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v22    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v24

    #@da
    .line 5313
    :try_start_6
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@dd
    .line 5312
    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@de
    .line 5270
    .end local v3    # "PROFILES_SIZE":I
    .end local v9    # "i":I
    .end local v10    # "id":J
    .end local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v24

    #@df
    :goto_4
    monitor-exit p0

    #@e0
    throw v24

    #@e1
    .line 5313
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v9    # "i":I
    .restart local v10    # "id":J
    .restart local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    :try_start_7
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@e4
    .end local v10    # "id":J
    .end local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    :cond_5
    monitor-exit p0

    #@e5
    .line 5316
    return-object v20

    #@e6
    .line 5270
    .restart local v2    # "N":I
    .restart local v16    # "j":I
    .restart local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v24

    #@e7
    move-object/from16 v20, v21

    #@e9
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    #@ea
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v20, v21

    #@ec
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4555
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 4556
    return-object v1

    #@6
    .line 4559
    :cond_0
    monitor-enter p0

    #@7
    .line 4560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 4561
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    :cond_1
    monitor-exit p0

    #@14
    .line 4564
    return-object v1

    #@15
    .line 4559
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4588
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 4589
    return-object v3

    #@6
    .line 4591
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    #@b
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 4592
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@11
    move-result-object v0

    #@12
    .line 4593
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    #@14
    .line 4594
    return-object v3

    #@15
    .line 4596
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/16 v1, -0x2710

    #@2
    .line 2794
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2795
    return v1

    #@7
    .line 2797
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@a
    .line 2798
    monitor-enter p0

    #@b
    .line 2799
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@e
    move-result-object v0

    #@f
    .line 2800
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v1

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    return v1

    #@1b
    .line 2798
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 11
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3424
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 3425
    return-void

    #@6
    .line 3427
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 3428
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@b
    .line 3429
    const-string/jumbo v2, "android.permission.BIND_DEVICE_ADMIN"

    #@e
    .line 3428
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 3431
    monitor-enter p0

    #@12
    .line 3432
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v9

    #@16
    .line 3433
    .local v9, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    #@18
    .line 3435
    const/4 v0, 0x0

    #@19
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :goto_0
    monitor-exit p0

    #@1d
    .line 3438
    return-void

    #@1e
    .line 3436
    :catch_0
    move-exception v10

    #@1f
    .local v10, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@20
    .line 3440
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    #@22
    const-string/jumbo v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    #@25
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@28
    .line 3441
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    #@2a
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@2d
    .line 3442
    iget-object v0, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@2f
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@36
    .line 3443
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@38
    new-instance v2, Landroid/os/UserHandle;

    #@3a
    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    #@3d
    .line 3444
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;

    #@3f
    invoke-direct {v4, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    #@42
    const/4 v3, 0x0

    #@43
    .line 3452
    const/4 v5, 0x0

    #@44
    const/4 v6, -0x1

    #@45
    const/4 v7, 0x0

    #@46
    const/4 v8, 0x0

    #@47
    .line 3443
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    monitor-exit p0

    #@4b
    .line 3423
    return-void

    #@4c
    .line 3431
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit p0

    #@4e
    throw v0
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4947
    monitor-enter p0

    #@2
    .line 4948
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    const/16 v3, 0x3e8

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 4949
    new-instance v1, Ljava/lang/SecurityException;

    #@c
    const-string/jumbo v2, "Only the system can query the permission provider"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 4947
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1

    #@16
    .line 4951
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@19
    move-result-object v0

    #@1a
    .line 4952
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    #@1c
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    return-object v1
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3897
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 3898
    return v4

    #@6
    .line 3900
    :cond_0
    monitor-enter p0

    #@7
    .line 3901
    if-eqz p1, :cond_2

    #@9
    .line 3902
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@c
    move-result-object v1

    #@d
    .line 3903
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@f
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_1
    monitor-exit p0

    #@12
    return v4

    #@13
    .line 3906
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@16
    move-result-object v3

    #@17
    .line 3907
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    .line 3908
    .local v0, "N":I
    const/4 v2, 0x0

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@20
    .line 3909
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@28
    .line 3910
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 3911
    const/4 v4, 0x1

    #@2d
    monitor-exit p0

    #@2e
    return v4

    #@2f
    .line 3908
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    #@33
    .line 3914
    return v4

    #@34
    .line 3900
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    #@35
    monitor-exit p0

    #@36
    throw v4
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3790
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 3791
    return v5

    #@6
    .line 3793
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 3794
    monitor-enter p0

    #@a
    .line 3796
    if-eqz p1, :cond_2

    #@c
    .line 3798
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    move-result-object v1

    #@10
    .line 3799
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    #@12
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :goto_0
    monitor-exit p0

    #@15
    return v4

    #@16
    :cond_1
    move v4, v5

    #@17
    goto :goto_0

    #@18
    .line 3804
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@1b
    move-result-object v3

    #@1c
    .line 3805
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    .line 3806
    .local v0, "N":I
    const/4 v2, 0x0

    #@23
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    #@25
    .line 3807
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@2d
    iget-boolean v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 3808
    const/4 v4, 0x1

    #@32
    monitor-exit p0

    #@33
    return v4

    #@34
    .line 3806
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_1

    #@37
    :cond_4
    monitor-exit p0

    #@38
    .line 3811
    return v5

    #@39
    .line 3794
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    #@3a
    monitor-exit p0

    #@3b
    throw v4
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3820
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3823
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@7
    .line 3824
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6336
    monitor-enter p0

    #@2
    .line 6337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@4
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    #@7
    move-result-object v0

    #@8
    .line 6338
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 6342
    return-object v0

    #@12
    .line 6339
    :cond_1
    :try_start_1
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@15
    const-string/jumbo v2, "Stored system update policy is invalid, return null instead."

    #@18
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 6340
    return-object v3

    #@1d
    .line 6336
    .end local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 20
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4877
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    move/from16 v17, v0

    #@6
    if-nez v17, :cond_0

    #@8
    .line 4878
    const/16 v17, 0x0

    #@a
    return-object v17

    #@b
    .line 4880
    :cond_0
    const-string/jumbo v17, "agent null"

    #@e
    move-object/from16 v0, p2

    #@10
    move-object/from16 v1, v17

    #@12
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 4881
    move-object/from16 v0, p0

    #@17
    move/from16 v1, p3

    #@19
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@1c
    .line 4883
    monitor-enter p0

    #@1d
    .line 4884
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    .line 4885
    .local v7, "componentName":Ljava/lang/String;
    if-eqz p1, :cond_4

    #@23
    .line 4886
    move-object/from16 v0, p0

    #@25
    move-object/from16 v1, p1

    #@27
    move/from16 v2, p3

    #@29
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-object v6

    #@2d
    .line 4887
    .local v6, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v6, :cond_1

    #@2f
    const/16 v17, 0x0

    #@31
    monitor-exit p0

    #@32
    return-object v17

    #@33
    .line 4888
    :cond_1
    :try_start_1
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@35
    move-object/from16 v17, v0

    #@37
    move-object/from16 v0, v17

    #@39
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v14

    #@3d
    check-cast v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@3f
    .line 4889
    .local v14, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v14, :cond_2

    #@41
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@43
    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    if-nez v17, :cond_3

    #@47
    :cond_2
    const/16 v17, 0x0

    #@49
    monitor-exit p0

    #@4a
    return-object v17

    #@4b
    .line 4890
    :cond_3
    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@50
    .line 4891
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@52
    move-object/from16 v17, v0

    #@54
    move-object/from16 v0, v17

    #@56
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 4892
    return-object v13

    #@5b
    .line 4896
    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v14    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@5f
    move-object/from16 v17, v0

    #@61
    move-object/from16 v0, v17

    #@63
    move/from16 v1, p3

    #@65
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@68
    move-result-object v12

    #@69
    .line 4897
    .local v12, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    #@6a
    .line 4902
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v5, 0x1

    #@6b
    .line 4903
    .local v5, "allAdminsHaveOptions":Z
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v16

    #@6f
    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .local v16, "userInfo$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v17

    #@73
    if-eqz v17, :cond_c

    #@75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v15

    #@79
    check-cast v15, Landroid/content/pm/UserInfo;

    #@7b
    .line 4904
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    #@7d
    move/from16 v17, v0

    #@7f
    move-object/from16 v0, p0

    #@81
    move/from16 v1, v17

    #@83
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@86
    move-result-object v11

    #@87
    .line 4905
    .local v11, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@89
    move-object/from16 v17, v0

    #@8b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v3

    #@8f
    .line 4906
    .local v3, "N":I
    const/4 v9, 0x0

    #@90
    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_5

    #@92
    .line 4907
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@94
    move-object/from16 v17, v0

    #@96
    move-object/from16 v0, v17

    #@98
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9b
    move-result-object v4

    #@9c
    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@9e
    .line 4908
    .local v4, "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@a0
    move/from16 v17, v0

    #@a2
    and-int/lit8 v17, v17, 0x10

    #@a4
    if-eqz v17, :cond_7

    #@a6
    const/4 v8, 0x1

    #@a7
    .line 4910
    .local v8, "disablesTrust":Z
    :goto_2
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@a9
    move-object/from16 v17, v0

    #@ab
    move-object/from16 v0, v17

    #@ad
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    move-result-object v10

    #@b1
    check-cast v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@b3
    .line 4911
    .local v10, "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v10, :cond_6

    #@b5
    iget-object v0, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@b7
    move-object/from16 v17, v0

    #@b9
    if-eqz v17, :cond_6

    #@bb
    iget-object v0, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@bd
    move-object/from16 v17, v0

    #@bf
    invoke-virtual/range {v17 .. v17}, Landroid/os/PersistableBundle;->isEmpty()Z

    #@c2
    move-result v17

    #@c3
    if-eqz v17, :cond_8

    #@c5
    .line 4922
    :cond_6
    if-eqz v8, :cond_a

    #@c7
    .line 4923
    const/4 v5, 0x0

    #@c8
    .line 4924
    goto :goto_0

    #@c9
    .line 4908
    .end local v8    # "disablesTrust":Z
    .end local v10    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_7
    const/4 v8, 0x0

    #@ca
    .restart local v8    # "disablesTrust":Z
    goto :goto_2

    #@cb
    .line 4912
    .restart local v10    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_8
    if-eqz v8, :cond_b

    #@cd
    .line 4913
    if-nez v13, :cond_9

    #@cf
    .line 4914
    new-instance v13, Ljava/util/ArrayList;

    #@d1
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@d4
    .line 4916
    :cond_9
    iget-object v0, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    #@d6
    move-object/from16 v17, v0

    #@d8
    move-object/from16 v0, v17

    #@da
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@dd
    .line 4906
    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@df
    goto :goto_1

    #@e0
    .line 4918
    :cond_b
    const-string/jumbo v17, "DevicePolicyManagerService"

    #@e3
    new-instance v18, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v19, "Ignoring admin "

    #@eb
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v18

    #@ef
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@f1
    move-object/from16 v19, v0

    #@f3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v18

    #@f7
    .line 4919
    const-string/jumbo v19, " because it has trust options but doesn\'t declare "

    #@fa
    .line 4918
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v18

    #@fe
    .line 4920
    const-string/jumbo v19, "KEYGUARD_DISABLE_TRUST_AGENTS"

    #@101
    .line 4918
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v18

    #@105
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v18

    #@109
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@10c
    goto :goto_3

    #@10d
    .line 4883
    .end local v3    # "N":I
    .end local v4    # "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "allAdminsHaveOptions":Z
    .end local v7    # "componentName":Ljava/lang/String;
    .end local v8    # "disablesTrust":Z
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .end local v11    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v17

    #@10e
    monitor-exit p0

    #@10f
    throw v17

    #@110
    .line 4928
    .restart local v5    # "allAdminsHaveOptions":Z
    .restart local v7    # "componentName":Ljava/lang/String;
    .restart local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_c
    if-eqz v5, :cond_d

    #@112
    :goto_4
    monitor-exit p0

    #@113
    return-object v13

    #@114
    :cond_d
    const/4 v13, 0x0

    #@115
    goto :goto_4
.end method

.method getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1084
    monitor-enter p0

    #@1
    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@9
    .line 1086
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    #@b
    .line 1087
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@d
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    #@10
    .line 1088
    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@15
    .line 1089
    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 1091
    return-object v0

    #@1a
    .line 1084
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1108
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v2

    #@8
    .line 1110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b
    .line 1108
    return-object v2

    #@c
    .line 1109
    :catchall_0
    move-exception v2

    #@d
    .line 1110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1109
    throw v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 2023
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2024
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 2026
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2027
    monitor-enter p0

    #@a
    .line 2028
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@d
    move-result-object v0

    #@e
    .line 2029
    .local v0, "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    #@10
    .line 2030
    new-instance v1, Ljava/lang/SecurityException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "No active admin "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2027
    .end local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit p0

    #@2c
    throw v1

    #@2d
    .line 2032
    .restart local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@2f
    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    move-result v1

    #@33
    monitor-exit p0

    #@34
    return v1
.end method

.method public hasUserSetupCompleted()Z
    .locals 1

    #@0
    .prologue
    .line 4454
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3139
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@3
    .line 3143
    :try_start_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    #@6
    move-result-object v1

    #@7
    .line 3144
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    #@8
    new-array v10, v10, [Ljava/security/cert/Certificate;

    #@a
    const/4 v11, 0x0

    #@b
    aput-object v1, v10, v11

    #@d
    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v8

    #@11
    .line 3153
    .local v8, "pemCert":[B
    new-instance v9, Landroid/os/UserHandle;

    #@13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v10

    #@17
    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    #@1a
    .line 3154
    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v4

    #@1e
    .line 3156
    .local v4, "id":J
    :try_start_1
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@20
    invoke-static {v10, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    move-result-object v7

    #@24
    .line 3158
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@27
    move-result-object v10

    #@28
    invoke-interface {v10, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 3163
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    .line 3159
    const/4 v10, 0x1

    #@2f
    .line 3169
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 3159
    return v10

    #@33
    .line 3148
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "id":J
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "pemCert":[B
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v6

    #@34
    .line 3149
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@37
    const-string/jumbo v11, "Problem reading cert"

    #@3a
    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 3150
    const/4 v10, 0x0

    #@3e
    return v10

    #@3f
    .line 3145
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@40
    .line 3146
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@43
    const-string/jumbo v11, "Problem converting cert"

    #@46
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    .line 3147
    const/4 v10, 0x0

    #@4a
    return v10

    #@4b
    .line 3160
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "id":J
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "pemCert":[B
    .restart local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_2
    move-exception v2

    #@4c
    .line 3161
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@4f
    const-string/jumbo v11, "installCaCertsToKeyChain(): "

    #@52
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    .line 3163
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@58
    .line 3169
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 3171
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    const/4 v10, 0x0

    #@5c
    return v10

    #@5d
    .line 3162
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v10

    #@5e
    .line 3163
    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@61
    .line 3162
    throw v10
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@62
    .line 3165
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v3

    #@63
    .line 3166
    .local v3, "e1":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@66
    const-string/jumbo v11, "installCaCertsToKeyChain(): "

    #@69
    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 3167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6f
    move-result-object v10

    #@70
    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@73
    .line 3169
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@76
    goto :goto_0

    #@77
    .line 3168
    .end local v3    # "e1":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v10

    #@78
    .line 3169
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7b
    .line 3168
    throw v10
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # [B
    .param p3, "cert"    # [B
    .param p4, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3207
    if-nez p1, :cond_0

    #@2
    .line 3208
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDelegatedCertInstaller()Z

    #@5
    move-result v7

    #@6
    if-nez v7, :cond_1

    #@8
    .line 3209
    new-instance v7, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v8, "who == null, but caller is not cert installer"

    #@d
    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v7

    #@11
    .line 3212
    :cond_0
    monitor-enter p0

    #@12
    .line 3213
    const/4 v7, -0x1

    #@13
    :try_start_0
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 3216
    :cond_1
    new-instance v6, Landroid/os/UserHandle;

    #@19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1c
    move-result v7

    #@1d
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@20
    .line 3217
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v2

    #@24
    .line 3219
    .local v2, "id":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@26
    invoke-static {v7, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@29
    move-result-object v5

    #@2a
    .line 3221
    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@2d
    move-result-object v4

    #@2e
    .line 3222
    .local v4, "keyChain":Landroid/security/IKeyChainService;
    invoke-interface {v4, p2, p3, p4}, Landroid/security/IKeyChainService;->installKeyPair([B[BLjava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    move-result v7

    #@32
    .line 3226
    :try_start_3
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@35
    .line 3232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 3222
    return v7

    #@39
    .line 3212
    .end local v2    # "id":J
    .end local v4    # "keyChain":Landroid/security/IKeyChainService;
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v6    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v7

    #@3a
    monitor-exit p0

    #@3b
    throw v7

    #@3c
    .line 3223
    .restart local v2    # "id":J
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v6    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    #@3d
    .line 3224
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@40
    const-string/jumbo v8, "Installing certificate"

    #@43
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@46
    .line 3226
    :try_start_5
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@49
    .line 3232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 3234
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    const/4 v7, 0x0

    #@4d
    return v7

    #@4e
    .line 3225
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v7

    #@4f
    .line 3226
    :try_start_6
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@52
    .line 3225
    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@53
    .line 3228
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v1

    #@54
    .line 3229
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@57
    const-string/jumbo v8, "Interrupted while installing certificate"

    #@5a
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 3230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@64
    .line 3232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    goto :goto_0

    #@68
    .line 3231
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v7

    #@69
    .line 3232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6c
    .line 3231
    throw v7
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2708
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    if-nez v5, :cond_0

    #@6
    .line 2709
    return v3

    #@7
    .line 2711
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@a
    .line 2713
    monitor-enter p0

    #@b
    .line 2718
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@e
    move-result-object v1

    #@f
    .line 2719
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    #@11
    move v0, p1

    #@12
    .line 2720
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@15
    move-result-object v2

    #@16
    .line 2724
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v5, 0x0

    #@17
    const/4 v6, 0x0

    #@18
    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1b
    .line 2725
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    #@21
    move-result v6

    #@22
    if-lt v5, v6, :cond_1

    #@24
    .line 2726
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@26
    const/4 v6, 0x0

    #@27
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v6

    #@2b
    if-ge v5, v6, :cond_3

    #@2d
    :cond_1
    monitor-exit p0

    #@2e
    .line 2727
    return v4

    #@2f
    .line 2719
    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    #@31
    .restart local v0    # "id":I
    goto :goto_0

    #@32
    .line 2729
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    const/high16 v6, 0x60000

    #@36
    if-eq v5, v6, :cond_4

    #@38
    monitor-exit p0

    #@39
    .line 2730
    return v3

    #@3a
    .line 2732
    :cond_4
    :try_start_2
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@3c
    const/4 v6, 0x0

    #@3d
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    #@40
    move-result v6

    #@41
    if-lt v5, v6, :cond_6

    #@43
    .line 2733
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@45
    const/4 v6, 0x0

    #@46
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    #@49
    move-result v6

    #@4a
    if-lt v5, v6, :cond_6

    #@4c
    .line 2734
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@4e
    const/4 v6, 0x0

    #@4f
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    #@52
    move-result v6

    #@53
    if-lt v5, v6, :cond_6

    #@55
    .line 2735
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@57
    const/4 v6, 0x0

    #@58
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    #@5b
    move-result v6

    #@5c
    if-lt v5, v6, :cond_6

    #@5e
    .line 2736
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@60
    const/4 v6, 0x0

    #@61
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    #@64
    move-result v6

    #@65
    if-lt v5, v6, :cond_6

    #@67
    .line 2737
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    #@69
    const/4 v6, 0x0

    #@6a
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    move-result v6

    #@6e
    if-lt v5, v6, :cond_5

    #@70
    :goto_1
    monitor-exit p0

    #@71
    .line 2732
    return v3

    #@72
    :cond_5
    move v3, v4

    #@73
    .line 2737
    goto :goto_1

    #@74
    :cond_6
    move v3, v4

    #@75
    .line 2732
    goto :goto_1

    #@76
    .line 2713
    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    #@77
    monitor-exit p0

    #@78
    throw v3
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2000
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2001
    return v0

    #@6
    .line 2003
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2004
    monitor-enter p0

    #@a
    .line 2005
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    :cond_1
    monitor-exit p0

    #@12
    return v0

    #@13
    .line 2004
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5551
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5552
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v0

    #@a
    .line 5553
    .local v0, "callingUserId":I
    monitor-enter p0

    #@b
    .line 5554
    const/4 v5, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 5556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    move-result-wide v2

    #@13
    .line 5558
    .local v2, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@16
    move-result-object v1

    #@17
    .line 5559
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v5

    #@1b
    .line 5564
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    monitor-exit p0

    #@1f
    .line 5559
    return v5

    #@20
    .line 5560
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v4

    #@21
    .line 5562
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@24
    const-string/jumbo v6, "Failed to getApplicationHiddenSettingAsUser"

    #@27
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a
    .line 5564
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2d
    .line 5566
    const/4 v5, 0x0

    #@2e
    monitor-exit p0

    #@2f
    return v5

    #@30
    .line 5563
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@31
    .line 5564
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@34
    .line 5563
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@35
    .line 5553
    .end local v2    # "id":J
    :catchall_1
    move-exception v5

    #@36
    monitor-exit p0

    #@37
    throw v5
.end method

.method public isDeviceInitializer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4297
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 4298
    return v0

    #@6
    .line 4300
    :cond_0
    monitor-enter p0

    #@7
    .line 4301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 4302
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@d
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    #@10
    move-result v1

    #@11
    .line 4301
    if-eqz v1, :cond_1

    #@13
    .line 4303
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerPackageName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v0

    #@1d
    :cond_1
    monitor-exit p0

    #@1e
    .line 4301
    return v0

    #@1f
    .line 4300
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4159
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 4160
    return v0

    #@6
    .line 4162
    :cond_0
    monitor-enter p0

    #@7
    .line 4163
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 4164
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@d
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    #@10
    move-result v1

    #@11
    .line 4163
    if-eqz v1, :cond_1

    #@13
    .line 4165
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v0

    #@1d
    :cond_1
    monitor-exit p0

    #@1e
    .line 4163
    return v0

    #@1f
    .line 4162
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 5952
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v4

    #@8
    .line 5953
    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@b
    move-result-object v2

    #@c
    .line 5954
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    #@d
    .line 5955
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@10
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@13
    move-result v5

    #@14
    if-ge v0, v5, :cond_1

    #@16
    .line 5956
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    #@18
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    .line 5960
    .local v1, "lockTaskPackage":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 5961
    const/4 v5, 0x1

    #@25
    monitor-exit p0

    #@26
    return v5

    #@27
    .line 5955
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    #@2b
    .line 5965
    const/4 v5, 0x0

    #@2c
    return v5

    #@2d
    .line 5954
    :catchall_0
    move-exception v5

    #@2e
    monitor-exit p0

    #@2f
    throw v5
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 6080
    const-string/jumbo v1, "ComponentName is null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 6081
    monitor-enter p0

    #@7
    .line 6082
    const/4 v1, -0x1

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 6085
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@d
    const-string/jumbo v2, "audio"

    #@10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/AudioManager;

    #@16
    .line 6086
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    monitor-exit p0

    #@1b
    return v1

    #@1c
    .line 6081
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2011
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2012
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 2014
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2015
    monitor-enter p0

    #@a
    .line 2016
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@d
    move-result-object v0

    #@e
    .line 2017
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v1

    #@14
    monitor-exit p0

    #@15
    return v1

    #@16
    .line 2015
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5744
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 5746
    .local v4, "userId":I
    monitor-enter p0

    #@5
    .line 5747
    if-eqz p1, :cond_0

    #@7
    .line 5748
    const/4 v5, -0x1

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 5751
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v0

    #@f
    .line 5753
    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v2

    #@13
    .line 5754
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v5

    #@17
    .line 5759
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1a
    monitor-exit p0

    #@1b
    .line 5754
    return v5

    #@1c
    .line 5755
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v3

    #@1d
    .line 5757
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@20
    const-string/jumbo v6, "Failed to getBlockUninstallForUser"

    #@23
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@26
    .line 5759
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    monitor-exit p0

    #@2a
    .line 5762
    const/4 v5, 0x0

    #@2b
    return v5

    #@2c
    .line 5758
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@2d
    .line 5759
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@30
    .line 5758
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@31
    .line 5746
    .end local v0    # "id":J
    :catchall_1
    move-exception v5

    #@32
    monitor-exit p0

    #@33
    throw v5
.end method

.method loadDeviceOwner()V
    .locals 1

    #@0
    .prologue
    .line 1138
    monitor-enter p0

    #@1
    .line 1139
    :try_start_0
    invoke-static {}, Lcom/android/server/devicepolicy/DeviceOwner;->load()Lcom/android/server/devicepolicy/DeviceOwner;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@7
    .line 1140
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 1137
    return-void

    #@c
    .line 1138
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public lockNow()V
    .locals 2

    #@0
    .prologue
    .line 3073
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3074
    return-void

    #@5
    .line 3076
    :cond_0
    monitor-enter p0

    #@6
    .line 3079
    const/4 v0, 0x0

    #@7
    .line 3080
    const/4 v1, 0x3

    #@8
    .line 3079
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 3081
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lockNowUnchecked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 3072
    return-void

    #@10
    .line 3076
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 5970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    const/16 v7, 0x3e8

    #@6
    if-eq v6, v7, :cond_0

    #@8
    .line 5971
    new-instance v6, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v7, "notifyLockTaskModeChanged can only be called by system"

    #@d
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v6

    #@11
    .line 5973
    :cond_0
    monitor-enter p0

    #@12
    .line 5974
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@15
    move-result-object v5

    #@16
    .line 5975
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v2, Landroid/os/Bundle;

    #@18
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@1b
    .line 5976
    .local v2, "adminExtras":Landroid/os/Bundle;
    const-string/jumbo v6, "android.app.extra.LOCK_TASK_PACKAGE"

    #@1e
    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 5977
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@23
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_5

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@33
    .line 5978
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@35
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    .line 5979
    .local v3, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@40
    move-result-object v6

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 5980
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@46
    move-result-object v6

    #@47
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@49
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    .line 5981
    :goto_1
    if-nez v3, :cond_2

    #@53
    if-eqz v4, :cond_1

    #@55
    .line 5982
    :cond_2
    if-eqz p1, :cond_4

    #@57
    .line 5983
    const-string/jumbo v6, "android.app.action.LOCK_TASK_ENTERING"

    #@5a
    .line 5984
    const/4 v7, 0x0

    #@5b
    .line 5983
    invoke-virtual {p0, v0, v6, v2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 5973
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "adminExtras":Landroid/os/Bundle;
    .end local v3    # "ownsDevice":Z
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    #@60
    monitor-exit p0

    #@61
    throw v6

    #@62
    .line 5979
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "admin$iterator":Ljava/util/Iterator;
    .restart local v2    # "adminExtras":Landroid/os/Bundle;
    .restart local v3    # "ownsDevice":Z
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    const/4 v4, 0x0

    #@63
    .local v4, "ownsProfile":Z
    goto :goto_1

    #@64
    .line 5986
    .end local v4    # "ownsProfile":Z
    :cond_4
    :try_start_1
    const-string/jumbo v6, "android.app.action.LOCK_TASK_EXITING"

    #@67
    invoke-virtual {p0, v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "ownsDevice":Z
    :cond_5
    monitor-exit p0

    #@6c
    .line 5969
    return-void
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 11
    .param p1, "updateReceivedTime"    # J

    #@0
    .prologue
    .line 6364
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v8, "android.permission.NOTIFY_PENDING_SYSTEM_UPDATE"

    #@5
    .line 6365
    const-string/jumbo v9, "Only the system update service can broadcast update information"

    #@8
    .line 6364
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 6367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 6368
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@14
    const-string/jumbo v8, "Only the system update service in the primary usercan broadcast update information."

    #@17
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 6370
    return-void

    #@1b
    .line 6372
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@1d
    const-string/jumbo v7, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    #@20
    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@23
    .line 6373
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    #@26
    invoke-virtual {v3, v7, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@29
    .line 6376
    monitor-enter p0

    #@2a
    .line 6377
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    .line 6378
    .local v0, "deviceOwnerPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    #@30
    monitor-exit p0

    #@31
    .line 6379
    return-void

    #@32
    .line 6382
    :cond_1
    const/4 v6, 0x0

    #@33
    .line 6384
    .local v6, "receivers":[Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@38
    move-result-object v7

    #@39
    .line 6385
    const/4 v8, 0x2

    #@3a
    .line 6384
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@3d
    move-result-object v7

    #@3e
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 6389
    .end local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_4

    #@42
    .line 6390
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    move-result-wide v4

    #@46
    .line 6392
    .local v4, "ident":J
    const/4 v2, 0x0

    #@47
    .local v2, "i":I
    :goto_1
    :try_start_3
    array-length v7, v6

    #@48
    if-ge v2, v7, :cond_3

    #@4a
    .line 6393
    const-string/jumbo v7, "android.permission.BIND_DEVICE_ADMIN"

    #@4d
    aget-object v8, v6, v2

    #@4f
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_2

    #@57
    .line 6394
    new-instance v7, Landroid/content/ComponentName;

    #@59
    .line 6395
    aget-object v8, v6, v2

    #@5b
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5d
    .line 6394
    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@60
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@63
    .line 6396
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@65
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@67
    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 6392
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 6386
    .end local v2    # "i":I
    .end local v4    # "ident":J
    .restart local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    #@6e
    .line 6387
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@71
    const-string/jumbo v8, "Cannot find device owner package"

    #@74
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@77
    goto :goto_0

    #@78
    .line 6376
    .end local v0    # "deviceOwnerPackage":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v7

    #@79
    monitor-exit p0

    #@7a
    throw v7

    #@7b
    .line 6400
    .restart local v0    # "deviceOwnerPackage":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "ident":J
    :cond_3
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7e
    .end local v2    # "i":I
    .end local v4    # "ident":J
    :cond_4
    monitor-exit p0

    #@7f
    .line 6363
    return-void

    #@80
    .line 6399
    .restart local v2    # "i":I
    .restart local v4    # "ident":J
    :catchall_1
    move-exception v7

    #@81
    .line 6400
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 6399
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2060
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2061
    return v4

    #@6
    .line 2063
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@9
    .line 2064
    monitor-enter p0

    #@a
    .line 2065
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@d
    move-result-object v2

    #@e
    .line 2066
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v0

    #@14
    .line 2067
    .local v0, "N":I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@17
    .line 2068
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1f
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@21
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 2069
    const/4 v3, 0x1

    #@2c
    monitor-exit p0

    #@2d
    return v3

    #@2e
    .line 2067
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    :cond_2
    monitor-exit p0

    #@32
    .line 2072
    return v4

    #@33
    .line 2064
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit p0

    #@35
    throw v3
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2078
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2079
    return-void

    #@5
    .line 2081
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@8
    .line 2082
    monitor-enter p0

    #@9
    .line 2083
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    move-result-object v0

    #@d
    .line 2084
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    #@f
    monitor-exit p0

    #@10
    .line 2085
    return-void

    #@11
    .line 2087
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v4

    #@19
    if-eq v1, v4, :cond_3

    #@1b
    .line 2089
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    monitor-exit p0

    #@26
    .line 2090
    return-void

    #@27
    .line 2092
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@29
    .line 2093
    const-string/jumbo v4, "android.permission.MANAGE_DEVICE_ADMINS"

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 2092
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 2095
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33
    move-result-wide v2

    #@34
    .line 2097
    .local v2, "ident":J
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    .line 2099
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    monitor-exit p0

    #@3b
    .line 2077
    return-void

    #@3c
    .line 2098
    :catchall_0
    move-exception v1

    #@3d
    .line 2099
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 2098
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@41
    .line 2082
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "ident":J
    :catchall_1
    move-exception v1

    #@42
    monitor-exit p0

    #@43
    throw v1
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1356
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@3
    move-result-object v0

    #@4
    .line 1357
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    #@6
    .line 1358
    monitor-enter p0

    #@7
    .line 1359
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@a
    move-result-object v1

    #@b
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 1362
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    #@14
    .line 1363
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    #@16
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    #@19
    .line 1361
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    #@1c
    .line 1355
    :cond_0
    return-void

    #@1d
    .line 1358
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2336
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v4

    #@5
    .line 2337
    .local v4, "userId":I
    const/4 v1, 0x0

    #@6
    .line 2339
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    #@7
    .line 2341
    const/4 v5, -0x1

    #@8
    .line 2340
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    move-result-object v0

    #@c
    .line 2342
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-nez v5, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 2343
    return v6

    #@12
    .line 2345
    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    #@14
    .line 2346
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 2347
    new-instance v2, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 2348
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    move-object v1, v2

    #@23
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    #@24
    .line 2352
    if-eqz v1, :cond_2

    #@26
    .line 2353
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    #@28
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    #@2b
    .line 2354
    const/4 v5, 0x1

    #@2c
    return v5

    #@2d
    .line 2339
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    #@2e
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    #@2f
    throw v5

    #@30
    .line 2357
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return v6

    #@31
    .line 2339
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    #@32
    move-object v1, v2

    #@33
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5375
    const-string/jumbo v2, "ComponentName is null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5376
    monitor-enter p0

    #@7
    .line 5377
    const/4 v2, -0x2

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 5379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v0

    #@f
    .line 5381
    .local v0, "id":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@11
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result v2

    #@19
    .line 5383
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    monitor-exit p0

    #@1d
    .line 5381
    return v2

    #@1e
    .line 5382
    :catchall_0
    move-exception v2

    #@1f
    .line 5383
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@22
    .line 5382
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23
    .line 5376
    .end local v0    # "id":J
    :catchall_1
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method removeUserData(I)V
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1115
    monitor-enter p0

    #@2
    .line 1116
    if-nez p1, :cond_0

    #@4
    .line 1117
    :try_start_0
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@7
    const-string/jumbo v3, "Tried to remove device policy file for user 0! Ignoring."

    #@a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 1118
    return-void

    #@f
    .line 1120
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1121
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@15
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    #@18
    .line 1122
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@1a
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    #@1d
    .line 1125
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@25
    .line 1126
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_2

    #@27
    .line 1127
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    #@2c
    .line 1129
    :cond_2
    new-instance v1, Ljava/io/File;

    #@2e
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@31
    move-result-object v2

    #@32
    .line 1130
    const-string/jumbo v3, "device_policies.xml"

    #@35
    .line 1129
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@38
    .line 1131
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@3b
    .line 1132
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "Removed device policy file "

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 1134
    invoke-direct {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    #@5d
    .line 1114
    return-void

    #@5e
    .line 1115
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit p0

    #@60
    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3528
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@4
    .line 3529
    const-string/jumbo v7, "report failed password attempt"

    #@7
    invoke-direct {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    #@a
    .line 3530
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 3531
    const-string/jumbo v8, "android.permission.BIND_DEVICE_ADMIN"

    #@f
    .line 3530
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 3533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 3535
    .local v0, "ident":J
    const/4 v6, 0x0

    #@17
    .line 3536
    .local v6, "wipeData":Z
    const/4 v2, 0x0

    #@18
    .line 3537
    .local v2, "identifier":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    .line 3538
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@1c
    move-result-object v4

    #@1d
    .line 3539
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@1f
    add-int/lit8 v7, v7, 0x1

    #@21
    iput v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@23
    .line 3540
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@26
    .line 3541
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@28
    if-eqz v7, :cond_1

    #@2a
    .line 3543
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@2d
    move-result-object v5

    #@2e
    .line 3544
    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v5, :cond_3

    #@30
    .line 3545
    iget v3, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@32
    .line 3546
    .local v3, "max":I
    :goto_0
    if-lez v3, :cond_0

    #@34
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@36
    if-lt v7, v3, :cond_0

    #@38
    .line 3550
    const/4 v6, 0x1

    #@39
    .line 3551
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    #@40
    move-result v2

    #@41
    .line 3554
    :cond_0
    const-string/jumbo v7, "android.app.action.ACTION_PASSWORD_FAILED"

    #@44
    .line 3555
    const/4 v8, 0x1

    #@45
    .line 3553
    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .end local v3    # "max":I
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_2
    monitor-exit p0

    #@49
    .line 3558
    if-eqz v6, :cond_2

    #@4b
    .line 3561
    const-string/jumbo v7, "reportFailedPasswordAttempt()"

    #@4e
    .line 3560
    const/4 v8, 0x0

    #@4f
    invoke-direct {p0, v8, v2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@52
    .line 3564
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 3527
    return-void

    #@56
    .line 3545
    .restart local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const/4 v3, 0x0

    #@57
    .restart local v3    # "max":I
    goto :goto_0

    #@58
    .line 3537
    .end local v3    # "max":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v7

    #@59
    :try_start_3
    monitor-exit p0

    #@5a
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5b
    .line 3563
    :catchall_1
    move-exception v7

    #@5c
    .line 3564
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 3563
    throw v7
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 3570
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@3
    .line 3571
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@5
    .line 3572
    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    #@8
    const/4 v5, 0x0

    #@9
    .line 3571
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 3574
    monitor-enter p0

    #@d
    .line 3575
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@10
    move-result-object v2

    #@11
    .line 3576
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@13
    if-nez v3, :cond_0

    #@15
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@17
    if-ltz v3, :cond_2

    #@19
    .line 3577
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    move-result-wide v0

    #@1d
    .line 3579
    .local v0, "ident":J
    const/4 v3, 0x0

    #@1e
    :try_start_1
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@20
    .line 3580
    const/4 v3, -0x1

    #@21
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@23
    .line 3581
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@26
    .line 3582
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 3584
    const-string/jumbo v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    #@2d
    .line 3585
    const/4 v4, 0x1

    #@2e
    .line 3583
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 3588
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@34
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    #@35
    .line 3569
    return-void

    #@36
    .line 3587
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    #@37
    .line 3588
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 3587
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3b
    .line 3574
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    #@3c
    monitor-exit p0

    #@3d
    throw v3
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 37
    .param p1, "passwordOrNull"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2835
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    move/from16 v34, v0

    #@6
    if-nez v34, :cond_0

    #@8
    .line 2836
    const/16 v34, 0x0

    #@a
    return v34

    #@b
    .line 2838
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v32

    #@f
    .line 2839
    .local v32, "userHandle":I
    const-string/jumbo v34, "reset the password"

    #@12
    move-object/from16 v0, p0

    #@14
    move/from16 v1, v32

    #@16
    move-object/from16 v2, v34

    #@18
    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    #@1b
    .line 2841
    if-eqz p1, :cond_1

    #@1d
    move-object/from16 v25, p1

    #@1f
    .line 2844
    .local v25, "password":Ljava/lang/String;
    :goto_0
    monitor-enter p0

    #@20
    .line 2847
    const/16 v34, 0x0

    #@22
    .line 2848
    const/16 v35, 0x2

    #@24
    .line 2847
    :try_start_0
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, v34

    #@28
    move/from16 v2, v35

    #@2a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@2d
    .line 2849
    const/16 v34, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v34

    #@33
    move/from16 v2, v32

    #@35
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    #@38
    move-result v27

    #@39
    .line 2850
    .local v27, "quality":I
    if-eqz v27, :cond_3

    #@3b
    .line 2851
    invoke-static/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    #@3e
    move-result v28

    #@3f
    .line 2852
    .local v28, "realQuality":I
    move/from16 v0, v28

    #@41
    move/from16 v1, v27

    #@43
    if-ge v0, v1, :cond_2

    #@45
    .line 2853
    const/high16 v34, 0x60000

    #@47
    move/from16 v0, v27

    #@49
    move/from16 v1, v34

    #@4b
    if-eq v0, v1, :cond_2

    #@4d
    .line 2854
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@50
    new-instance v35, Ljava/lang/StringBuilder;

    #@52
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v36, "resetPassword: password quality 0x"

    #@58
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v35

    #@5c
    .line 2855
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5f
    move-result-object v36

    #@60
    .line 2854
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v35

    #@64
    .line 2856
    const-string/jumbo v36, " does not meet required quality 0x"

    #@67
    .line 2854
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v35

    #@6b
    .line 2857
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6e
    move-result-object v36

    #@6f
    .line 2854
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v35

    #@73
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v35

    #@77
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    .line 2858
    const/16 v34, 0x0

    #@7c
    monitor-exit p0

    #@7d
    return v34

    #@7e
    .line 2841
    .end local v25    # "password":Ljava/lang/String;
    .end local v27    # "quality":I
    .end local v28    # "realQuality":I
    :cond_1
    const-string/jumbo v25, ""

    #@81
    .restart local v25    # "password":Ljava/lang/String;
    goto :goto_0

    #@82
    .line 2860
    .restart local v27    # "quality":I
    .restart local v28    # "realQuality":I
    :cond_2
    :try_start_1
    move/from16 v0, v28

    #@84
    move/from16 v1, v27

    #@86
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@89
    move-result v27

    #@8a
    .line 2862
    .end local v28    # "realQuality":I
    :cond_3
    const/16 v34, 0x0

    #@8c
    move-object/from16 v0, p0

    #@8e
    move-object/from16 v1, v34

    #@90
    move/from16 v2, v32

    #@92
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    #@95
    move-result v11

    #@96
    .line 2863
    .local v11, "length":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@99
    move-result v34

    #@9a
    move/from16 v0, v34

    #@9c
    if-ge v0, v11, :cond_4

    #@9e
    .line 2864
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@a1
    new-instance v35, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v36, "resetPassword: password length "

    #@a9
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v35

    #@ad
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@b0
    move-result v36

    #@b1
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v35

    #@b5
    .line 2865
    const-string/jumbo v36, " does not meet required length "

    #@b8
    .line 2864
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v35

    #@bc
    move-object/from16 v0, v35

    #@be
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v35

    #@c2
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v35

    #@c6
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c9
    .line 2866
    const/16 v34, 0x0

    #@cb
    monitor-exit p0

    #@cc
    return v34

    #@cd
    .line 2868
    :cond_4
    const/high16 v34, 0x60000

    #@cf
    move/from16 v0, v27

    #@d1
    move/from16 v1, v34

    #@d3
    if-ne v0, v1, :cond_e

    #@d5
    .line 2869
    const/4 v14, 0x0

    #@d6
    .line 2870
    .local v14, "letters":I
    const/16 v31, 0x0

    #@d8
    .line 2871
    .local v31, "uppercase":I
    const/4 v15, 0x0

    #@d9
    .line 2872
    .local v15, "lowercase":I
    const/16 v24, 0x0

    #@db
    .line 2873
    .local v24, "numbers":I
    const/16 v30, 0x0

    #@dd
    .line 2874
    .local v30, "symbols":I
    const/16 v23, 0x0

    #@df
    .line 2875
    .local v23, "nonletter":I
    const/4 v10, 0x0

    #@e0
    .local v10, "i":I
    :goto_1
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@e3
    move-result v34

    #@e4
    move/from16 v0, v34

    #@e6
    if-ge v10, v0, :cond_8

    #@e8
    .line 2876
    move-object/from16 v0, v25

    #@ea
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    #@ed
    move-result v6

    #@ee
    .line 2877
    .local v6, "c":C
    const/16 v34, 0x41

    #@f0
    move/from16 v0, v34

    #@f2
    if-lt v6, v0, :cond_5

    #@f4
    const/16 v34, 0x5a

    #@f6
    move/from16 v0, v34

    #@f8
    if-gt v6, v0, :cond_5

    #@fa
    .line 2878
    add-int/lit8 v14, v14, 0x1

    #@fc
    .line 2879
    add-int/lit8 v31, v31, 0x1

    #@fe
    .line 2875
    :goto_2
    add-int/lit8 v10, v10, 0x1

    #@100
    goto :goto_1

    #@101
    .line 2880
    :cond_5
    const/16 v34, 0x61

    #@103
    move/from16 v0, v34

    #@105
    if-lt v6, v0, :cond_6

    #@107
    const/16 v34, 0x7a

    #@109
    move/from16 v0, v34

    #@10b
    if-gt v6, v0, :cond_6

    #@10d
    .line 2881
    add-int/lit8 v14, v14, 0x1

    #@10f
    .line 2882
    add-int/lit8 v15, v15, 0x1

    #@111
    goto :goto_2

    #@112
    .line 2883
    :cond_6
    const/16 v34, 0x30

    #@114
    move/from16 v0, v34

    #@116
    if-lt v6, v0, :cond_7

    #@118
    const/16 v34, 0x39

    #@11a
    move/from16 v0, v34

    #@11c
    if-gt v6, v0, :cond_7

    #@11e
    .line 2884
    add-int/lit8 v24, v24, 0x1

    #@120
    .line 2885
    add-int/lit8 v23, v23, 0x1

    #@122
    goto :goto_2

    #@123
    .line 2887
    :cond_7
    add-int/lit8 v30, v30, 0x1

    #@125
    .line 2888
    add-int/lit8 v23, v23, 0x1

    #@127
    goto :goto_2

    #@128
    .line 2891
    .end local v6    # "c":C
    :cond_8
    const/16 v34, 0x0

    #@12a
    move-object/from16 v0, p0

    #@12c
    move-object/from16 v1, v34

    #@12e
    move/from16 v2, v32

    #@130
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    #@133
    move-result v16

    #@134
    .line 2892
    .local v16, "neededLetters":I
    move/from16 v0, v16

    #@136
    if-ge v14, v0, :cond_9

    #@138
    .line 2893
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@13b
    new-instance v35, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v36, "resetPassword: number of letters "

    #@143
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v35

    #@147
    move-object/from16 v0, v35

    #@149
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v35

    #@14d
    .line 2894
    const-string/jumbo v36, " does not meet required number of letters "

    #@150
    .line 2893
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v35

    #@154
    move-object/from16 v0, v35

    #@156
    move/from16 v1, v16

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v35

    #@15c
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v35

    #@160
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@163
    .line 2895
    const/16 v34, 0x0

    #@165
    monitor-exit p0

    #@166
    return v34

    #@167
    .line 2897
    :cond_9
    const/16 v34, 0x0

    #@169
    :try_start_3
    move-object/from16 v0, p0

    #@16b
    move-object/from16 v1, v34

    #@16d
    move/from16 v2, v32

    #@16f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    #@172
    move-result v19

    #@173
    .line 2898
    .local v19, "neededNumbers":I
    move/from16 v0, v24

    #@175
    move/from16 v1, v19

    #@177
    if-ge v0, v1, :cond_a

    #@179
    .line 2899
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@17c
    new-instance v35, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v36, "resetPassword: number of numerical digits "

    #@184
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v35

    #@188
    move-object/from16 v0, v35

    #@18a
    move/from16 v1, v24

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v35

    #@190
    .line 2900
    const-string/jumbo v36, " does not meet required number of numerical digits "

    #@193
    .line 2899
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v35

    #@197
    move-object/from16 v0, v35

    #@199
    move/from16 v1, v19

    #@19b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v35

    #@19f
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v35

    #@1a3
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1a6
    .line 2902
    const/16 v34, 0x0

    #@1a8
    monitor-exit p0

    #@1a9
    return v34

    #@1aa
    .line 2904
    :cond_a
    const/16 v34, 0x0

    #@1ac
    :try_start_4
    move-object/from16 v0, p0

    #@1ae
    move-object/from16 v1, v34

    #@1b0
    move/from16 v2, v32

    #@1b2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    #@1b5
    move-result v17

    #@1b6
    .line 2905
    .local v17, "neededLowerCase":I
    move/from16 v0, v17

    #@1b8
    if-ge v15, v0, :cond_b

    #@1ba
    .line 2906
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@1bd
    new-instance v35, Ljava/lang/StringBuilder;

    #@1bf
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@1c2
    const-string/jumbo v36, "resetPassword: number of lowercase letters "

    #@1c5
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v35

    #@1c9
    move-object/from16 v0, v35

    #@1cb
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v35

    #@1cf
    .line 2907
    const-string/jumbo v36, " does not meet required number of lowercase letters "

    #@1d2
    .line 2906
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v35

    #@1d6
    move-object/from16 v0, v35

    #@1d8
    move/from16 v1, v17

    #@1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v35

    #@1de
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v35

    #@1e2
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1e5
    .line 2909
    const/16 v34, 0x0

    #@1e7
    monitor-exit p0

    #@1e8
    return v34

    #@1e9
    .line 2911
    :cond_b
    const/16 v34, 0x0

    #@1eb
    :try_start_5
    move-object/from16 v0, p0

    #@1ed
    move-object/from16 v1, v34

    #@1ef
    move/from16 v2, v32

    #@1f1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    #@1f4
    move-result v21

    #@1f5
    .line 2912
    .local v21, "neededUpperCase":I
    move/from16 v0, v31

    #@1f7
    move/from16 v1, v21

    #@1f9
    if-ge v0, v1, :cond_c

    #@1fb
    .line 2913
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@1fe
    new-instance v35, Ljava/lang/StringBuilder;

    #@200
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@203
    const-string/jumbo v36, "resetPassword: number of uppercase letters "

    #@206
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v35

    #@20a
    move-object/from16 v0, v35

    #@20c
    move/from16 v1, v31

    #@20e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@211
    move-result-object v35

    #@212
    .line 2914
    const-string/jumbo v36, " does not meet required number of uppercase letters "

    #@215
    .line 2913
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v35

    #@219
    move-object/from16 v0, v35

    #@21b
    move/from16 v1, v21

    #@21d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@220
    move-result-object v35

    #@221
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@224
    move-result-object v35

    #@225
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@228
    .line 2916
    const/16 v34, 0x0

    #@22a
    monitor-exit p0

    #@22b
    return v34

    #@22c
    .line 2918
    :cond_c
    const/16 v34, 0x0

    #@22e
    :try_start_6
    move-object/from16 v0, p0

    #@230
    move-object/from16 v1, v34

    #@232
    move/from16 v2, v32

    #@234
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    #@237
    move-result v20

    #@238
    .line 2919
    .local v20, "neededSymbols":I
    move/from16 v0, v30

    #@23a
    move/from16 v1, v20

    #@23c
    if-ge v0, v1, :cond_d

    #@23e
    .line 2920
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@241
    new-instance v35, Ljava/lang/StringBuilder;

    #@243
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    const-string/jumbo v36, "resetPassword: number of special symbols "

    #@249
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v35

    #@24d
    move-object/from16 v0, v35

    #@24f
    move/from16 v1, v30

    #@251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@254
    move-result-object v35

    #@255
    .line 2921
    const-string/jumbo v36, " does not meet required number of special symbols "

    #@258
    .line 2920
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v35

    #@25c
    move-object/from16 v0, v35

    #@25e
    move/from16 v1, v20

    #@260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@263
    move-result-object v35

    #@264
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v35

    #@268
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@26b
    .line 2922
    const/16 v34, 0x0

    #@26d
    monitor-exit p0

    #@26e
    return v34

    #@26f
    .line 2924
    :cond_d
    const/16 v34, 0x0

    #@271
    :try_start_7
    move-object/from16 v0, p0

    #@273
    move-object/from16 v1, v34

    #@275
    move/from16 v2, v32

    #@277
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    #@27a
    move-result v18

    #@27b
    .line 2925
    .local v18, "neededNonLetter":I
    move/from16 v0, v23

    #@27d
    move/from16 v1, v18

    #@27f
    if-ge v0, v1, :cond_e

    #@281
    .line 2926
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@284
    new-instance v35, Ljava/lang/StringBuilder;

    #@286
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@289
    const-string/jumbo v36, "resetPassword: number of non-letter characters "

    #@28c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v35

    #@290
    move-object/from16 v0, v35

    #@292
    move/from16 v1, v23

    #@294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@297
    move-result-object v35

    #@298
    .line 2927
    const-string/jumbo v36, " does not meet required number of non-letter characters "

    #@29b
    .line 2926
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v35

    #@29f
    move-object/from16 v0, v35

    #@2a1
    move/from16 v1, v18

    #@2a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v35

    #@2a7
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2aa
    move-result-object v35

    #@2ab
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@2ae
    .line 2929
    const/16 v34, 0x0

    #@2b0
    monitor-exit p0

    #@2b1
    return v34

    #@2b2
    .end local v10    # "i":I
    .end local v14    # "letters":I
    .end local v15    # "lowercase":I
    .end local v16    # "neededLetters":I
    .end local v17    # "neededLowerCase":I
    .end local v18    # "neededNonLetter":I
    .end local v19    # "neededNumbers":I
    .end local v20    # "neededSymbols":I
    .end local v21    # "neededUpperCase":I
    .end local v23    # "nonletter":I
    .end local v24    # "numbers":I
    .end local v30    # "symbols":I
    .end local v31    # "uppercase":I
    :cond_e
    monitor-exit p0

    #@2b3
    .line 2934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b6
    move-result v8

    #@2b7
    .line 2935
    .local v8, "callingUid":I
    move-object/from16 v0, p0

    #@2b9
    move/from16 v1, v32

    #@2bb
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@2be
    move-result-object v26

    #@2bf
    .line 2936
    .local v26, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v26

    #@2c1
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@2c3
    move/from16 v34, v0

    #@2c5
    if-ltz v34, :cond_f

    #@2c7
    move-object/from16 v0, v26

    #@2c9
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@2cb
    move/from16 v34, v0

    #@2cd
    move/from16 v0, v34

    #@2cf
    if-eq v0, v8, :cond_f

    #@2d1
    .line 2937
    const-string/jumbo v34, "DevicePolicyManagerService"

    #@2d4
    const-string/jumbo v35, "resetPassword: already set by another uid and not entered by user"

    #@2d7
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2da
    .line 2938
    const/16 v34, 0x0

    #@2dc
    return v34

    #@2dd
    .line 2844
    .end local v8    # "callingUid":I
    .end local v11    # "length":I
    .end local v26    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v27    # "quality":I
    :catchall_0
    move-exception v34

    #@2de
    monitor-exit p0

    #@2df
    throw v34

    #@2e0
    .line 2941
    .restart local v8    # "callingUid":I
    .restart local v11    # "length":I
    .restart local v26    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v27    # "quality":I
    :cond_f
    move-object/from16 v0, p0

    #@2e2
    invoke-direct {v0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDeviceOwnerOrInitializer(I)Z

    #@2e5
    move-result v7

    #@2e6
    .line 2943
    .local v7, "callerIsDeviceOwnerAdmin":Z
    and-int/lit8 v34, p2, 0x2

    #@2e8
    if-eqz v34, :cond_13

    #@2ea
    const/4 v9, 0x1

    #@2eb
    .line 2944
    .local v9, "doNotAskCredentialsOnBoot":Z
    :goto_3
    if-eqz v7, :cond_10

    #@2ed
    if-eqz v9, :cond_10

    #@2ef
    .line 2945
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDoNotAskCredentialsOnBoot()V

    #@2f2
    .line 2950
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2f5
    move-result-wide v12

    #@2f6
    .line 2952
    .local v12, "ident":J
    :try_start_8
    new-instance v33, Lcom/android/internal/widget/LockPatternUtils;

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2fc
    move-object/from16 v34, v0

    #@2fe
    invoke-direct/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@301
    .line 2953
    .local v33, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@304
    move-result v34

    #@305
    if-nez v34, :cond_14

    #@307
    .line 2954
    const/16 v34, 0x0

    #@309
    move-object/from16 v0, v33

    #@30b
    move-object/from16 v1, v25

    #@30d
    move-object/from16 v2, v34

    #@30f
    move/from16 v3, v27

    #@311
    move/from16 v4, v32

    #@313
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    #@316
    .line 2958
    :goto_4
    and-int/lit8 v34, p2, 0x1

    #@318
    if-eqz v34, :cond_15

    #@31a
    const/16 v29, 0x1

    #@31c
    .line 2959
    .local v29, "requireEntry":Z
    :goto_5
    if-eqz v29, :cond_11

    #@31e
    .line 2960
    const/16 v34, -0x1

    #@320
    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    #@323
    .line 2962
    :cond_11
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@324
    .line 2963
    if-eqz v29, :cond_16

    #@326
    move/from16 v22, v8

    #@328
    .line 2964
    .local v22, "newOwner":I
    :goto_6
    :try_start_9
    move-object/from16 v0, v26

    #@32a
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@32c
    move/from16 v34, v0

    #@32e
    move/from16 v0, v34

    #@330
    move/from16 v1, v22

    #@332
    if-eq v0, v1, :cond_12

    #@334
    .line 2965
    move/from16 v0, v22

    #@336
    move-object/from16 v1, v26

    #@338
    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@33a
    .line 2966
    move-object/from16 v0, p0

    #@33c
    move/from16 v1, v32

    #@33e
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@341
    :cond_12
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@342
    .line 2970
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@345
    .line 2973
    const/16 v34, 0x1

    #@347
    return v34

    #@348
    .line 2943
    .end local v9    # "doNotAskCredentialsOnBoot":Z
    .end local v12    # "ident":J
    .end local v22    # "newOwner":I
    .end local v29    # "requireEntry":Z
    .end local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_13
    const/4 v9, 0x0

    #@349
    .restart local v9    # "doNotAskCredentialsOnBoot":Z
    goto :goto_3

    #@34a
    .line 2956
    .restart local v12    # "ident":J
    .restart local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_14
    :try_start_b
    move-object/from16 v0, v33

    #@34c
    move/from16 v1, v32

    #@34e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@351
    goto :goto_4

    #@352
    .line 2969
    .end local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_1
    move-exception v34

    #@353
    .line 2970
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@356
    .line 2969
    throw v34

    #@357
    .line 2958
    .restart local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_15
    const/16 v29, 0x0

    #@359
    .restart local v29    # "requireEntry":Z
    goto :goto_5

    #@35a
    .line 2963
    :cond_16
    const/16 v22, -0x1

    #@35c
    .restart local v22    # "newOwner":I
    goto :goto_6

    #@35d
    .line 2962
    :catchall_2
    move-exception v34

    #@35e
    :try_start_c
    monitor-exit p0

    #@35f
    throw v34
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1298
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    #@4
    .line 1297
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 1302
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    #@4
    .line 1301
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "adminExtras"    # Landroid/os/Bundle;
    .param p4, "result"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1310
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6
    .line 1311
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@8
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 1312
    const-string/jumbo v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    #@12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1313
    const-string/jumbo v0, "expiration"

    #@1b
    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@1d
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@20
    .line 1315
    :cond_0
    if-eqz p3, :cond_1

    #@22
    .line 1316
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@25
    .line 1318
    :cond_1
    if-eqz p4, :cond_2

    #@27
    .line 1319
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    #@2c
    move-result-object v2

    #@2d
    .line 1320
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@2f
    const/4 v6, -0x1

    #@30
    move-object v4, p4

    #@31
    move-object v7, v3

    #@32
    move-object v8, v3

    #@33
    .line 1319
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@36
    .line 1309
    :goto_0
    return-void

    #@37
    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@40
    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1330
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@3
    move-result-object v3

    #@4
    .line 1331
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    .line 1332
    .local v1, "count":I
    if-lez v1, :cond_1

    #@c
    .line 1333
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@f
    .line 1334
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@17
    .line 1335
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@19
    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 1336
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    #@22
    .line 1333
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1329
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    #@0
    .prologue
    .line 5679
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5680
    return-void

    #@5
    .line 5682
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@8
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 5683
    monitor-enter p0

    #@c
    .line 5685
    const/4 v1, -0x1

    #@d
    .line 5684
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v0

    #@11
    .line 5686
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz p3, :cond_1

    #@13
    .line 5687
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@15
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@18
    .line 5691
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1b
    move-result v1

    #@1c
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 5678
    return-void

    #@21
    .line 5689
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    #@23
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 5683
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit p0

    #@29
    throw v1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1949
    return-void

    #@5
    .line 1951
    :cond_0
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    #@9
    .line 1947
    return-void
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    #@0
    .prologue
    .line 3459
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 3460
    return-void

    #@5
    .line 3462
    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@8
    .line 3463
    const-string/jumbo v3, "set the active password"

    #@b
    invoke-direct {p0, p9, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    #@e
    .line 3465
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@10
    .line 3466
    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    #@13
    const/4 v5, 0x0

    #@14
    .line 3465
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 3467
    invoke-virtual {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@1a
    move-result-object v2

    #@1b
    .line 3469
    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    #@1e
    .line 3471
    monitor-enter p0

    #@1f
    .line 3472
    :try_start_0
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@21
    if-ne v3, p1, :cond_1

    #@23
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@25
    if-eq v3, p2, :cond_3

    #@27
    .line 3479
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    move-result-wide v0

    #@2b
    .line 3481
    .local v0, "ident":J
    :try_start_1
    iput p1, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    #@2d
    .line 3482
    iput p2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    #@2f
    .line 3483
    iput p3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@31
    .line 3484
    iput p5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@33
    .line 3485
    iput p4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@35
    .line 3486
    iput p6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@37
    .line 3487
    iput p7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@39
    .line 3488
    iput p8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    #@3b
    .line 3489
    const/4 v3, 0x0

    #@3c
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@3e
    .line 3490
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@41
    .line 3491
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    #@44
    .line 3492
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@46
    invoke-virtual {p0, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@49
    .line 3494
    const-string/jumbo v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    #@4c
    .line 3495
    const/4 v4, 0x0

    #@4d
    .line 3493
    invoke-direct {p0, v3, v4, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 3497
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    #@54
    .line 3458
    return-void

    #@55
    .line 3473
    :cond_3
    :try_start_3
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    #@57
    if-nez v3, :cond_1

    #@59
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    #@5b
    if-ne v3, p3, :cond_1

    #@5d
    .line 3474
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    #@5f
    if-ne v3, p4, :cond_1

    #@61
    .line 3475
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    #@63
    if-ne v3, p5, :cond_1

    #@65
    .line 3476
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    #@67
    if-ne v3, p6, :cond_1

    #@69
    .line 3477
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    #@6b
    if-ne v3, p7, :cond_1

    #@6d
    .line 3478
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    #@6f
    if-eq v3, p8, :cond_2

    #@71
    goto :goto_0

    #@72
    .line 3496
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    #@73
    .line 3497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@76
    .line 3496
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@77
    .line 3471
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    #@78
    monitor-exit p0

    #@79
    throw v3
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    #@0
    .prologue
    .line 5530
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v0

    #@a
    .line 5532
    .local v0, "callingUserId":I
    monitor-enter p0

    #@b
    .line 5533
    const/4 v5, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 5535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    move-result-wide v2

    #@13
    .line 5537
    .local v2, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@16
    move-result-object v1

    #@17
    .line 5538
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, p3, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v5

    #@1b
    .line 5543
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    monitor-exit p0

    #@1f
    .line 5538
    return v5

    #@20
    .line 5539
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v4

    #@21
    .line 5541
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@24
    const-string/jumbo v6, "Failed to setApplicationHiddenSetting"

    #@27
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a
    .line 5543
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2d
    .line 5545
    const/4 v5, 0x0

    #@2e
    monitor-exit p0

    #@2f
    return v5

    #@30
    .line 5542
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@31
    .line 5543
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@34
    .line 5542
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@35
    .line 5532
    .end local v2    # "id":J
    :catchall_1
    move-exception v5

    #@36
    monitor-exit p0

    #@37
    throw v5
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4841
    const-string/jumbo v3, "ComponentName is null"

    #@3
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4842
    new-instance v2, Landroid/os/UserHandle;

    #@8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v3

    #@c
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    .line 4843
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    #@10
    .line 4844
    const/4 v3, -0x1

    #@11
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    .line 4846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    move-result-wide v0

    #@18
    .line 4848
    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@1a
    invoke-virtual {v3, p2, p3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 4850
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    monitor-exit p0

    #@21
    .line 4840
    return-void

    #@22
    .line 4849
    :catchall_0
    move-exception v3

    #@23
    .line 4850
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@26
    .line 4849
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .line 4843
    .end local v0    # "id":J
    :catchall_1
    move-exception v3

    #@28
    monitor-exit p0

    #@29
    throw v3
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 3934
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3935
    return-void

    #@5
    .line 3937
    :cond_0
    const-string/jumbo v4, "ComponentName is null"

    #@8
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 3938
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 3939
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 3941
    const/4 v4, -0x2

    #@11
    .line 3940
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 3942
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@17
    if-eq v4, p2, :cond_1

    #@19
    .line 3943
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    #@1b
    .line 3944
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 3949
    if-eqz p2, :cond_2

    #@21
    .line 3950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v2

    #@25
    .line 3952
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2a
    move-result-object v4

    #@2b
    .line 3953
    const-string/jumbo v5, "auto_time"

    #@2e
    const/4 v6, 0x1

    #@2f
    .line 3952
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 3955
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 3933
    .end local v2    # "ident":J
    :cond_2
    return-void

    #@36
    .line 3939
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    #@37
    monitor-exit p0

    #@38
    throw v4

    #@39
    .line 3954
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v4

    #@3a
    .line 3955
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 3954
    throw v4
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 5859
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5860
    return-void

    #@5
    .line 5862
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@8
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 5863
    monitor-enter p0

    #@c
    .line 5865
    const/4 v1, -0x1

    #@d
    .line 5864
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v0

    #@11
    .line 5866
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@13
    if-eq v1, p2, :cond_1

    #@15
    .line 5867
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    #@17
    .line 5868
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1a
    move-result v1

    #@1b
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 5858
    return-void

    #@20
    .line 5863
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3986
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 3987
    return-void

    #@5
    .line 3989
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 3990
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 3991
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 3993
    const/16 v2, 0x8

    #@12
    .line 3992
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@15
    move-result-object v0

    #@16
    .line 3994
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@18
    if-eq v2, p2, :cond_1

    #@1a
    .line 3995
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    #@1c
    .line 3996
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@1f
    .line 3998
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 3985
    return-void

    #@28
    .line 3991
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 3301
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v1

    #@4
    .line 3302
    .local v1, "userHandle":I
    monitor-enter p0

    #@5
    .line 3303
    const/4 v2, -0x1

    #@6
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@9
    .line 3304
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@c
    move-result-object v0

    #@d
    .line 3305
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    #@f
    .line 3306
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 3300
    return-void

    #@14
    .line 3302
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 5767
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5768
    return-void

    #@5
    .line 5770
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    #@8
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 5771
    monitor-enter p0

    #@c
    .line 5773
    const/4 v1, -0x1

    #@d
    .line 5772
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@10
    move-result-object v0

    #@11
    .line 5774
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@13
    if-eq v1, p2, :cond_1

    #@15
    .line 5775
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    #@17
    .line 5776
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1a
    move-result v1

    #@1b
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 5766
    return-void

    #@20
    .line 5771
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method

.method public setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "initializer"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4241
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 4242
    return v3

    #@6
    .line 4244
    :cond_0
    if-eqz p2, :cond_1

    #@8
    .line 4245
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v3

    #@12
    .line 4244
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 4251
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@1b
    move-result-object v2

    #@1c
    .line 4252
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@27
    move-result v4

    #@28
    .line 4251
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v1

    #@2c
    .line 4257
    :goto_0
    if-nez v1, :cond_2

    #@2e
    .line 4258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v3, "Only system app can be set as device initializer."

    #@33
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 4246
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Invalid component name "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 4247
    const-string/jumbo v4, " for device initializer"

    #@4c
    .line 4246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2

    #@58
    .line 4253
    :catch_0
    move-exception v0

    #@59
    .line 4254
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@5a
    .line 4255
    .local v1, "isInitializerSystemApp":Z
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@5d
    const-string/jumbo v3, "Fail to check if device initialzer is system app."

    #@60
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    goto :goto_0

    #@64
    .line 4260
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isInitializerSystemApp":Z
    :cond_2
    monitor-enter p0

    #@65
    .line 4261
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetDeviceInitializer(Landroid/content/ComponentName;)V

    #@68
    .line 4263
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@6a
    if-eqz v2, :cond_3

    #@6c
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@6e
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_3

    #@74
    .line 4264
    new-instance v2, Ljava/lang/IllegalStateException;

    #@76
    .line 4265
    const-string/jumbo v3, "Trying to set device initializer but device initializer is already set."

    #@79
    .line 4264
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    .line 4260
    :catchall_0
    move-exception v2

    #@7e
    monitor-exit p0

    #@7f
    throw v2

    #@80
    .line 4268
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@82
    if-nez v2, :cond_4

    #@84
    .line 4270
    invoke-static {p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceInitializer(Landroid/content/ComponentName;)Lcom/android/server/devicepolicy/DeviceOwner;

    #@87
    move-result-object v2

    #@88
    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@8a
    .line 4276
    :goto_1
    const/4 v2, 0x0

    #@8b
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->addDeviceInitializerToLockTaskPackagesLocked(I)V

    #@8e
    .line 4277
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@90
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@93
    .line 4278
    const/4 v2, 0x1

    #@94
    monitor-exit p0

    #@95
    return v2

    #@96
    .line 4273
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@98
    invoke-virtual {v2, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceInitializer(Landroid/content/ComponentName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9b
    goto :goto_1
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4113
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 4114
    return v6

    #@6
    .line 4116
    :cond_0
    if-eqz p1, :cond_1

    #@8
    .line 4117
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v5

    #@e
    invoke-static {p1, v5}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 4121
    monitor-enter p0

    #@15
    .line 4122
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetDeviceOwner()V

    #@18
    .line 4125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    move-result-wide v2

    #@1c
    .line 4128
    .local v2, "ident":J
    :try_start_1
    const-string/jumbo v5, "backup"

    #@1f
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@22
    move-result-object v5

    #@23
    .line 4127
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@26
    move-result-object v1

    #@27
    .line 4129
    .local v1, "ibm":Landroid/app/backup/IBackupManager;
    const/4 v5, 0x0

    #@28
    const/4 v6, 0x0

    #@29
    invoke-interface {v1, v5, v6}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 4133
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 4136
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@31
    if-nez v5, :cond_2

    #@33
    .line 4138
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;

    #@36
    move-result-object v5

    #@37
    iput-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@39
    .line 4143
    :goto_0
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@3b
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    #@3e
    .line 4144
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V

    #@41
    .line 4145
    new-instance v4, Landroid/content/Intent;

    #@43
    const-string/jumbo v5, "android.app.action.DEVICE_OWNER_CHANGED"

    #@46
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@49
    .line 4147
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    move-result-wide v2

    #@4d
    .line 4149
    :try_start_3
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@4f
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@51
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@54
    .line 4151
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@57
    .line 4153
    const/4 v5, 0x1

    #@58
    monitor-exit p0

    #@59
    return v5

    #@5a
    .line 4118
    .end local v1    # "ibm":Landroid/app/backup/IBackupManager;
    .end local v2    # "ident":J
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5c
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v7, "Invalid package name "

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    .line 4119
    const-string/jumbo v7, " for device owner"

    #@6f
    .line 4118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v5

    #@7b
    .line 4130
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@7c
    .line 4131
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v5, Ljava/lang/IllegalStateException;

    #@7e
    const-string/jumbo v6, "Failed deactivating backup service."

    #@81
    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@84
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@85
    .line 4132
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@86
    .line 4133
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@89
    .line 4132
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@8a
    .line 4121
    .end local v2    # "ident":J
    :catchall_1
    move-exception v5

    #@8b
    monitor-exit p0

    #@8c
    throw v5

    #@8d
    .line 4141
    .restart local v1    # "ibm":Landroid/app/backup/IBackupManager;
    .restart local v2    # "ident":J
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@8f
    invoke-virtual {v5, p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V

    #@92
    goto :goto_0

    #@93
    .line 4150
    .restart local v4    # "intent":Landroid/content/Intent;
    :catchall_2
    move-exception v5

    #@94
    .line 4151
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@97
    .line 4150
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@0
    .prologue
    .line 1149
    move-object/from16 v0, p2

    #@2
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@4
    move/from16 v20, v0

    #@6
    const/16 v21, 0x0

    #@8
    move-object/from16 v0, p0

    #@a
    move-object/from16 v1, v21

    #@c
    move/from16 v2, v20

    #@e
    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    #@11
    move-result-wide v12

    #@12
    .line 1150
    .local v12, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v14

    #@16
    .line 1151
    .local v14, "now":J
    sub-long v16, v12, v14

    #@18
    .line 1153
    .local v16, "timeToExpire":J
    const-wide/16 v20, 0x0

    #@1a
    cmp-long v20, v12, v20

    #@1c
    if-nez v20, :cond_1

    #@1e
    .line 1155
    const-wide/16 v8, 0x0

    #@20
    .line 1169
    .local v8, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v18

    #@24
    .line 1171
    .local v18, "token":J
    :try_start_0
    const-string/jumbo v20, "alarm"

    #@27
    move-object/from16 v0, p1

    #@29
    move-object/from16 v1, v20

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v10

    #@2f
    check-cast v10, Landroid/app/AlarmManager;

    #@31
    .line 1173
    .local v10, "am":Landroid/app/AlarmManager;
    new-instance v20, Landroid/content/Intent;

    #@33
    const-string/jumbo v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    #@36
    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@39
    .line 1175
    new-instance v21, Landroid/os/UserHandle;

    #@3b
    move-object/from16 v0, p2

    #@3d
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@3f
    move/from16 v22, v0

    #@41
    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    #@44
    .line 1172
    const/16 v22, 0x15c3

    #@46
    .line 1174
    const/high16 v23, 0x48000000    # 131072.0f

    #@48
    .line 1172
    move-object/from16 v0, p1

    #@4a
    move/from16 v1, v22

    #@4c
    move-object/from16 v2, v20

    #@4e
    move/from16 v3, v23

    #@50
    move-object/from16 v4, v21

    #@52
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@55
    move-result-object v11

    #@56
    .line 1176
    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@59
    .line 1177
    const-wide/16 v20, 0x0

    #@5b
    cmp-long v20, v8, v20

    #@5d
    if-eqz v20, :cond_0

    #@5f
    .line 1178
    const/16 v20, 0x1

    #@61
    move/from16 v0, v20

    #@63
    invoke-virtual {v10, v0, v8, v9, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .line 1181
    :cond_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@69
    .line 1148
    return-void

    #@6a
    .line 1156
    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "token":J
    :cond_1
    const-wide/16 v20, 0x0

    #@6c
    cmp-long v20, v16, v20

    #@6e
    if-gtz v20, :cond_2

    #@70
    .line 1158
    const-wide/32 v20, 0x5265c00

    #@73
    add-long v8, v14, v20

    #@75
    .restart local v8    # "alarmTime":J
    goto :goto_0

    #@76
    .line 1162
    .end local v8    # "alarmTime":J
    :cond_2
    const-wide/32 v20, 0x5265c00

    #@79
    rem-long v6, v16, v20

    #@7b
    .line 1163
    .local v6, "alarmInterval":J
    const-wide/16 v20, 0x0

    #@7d
    cmp-long v20, v6, v20

    #@7f
    if-nez v20, :cond_3

    #@81
    .line 1164
    const-wide/32 v6, 0x5265c00

    #@84
    .line 1166
    :cond_3
    add-long v8, v14, v6

    #@86
    .restart local v8    # "alarmTime":J
    goto :goto_0

    #@87
    .line 1180
    .end local v6    # "alarmInterval":J
    .restart local v18    # "token":J
    :catchall_0
    move-exception v20

    #@88
    .line 1181
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8b
    .line 1180
    throw v20
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 3597
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v8, :cond_0

    #@5
    .line 3598
    return-object v11

    #@6
    .line 3600
    :cond_0
    monitor-enter p0

    #@7
    .line 3601
    :try_start_0
    const-string/jumbo v8, "ComponentName is null"

    #@a
    invoke-static {p1, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 3604
    const/4 v8, 0x0

    #@e
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@11
    move-result-object v5

    #@12
    .line 3606
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    #@13
    .line 3605
    invoke-virtual {p0, p1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@16
    move-result-object v0

    #@17
    .line 3610
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@19
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v2

    #@1d
    .line 3611
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v4

    #@21
    .local v4, "component$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_2

    #@27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Landroid/content/ComponentName;

    #@2d
    .line 3612
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@35
    .line 3613
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@37
    if-eqz v8, :cond_1

    #@39
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result v8

    #@3d
    if-nez v8, :cond_1

    #@3f
    monitor-exit p0

    #@40
    .line 3616
    return-object v3

    #@41
    .line 3621
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_3

    #@47
    .line 3622
    const-string/jumbo v8, "DevicePolicyManagerService"

    #@4a
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v10, "Only the owner is allowed to set the global proxy. User "

    #@52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    .line 3623
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@59
    move-result v10

    #@5a
    .line 3622
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    .line 3623
    const-string/jumbo v10, " is not permitted."

    #@61
    .line 3622
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    monitor-exit p0

    #@6d
    .line 3624
    return-object v11

    #@6e
    .line 3626
    :cond_3
    if-nez p2, :cond_4

    #@70
    .line 3627
    const/4 v8, 0x0

    #@71
    :try_start_2
    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@73
    .line 3628
    const/4 v8, 0x0

    #@74
    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@76
    .line 3629
    const/4 v8, 0x0

    #@77
    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    #@79
    .line 3639
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    move-result-wide v6

    #@7d
    .line 3641
    .local v6, "origId":J
    :try_start_3
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@80
    .line 3643
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@83
    monitor-exit p0

    #@84
    .line 3645
    return-object v11

    #@85
    .line 3632
    .end local v6    # "origId":J
    :cond_4
    const/4 v8, 0x1

    #@86
    :try_start_5
    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    #@88
    .line 3633
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    #@8a
    .line 3634
    iput-object p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8c
    goto :goto_0

    #@8d
    .line 3600
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v4    # "component$iterator":Ljava/util/Iterator;
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v8

    #@8e
    monitor-exit p0

    #@8f
    throw v8

    #@90
    .line 3642
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v4    # "component$iterator":Ljava/util/Iterator;
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v6    # "origId":J
    :catchall_1
    move-exception v8

    #@91
    .line 3643
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    .line 3642
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5995
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 5996
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "ComponentName is null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5998
    monitor-enter p0

    #@d
    .line 5999
    const/4 v1, -0x2

    #@e
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@11
    .line 6003
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    #@13
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 6004
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "Global setting no longer supported: "

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 6005
    return-void

    #@35
    .line 6008
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    #@37
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-nez v1, :cond_1

    #@3d
    .line 6009
    new-instance v1, Ljava/lang/SecurityException;

    #@3f
    .line 6010
    const-string/jumbo v6, "Permission denial: device owners cannot update %1$s"

    #@42
    .line 6009
    const/4 v7, 0x1

    #@43
    new-array v7, v7, [Ljava/lang/Object;

    #@45
    .line 6010
    const/4 v8, 0x0

    #@46
    aput-object p2, v7, v8

    #@48
    .line 6009
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-direct {v1, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 5998
    :catchall_0
    move-exception v1

    #@51
    monitor-exit p0

    #@52
    throw v1

    #@53
    .line 6013
    :cond_1
    :try_start_2
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@56
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_2

    #@5c
    .line 6015
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5f
    move-result v1

    #@60
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    move-result-wide v4

    #@64
    .line 6016
    .local v4, "timeMs":J
    const-wide/16 v6, 0x0

    #@66
    cmp-long v1, v4, v6

    #@68
    if-lez v1, :cond_2

    #@6a
    const-wide/32 v6, 0x7fffffff

    #@6d
    cmp-long v1, v4, v6

    #@6f
    if-gez v1, :cond_2

    #@71
    monitor-exit p0

    #@72
    .line 6017
    return-void

    #@73
    .line 6021
    .end local v4    # "timeMs":J
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    move-result-wide v2

    #@77
    .line 6023
    .local v2, "id":J
    :try_start_4
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7a
    .line 6025
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7d
    monitor-exit p0

    #@7e
    .line 5994
    return-void

    #@7f
    .line 6024
    :catchall_1
    move-exception v1

    #@80
    .line 6025
    :try_start_6
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@83
    .line 6024
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 6108
    const-string/jumbo v4, "ComponentName is null"

    #@3
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 6109
    monitor-enter p0

    #@7
    .line 6110
    const/4 v4, -0x2

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 6112
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v2

    #@10
    .line 6113
    .local v2, "userId":I
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    #@12
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@14
    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@17
    .line 6115
    .local v3, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 6118
    .local v0, "ident":J
    if-eqz p2, :cond_0

    #@1d
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 6119
    const/4 v4, 0x0

    #@24
    .line 6123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 6119
    return v4

    #@28
    .line 6109
    .end local v0    # "ident":J
    .end local v2    # "userId":I
    .end local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_0
    move-exception v4

    #@29
    monitor-exit p0

    #@2a
    throw v4

    #@2b
    .line 6121
    .restart local v0    # "ident":J
    .restart local v2    # "userId":I
    .restart local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :try_start_2
    invoke-virtual {v3, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 6123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 6125
    const/4 v4, 0x1

    #@32
    return v4

    #@33
    .line 6122
    :catchall_1
    move-exception v4

    #@34
    .line 6123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 6122
    throw v4
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4035
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 4036
    return-void

    #@5
    .line 4038
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 4039
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 4040
    .local v1, "userHandle":I
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 4041
    and-int/lit8 p2, p2, 0x38

    #@17
    .line 4043
    :cond_1
    monitor-enter p0

    #@18
    .line 4045
    const/16 v2, 0x9

    #@1a
    .line 4044
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1d
    move-result-object v0

    #@1e
    .line 4046
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@20
    if-eq v2, p2, :cond_2

    #@22
    .line 4047
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    #@24
    .line 4048
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@27
    .line 4050
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 4034
    return-void

    #@30
    .line 4043
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit p0

    #@32
    throw v2
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 5906
    const-string/jumbo v1, "ComponentName is null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5907
    monitor-enter p0

    #@7
    .line 5908
    const/4 v1, -0x2

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 5910
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    #@12
    move-result v0

    #@13
    .line 5911
    .local v0, "userHandle":I
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1c
    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 5905
    return-void

    #@21
    .line 5907
    .end local v0    # "userHandle":I
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    #@0
    .prologue
    .line 6061
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 6062
    monitor-enter p0

    #@7
    .line 6063
    const/4 v5, -0x1

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 6064
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v4

    #@f
    .line 6065
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-wide v2

    #@13
    .line 6068
    .local v2, "identity":J
    :try_start_1
    const-string/jumbo v5, "audio"

    #@16
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@19
    move-result-object v5

    #@1a
    .line 6067
    invoke-static {v5}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@1d
    move-result-object v0

    #@1e
    .line 6069
    .local v0, "iAudioService":Landroid/media/IAudioService;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    const/4 v6, 0x0

    #@25
    invoke-interface {v0, p2, v6, v5, v4}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    .line 6073
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .end local v0    # "iAudioService":Landroid/media/IAudioService;
    :goto_0
    monitor-exit p0

    #@2c
    .line 6060
    return-void

    #@2d
    .line 6070
    :catch_0
    move-exception v1

    #@2e
    .line 6071
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@31
    const-string/jumbo v6, "Failed to setMasterMute"

    #@34
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@37
    .line 6073
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 6062
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    #@3c
    monitor-exit p0

    #@3d
    throw v5

    #@3e
    .line 6072
    .restart local v2    # "identity":J
    .restart local v4    # "userId":I
    :catchall_1
    move-exception v5

    #@3f
    .line 6073
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 6072
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    #@0
    .prologue
    .line 2760
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2761
    return-void

    #@5
    .line 2763
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2764
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2765
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2769
    const/4 v2, 0x4

    #@11
    .line 2768
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    .line 2771
    const/4 v2, 0x1

    #@15
    .line 2770
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@18
    move-result-object v0

    #@19
    .line 2772
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@1b
    if-eq v2, p2, :cond_1

    #@1d
    .line 2773
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    #@1f
    .line 2774
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_1
    monitor-exit p0

    #@23
    .line 2759
    return-void

    #@24
    .line 2765
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit p0

    #@26
    throw v2
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 2998
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2999
    return-void

    #@5
    .line 3001
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 3002
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 3003
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 3005
    const/4 v2, 0x3

    #@11
    .line 3004
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 3006
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@17
    cmp-long v2, v2, p2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 3007
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    #@1d
    .line 3008
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@20
    .line 3009
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 2997
    return-void

    #@29
    .line 3003
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 2249
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2250
    return-void

    #@7
    .line 2252
    :cond_0
    const-string/jumbo v4, "ComponentName is null"

    #@a
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2253
    const-string/jumbo v4, "Timeout must be >= 0 ms"

    #@10
    invoke-static {p2, p3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    #@13
    .line 2254
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v1

    #@17
    .line 2255
    .local v1, "userHandle":I
    monitor-enter p0

    #@18
    .line 2257
    const/4 v4, 0x6

    #@19
    .line 2256
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1c
    move-result-object v0

    #@1d
    .line 2259
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v4, p2, v6

    #@1f
    if-lez v4, :cond_2

    #@21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@24
    move-result-wide v4

    #@25
    add-long v2, p2, v4

    #@27
    .line 2260
    .local v2, "expiration":J
    :goto_0
    iput-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    #@29
    .line 2261
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    #@2b
    .line 2262
    cmp-long v4, p2, v6

    #@2d
    if-lez v4, :cond_1

    #@2f
    .line 2263
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@32
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v6, "setPasswordExpiration(): password will expire on "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 2264
    const/4 v6, 0x2

    #@3f
    const/4 v7, 0x2

    #@40
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    #@43
    move-result-object v6

    #@44
    .line 2265
    new-instance v7, Ljava/util/Date;

    #@46
    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@49
    .line 2264
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 2263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 2267
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@5b
    .line 2269
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@5d
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    monitor-exit p0

    #@65
    .line 2248
    return-void

    #@66
    .line 2259
    .end local v2    # "expiration":J
    :cond_2
    const-wide/16 v2, 0x0

    #@68
    .restart local v2    # "expiration":J
    goto :goto_0

    #@69
    .line 2255
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "expiration":J
    :catchall_0
    move-exception v4

    #@6a
    monitor-exit p0

    #@6b
    throw v4
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2202
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2203
    return-void

    #@5
    .line 2205
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2206
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2207
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2209
    const/4 v2, 0x0

    #@11
    .line 2208
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2210
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2211
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    #@1b
    .line 2212
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2201
    return-void

    #@20
    .line 2207
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2155
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2156
    return-void

    #@5
    .line 2158
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2159
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2160
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2162
    const/4 v2, 0x0

    #@11
    .line 2161
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2163
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2164
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    #@1b
    .line 2165
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2154
    return-void

    #@20
    .line 2160
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2508
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2509
    return-void

    #@5
    .line 2511
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2512
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2513
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2515
    const/4 v2, 0x0

    #@11
    .line 2514
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2516
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2517
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    #@1b
    .line 2518
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2507
    return-void

    #@20
    .line 2513
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2464
    const-string/jumbo v2, "ComponentName is null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2465
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v1

    #@a
    .line 2466
    .local v1, "userHandle":I
    monitor-enter p0

    #@b
    .line 2468
    const/4 v2, 0x0

    #@c
    .line 2467
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    move-result-object v0

    #@10
    .line 2469
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@12
    if-eq v2, p2, :cond_0

    #@14
    .line 2470
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    #@16
    .line 2471
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 2463
    return-void

    #@1b
    .line 2466
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2658
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2659
    return-void

    #@5
    .line 2661
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2662
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2663
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2665
    const/4 v2, 0x0

    #@11
    .line 2664
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2666
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2667
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    #@1b
    .line 2668
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2657
    return-void

    #@20
    .line 2663
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2558
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2559
    return-void

    #@5
    .line 2561
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2562
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2563
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2565
    const/4 v2, 0x0

    #@11
    .line 2564
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2566
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2567
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    #@1b
    .line 2568
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2557
    return-void

    #@20
    .line 2563
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2608
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2609
    return-void

    #@5
    .line 2611
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2612
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2613
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2615
    const/4 v2, 0x0

    #@11
    .line 2614
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2616
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2617
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    #@1b
    .line 2618
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2607
    return-void

    #@20
    .line 2613
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 2417
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2418
    return-void

    #@5
    .line 2420
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2421
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2422
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 2424
    const/4 v2, 0x0

    #@11
    .line 2423
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 2425
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 2426
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    #@1b
    .line 2427
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 2416
    return-void

    #@20
    .line 2422
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    #@0
    .prologue
    .line 2106
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2107
    return-void

    #@5
    .line 2109
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 2110
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 2111
    .local v1, "userHandle":I
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    #@12
    .line 2113
    monitor-enter p0

    #@13
    .line 2115
    const/4 v2, 0x0

    #@14
    .line 2114
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@17
    move-result-object v0

    #@18
    .line 2116
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@1a
    if-eq v2, p2, :cond_1

    #@1c
    .line 2117
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    #@1e
    .line 2118
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_1
    monitor-exit p0

    #@22
    .line 2105
    return-void

    #@23
    .line 2113
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 6431
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v5

    #@4
    .line 6432
    .local v5, "user":Landroid/os/UserHandle;
    monitor-enter p0

    #@5
    .line 6433
    const/4 v1, -0x1

    #@6
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@9
    .line 6434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    move-result-wide v8

    #@d
    .line 6436
    .local v8, "ident":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@10
    move-result-object v1

    #@11
    .line 6437
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    #@14
    move-result v2

    #@15
    const/4 v3, 0x0

    #@16
    .line 6436
    invoke-interface {v1, p2, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result-object v6

    #@1a
    .line 6438
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_0

    #@1c
    const/4 v10, 0x0

    #@1d
    .line 6439
    .local v10, "targetSdkVersion":I
    :goto_0
    const/16 v1, 0x17

    #@1f
    if-ge v10, v1, :cond_1

    #@21
    .line 6468
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .line 6440
    const/4 v1, 0x0

    #@25
    monitor-exit p0

    #@26
    return v1

    #@27
    .line 6438
    .end local v10    # "targetSdkVersion":I
    :cond_0
    :try_start_3
    iget v10, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@29
    .restart local v10    # "targetSdkVersion":I
    goto :goto_0

    #@2a
    .line 6442
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2f
    move-result-object v0

    #@30
    .line 6443
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    packed-switch p4, :pswitch_data_0

    #@33
    .line 6468
    :goto_1
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@36
    .line 6464
    const/4 v1, 0x1

    #@37
    monitor-exit p0

    #@38
    return v1

    #@39
    .line 6445
    :pswitch_0
    :try_start_5
    invoke-virtual {v0, p2, p3, v5}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    #@3c
    .line 6447
    const/4 v3, 0x4

    #@3d
    .line 6448
    const/4 v4, 0x4

    #@3e
    move-object v1, p3

    #@3f
    move-object v2, p2

    #@40
    .line 6446
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 6465
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "targetSdkVersion":I
    :catch_0
    move-exception v7

    #@45
    .line 6468
    .local v7, "se":Ljava/lang/SecurityException;
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@48
    .line 6466
    const/4 v1, 0x0

    #@49
    monitor-exit p0

    #@4a
    return v1

    #@4b
    .line 6452
    .end local v7    # "se":Ljava/lang/SecurityException;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "targetSdkVersion":I
    :pswitch_1
    :try_start_7
    invoke-virtual {v0, p2, p3, v5}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    #@4e
    .line 6455
    const/4 v3, 0x4

    #@4f
    .line 6456
    const/4 v4, 0x4

    #@50
    move-object v1, p3

    #@51
    move-object v2, p2

    #@52
    .line 6454
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@55
    goto :goto_1

    #@56
    .line 6467
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "targetSdkVersion":I
    :catchall_0
    move-exception v1

    #@57
    .line 6468
    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 6467
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@5b
    .line 6432
    .end local v8    # "ident":J
    :catchall_1
    move-exception v1

    #@5c
    monitor-exit p0

    #@5d
    throw v1

    #@5e
    .line 6461
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "ident":J
    .restart local v10    # "targetSdkVersion":I
    :pswitch_2
    const/4 v3, 0x4

    #@5f
    const/4 v4, 0x0

    #@60
    move-object v1, p3

    #@61
    move-object v2, p2

    #@62
    .line 6460
    :try_start_9
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@65
    goto :goto_1

    #@66
    .line 6443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 6408
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 6409
    .local v0, "userId":I
    monitor-enter p0

    #@5
    .line 6410
    const/4 v2, -0x1

    #@6
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@9
    .line 6411
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@c
    move-result-object v1

    #@d
    .line 6412
    .local v1, "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    #@f
    if-eq v2, p2, :cond_0

    #@11
    .line 6413
    iput p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    #@13
    .line 6414
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit p0

    #@17
    .line 6407
    return-void

    #@18
    .line 6409
    .end local v1    # "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit p0

    #@1a
    throw v2
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 5053
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v10, :cond_0

    #@5
    .line 5054
    return v12

    #@6
    .line 5056
    :cond_0
    const-string/jumbo v10, "ComponentName is null"

    #@9
    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5058
    if-eqz p2, :cond_3

    #@e
    .line 5059
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@11
    move-result v9

    #@12
    .line 5060
    .local v9, "userId":I
    const/4 v3, 0x0

    #@13
    .line 5061
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v4

    #@17
    .line 5063
    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@19
    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1c
    move-result-object v8

    #@1d
    .line 5064
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@20
    move-result v10

    #@21
    if-eqz v10, :cond_1

    #@23
    .line 5065
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@25
    .line 5067
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    #@28
    move-result-object v0

    #@29
    .line 5069
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v10, -0x1

    #@2a
    .line 5068
    invoke-virtual {v0, v10}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v3

    #@2e
    .line 5071
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@31
    .line 5074
    if-eqz v3, :cond_3

    #@33
    .line 5075
    new-instance v2, Ljava/util/ArrayList;

    #@35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 5076
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v7

    #@3c
    .local v7, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_2

    #@42
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v6

    #@46
    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@48
    .line 5077
    .local v6, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@4b
    move-result-object v10

    #@4c
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4e
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@50
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_0

    #@54
    .line 5070
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_0
    move-exception v10

    #@55
    .line 5071
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@58
    .line 5070
    throw v10

    #@59
    .line 5079
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v7    # "service$iterator":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    #@5c
    move-result v10

    #@5d
    if-nez v10, :cond_3

    #@5f
    .line 5080
    const-string/jumbo v10, "DevicePolicyManagerService"

    #@62
    const-string/jumbo v11, "Cannot set permitted accessibility services, because it contains already enabled accesibility services."

    #@65
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 5082
    return v12

    #@69
    .line 5087
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v4    # "id":J
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_3
    monitor-enter p0

    #@6a
    .line 5089
    const/4 v10, -0x1

    #@6b
    .line 5088
    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@6e
    move-result-object v1

    #@6f
    .line 5090
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    #@71
    .line 5091
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@74
    move-result v10

    #@75
    invoke-direct {p0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@78
    monitor-exit p0

    #@79
    .line 5093
    const/4 v10, 0x1

    #@7a
    return v10

    #@7b
    .line 5087
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1
    move-exception v10

    #@7c
    monitor-exit p0

    #@7d
    throw v10
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 5203
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v6, :cond_0

    #@5
    .line 5204
    return v8

    #@6
    .line 5206
    :cond_0
    const-string/jumbo v6, "ComponentName is null"

    #@9
    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 5210
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkCallerIsCurrentUserOrProfile()Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_1

    #@12
    .line 5211
    return v8

    #@13
    .line 5214
    :cond_1
    if-eqz p2, :cond_3

    #@15
    .line 5218
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@17
    .line 5219
    const-string/jumbo v7, "input_method"

    #@1a
    .line 5218
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    #@20
    .line 5220
    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    #@23
    move-result-object v1

    #@24
    .line 5222
    .local v1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_3

    #@26
    .line 5223
    new-instance v2, Ljava/util/ArrayList;

    #@28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 5224
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v4

    #@2f
    .local v4, "ime$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    #@3b
    .line 5225
    .local v3, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    goto :goto_0

    #@43
    .line 5227
    .end local v3    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_3

    #@49
    .line 5228
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@4c
    const-string/jumbo v7, "Cannot set permitted input methods, because it contains already enabled input method."

    #@4f
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 5230
    return v8

    #@53
    .line 5235
    .end local v1    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ime$iterator":Ljava/util/Iterator;
    .end local v5    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    monitor-enter p0

    #@54
    .line 5237
    const/4 v6, -0x1

    #@55
    .line 5236
    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@58
    move-result-object v0

    #@59
    .line 5238
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    #@5b
    .line 5239
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5e
    move-result v6

    #@5f
    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    monitor-exit p0

    #@63
    .line 5241
    const/4 v6, 0x1

    #@64
    return v6

    #@65
    .line 5235
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    #@66
    monitor-exit p0

    #@67
    throw v6
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4513
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v5, :cond_0

    #@4
    .line 4514
    return-void

    #@5
    .line 4516
    :cond_0
    const-string/jumbo v5, "ComponentName is null"

    #@8
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 4517
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v3

    #@f
    .line 4518
    .local v3, "userHandle":I
    monitor-enter p0

    #@10
    .line 4520
    const/4 v5, -0x1

    #@11
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    .line 4521
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@17
    move-result v4

    #@18
    .line 4523
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    move-result-wide v0

    #@1c
    .line 4525
    .local v0, "id":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@1e
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->setUserEnabled(I)V

    #@21
    .line 4526
    new-instance v2, Landroid/content/Intent;

    #@23
    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@26
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@29
    .line 4527
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.USER"

    #@2c
    new-instance v6, Landroid/os/UserHandle;

    #@2e
    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@31
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@34
    .line 4528
    const/high16 v5, 0x50000000

    #@36
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@39
    .line 4531
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@3b
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@3d
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 4533
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    monitor-exit p0

    #@44
    .line 4512
    return-void

    #@45
    .line 4532
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    #@46
    .line 4533
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@49
    .line 4532
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4a
    .line 4518
    .end local v0    # "id":J
    .end local v4    # "userId":I
    :catchall_1
    move-exception v5

    #@4b
    monitor-exit p0

    #@4c
    throw v5
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4540
    const-string/jumbo v3, "ComponentName is null"

    #@3
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4541
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v2

    #@a
    .line 4543
    .local v2, "userId":I
    const/4 v3, -0x1

    #@b
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@e
    .line 4545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 4547
    .local v0, "id":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@14
    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 4549
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@1a
    .line 4539
    return-void

    #@1b
    .line 4548
    :catchall_0
    move-exception v3

    #@1c
    .line 4549
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@1f
    .line 4548
    throw v3
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 4367
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4368
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 4370
    :cond_0
    if-eqz p1, :cond_1

    #@8
    .line 4371
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalledForUser(Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 4375
    monitor-enter p0

    #@13
    .line 4376
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetProfileOwner(I)V

    #@16
    .line 4377
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 4379
    invoke-static {p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@20
    .line 4385
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@22
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 4386
    const/4 v0, 0x1

    #@26
    monitor-exit p0

    #@27
    return v0

    #@28
    .line 4372
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Component "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 4373
    const-string/jumbo v2, " not installed for userId:"

    #@3d
    .line 4372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 4383
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@4f
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 4375
    :catchall_0
    move-exception v0

    #@54
    monitor-exit p0

    #@55
    throw v0
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 3675
    monitor-enter p0

    #@1
    .line 3676
    const/4 v1, -0x2

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 3678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v2

    #@a
    .line 3681
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v4, "connectivity"

    #@f
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 3680
    check-cast v0, Landroid/net/ConnectivityManager;

    #@15
    .line 3682
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    .line 3684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 3674
    return-void

    #@1c
    .line 3675
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1

    #@1f
    .line 3683
    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    #@20
    .line 3684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 3683
    throw v1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "permissionProvider"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4934
    const-string/jumbo v2, "ComponentName is null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 4935
    monitor-enter p0

    #@7
    .line 4936
    const/4 v2, -0x1

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 4938
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 4939
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@12
    move-result-object v0

    #@13
    .line 4940
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    #@15
    .line 4941
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 4933
    return-void

    #@1a
    .line 4935
    .end local v0    # "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "userHandle":I
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit p0

    #@1c
    throw v2
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 3875
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 3876
    return-void

    #@5
    .line 3878
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 3879
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v1

    #@f
    .line 3880
    .local v1, "userHandle":I
    monitor-enter p0

    #@10
    .line 3882
    const/4 v2, -0x1

    #@11
    .line 3881
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@14
    move-result-object v0

    #@15
    .line 3883
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@17
    if-eq v2, p2, :cond_1

    #@19
    .line 3884
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    #@1b
    .line 3885
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@1e
    .line 3886
    invoke-direct {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_1
    monitor-exit p0

    #@22
    .line 3874
    return-void

    #@23
    .line 3880
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6032
    const-string/jumbo v3, "ComponentName is null"

    #@3
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 6033
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v1

    #@a
    .line 6034
    .local v1, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v2

    #@10
    .line 6036
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    #@11
    .line 6038
    const/4 v3, -0x1

    #@12
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@15
    move-result-object v0

    #@16
    .line 6040
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@18
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 6041
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    #@24
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 6042
    new-instance v3, Ljava/lang/SecurityException;

    #@2c
    .line 6043
    const-string/jumbo v6, "Permission denial: Device owners cannot update %1$s"

    #@2f
    .line 6042
    const/4 v7, 0x1

    #@30
    new-array v7, v7, [Ljava/lang/Object;

    #@32
    .line 6043
    const/4 v8, 0x0

    #@33
    aput-object p2, v7, v8

    #@35
    .line 6042
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 6036
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3

    #@40
    .line 6045
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    #@42
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_1

    #@48
    .line 6046
    new-instance v3, Ljava/lang/SecurityException;

    #@4a
    .line 6047
    const-string/jumbo v6, "Permission denial: Profile owners cannot update %1$s"

    #@4d
    .line 6046
    const/4 v7, 0x1

    #@4e
    new-array v7, v7, [Ljava/lang/Object;

    #@50
    .line 6047
    const/4 v8, 0x0

    #@51
    aput-object p2, v7, v8

    #@53
    .line 6046
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3

    #@5b
    .line 6050
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    move-result-wide v4

    #@5f
    .line 6052
    .local v4, "id":J
    :try_start_2
    invoke-static {v2, p2, p3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@62
    .line 6054
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    monitor-exit p0

    #@66
    .line 6031
    return-void

    #@67
    .line 6053
    :catchall_1
    move-exception v3

    #@68
    .line 6054
    :try_start_4
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@6b
    .line 6053
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    #@0
    .prologue
    .line 6130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v1

    #@4
    .line 6131
    .local v1, "userId":I
    monitor-enter p0

    #@5
    .line 6132
    const/4 v2, -0x2

    #@6
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@9
    .line 6133
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@c
    move-result-object v0

    #@d
    .line 6134
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@f
    if-eq v2, p2, :cond_1

    #@11
    .line 6135
    invoke-direct {p0, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setStatusBarDisabledInternal(ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 6136
    const/4 v2, 0x0

    #@18
    monitor-exit p0

    #@19
    return v2

    #@1a
    .line 6138
    :cond_0
    :try_start_1
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    #@1c
    .line 6139
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_1
    monitor-exit p0

    #@20
    .line 6142
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 6131
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3737
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@3
    if-nez v6, :cond_0

    #@5
    .line 3738
    return v9

    #@6
    .line 3740
    :cond_0
    const-string/jumbo v6, "ComponentName is null"

    #@9
    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 3741
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v5

    #@10
    .line 3742
    .local v5, "userHandle":I
    monitor-enter p0

    #@11
    .line 3745
    if-nez v5, :cond_1

    #@13
    .line 3746
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_2

    #@19
    .line 3747
    :cond_1
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@1c
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v8, "Only owner is allowed to set storage encryption. User "

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    .line 3748
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@2b
    move-result v8

    #@2c
    .line 3747
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 3748
    const-string/jumbo v8, " is not permitted."

    #@33
    .line 3747
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 3749
    return v9

    #@40
    .line 3753
    :cond_2
    const/4 v6, 0x7

    #@41
    .line 3752
    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@44
    move-result-object v1

    #@45
    .line 3756
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isEncryptionSupported()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    move-result v6

    #@49
    if-nez v6, :cond_3

    #@4b
    monitor-exit p0

    #@4c
    .line 3757
    return v9

    #@4d
    .line 3761
    :cond_3
    :try_start_2
    iget-boolean v6, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@4f
    if-eq v6, p2, :cond_4

    #@51
    .line 3762
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@53
    .line 3763
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@56
    .line 3766
    :cond_4
    const/4 v6, 0x0

    #@57
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@5a
    move-result-object v4

    #@5b
    .line 3768
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    #@5c
    .line 3769
    .local v3, "newRequested":Z
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v0

    #@62
    .line 3770
    .local v0, "N":I
    const/4 v2, 0x0

    #@63
    .end local v3    # "newRequested":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    #@65
    .line 3771
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v6

    #@6b
    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@6d
    iget-boolean v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    #@6f
    or-int/2addr v3, v6

    #@70
    .line 3770
    .local v3, "newRequested":Z
    add-int/lit8 v2, v2, 0x1

    #@72
    goto :goto_0

    #@73
    .line 3775
    .end local v3    # "newRequested":Z
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setEncryptionRequested(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    .line 3778
    if-eqz v3, :cond_6

    #@78
    .line 3779
    const/4 v6, 0x3

    #@79
    :goto_1
    monitor-exit p0

    #@7a
    .line 3778
    return v6

    #@7b
    .line 3780
    :cond_6
    const/4 v6, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 3742
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    #@7e
    monitor-exit p0

    #@7f
    throw v6
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    #@0
    .prologue
    .line 6317
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Landroid/app/admin/SystemUpdatePolicy;->isValid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 6320
    :cond_0
    monitor-enter p0

    #@9
    .line 6321
    const/4 v0, -0x2

    #@a
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@d
    .line 6322
    if-nez p2, :cond_2

    #@f
    .line 6323
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@11
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->clearSystemUpdatePolicy()V

    #@14
    .line 6327
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@16
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 6329
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@1c
    .line 6330
    new-instance v1, Landroid/content/Intent;

    #@1e
    const-string/jumbo v2, "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

    #@21
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24
    .line 6331
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@26
    .line 6329
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@29
    .line 6316
    return-void

    #@2a
    .line 6318
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v1, "Invalid system update policy."

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 6325
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    #@35
    invoke-virtual {v0, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 6320
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit p0

    #@3b
    throw v0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 4858
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 4859
    return-void

    #@5
    .line 4861
    :cond_0
    const-string/jumbo v2, "admin is null"

    #@8
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 4862
    const-string/jumbo v2, "agent is null"

    #@e
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 4863
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v1

    #@15
    .line 4864
    .local v1, "userHandle":I
    const-string/jumbo v2, "set trust agent configuration"

    #@18
    invoke-direct {p0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    #@1b
    .line 4865
    monitor-enter p0

    #@1c
    .line 4867
    const/16 v2, 0x9

    #@1e
    .line 4866
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@21
    move-result-object v0

    #@22
    .line 4868
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    #@24
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    #@2a
    invoke-direct {v4, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    #@2d
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 4869
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    #@33
    .line 4870
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit p0

    #@3b
    .line 4857
    return-void

    #@3c
    .line 4865
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit p0

    #@3e
    throw v2
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    #@0
    .prologue
    .line 5721
    const-string/jumbo v5, "ComponentName is null"

    #@3
    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5722
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v4

    #@a
    .line 5723
    .local v4, "userId":I
    monitor-enter p0

    #@b
    .line 5724
    const/4 v5, -0x1

    #@c
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@f
    .line 5726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-wide v0

    #@13
    .line 5728
    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@16
    move-result-object v2

    #@17
    .line 5729
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    .line 5734
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    monitor-exit p0

    #@1e
    .line 5720
    return-void

    #@1f
    .line 5730
    :catch_0
    move-exception v3

    #@20
    .line 5732
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@23
    const-string/jumbo v6, "Failed to setBlockUninstallForUser"

    #@26
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 5734
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 5723
    .end local v0    # "id":J
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@2e
    monitor-exit p0

    #@2f
    throw v5

    #@30
    .line 5733
    .restart local v0    # "id":J
    :catchall_1
    move-exception v5

    #@31
    .line 5734
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@34
    .line 5733
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUserEnabled(Landroid/content/ComponentName;)Z
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 4468
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@4
    if-nez v6, :cond_0

    #@6
    .line 4469
    return v10

    #@7
    .line 4471
    :cond_0
    monitor-enter p0

    #@8
    .line 4472
    if-nez p1, :cond_1

    #@a
    .line 4473
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v7, "ComponentName is null"

    #@f
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 4471
    :catchall_0
    move-exception v6

    #@14
    monitor-exit p0

    #@15
    throw v6

    #@16
    .line 4475
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@19
    move-result v5

    #@1a
    .line 4478
    .local v5, "userId":I
    const/4 v6, -0x1

    #@1b
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@1e
    move-result-object v0

    #@1f
    .line 4479
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@21
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    #@28
    move-result v6

    #@29
    if-nez v6, :cond_2

    #@2b
    .line 4480
    new-instance v6, Ljava/lang/SecurityException;

    #@2d
    .line 4481
    const-string/jumbo v7, "This method can only be called by device initializers"

    #@30
    .line 4480
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v6

    #@34
    .line 4484
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-wide v2

    #@38
    .line 4486
    .local v2, "id":J
    :try_start_2
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@3a
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_3

    #@44
    .line 4487
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@47
    move-result-object v4

    #@48
    .line 4489
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x2

    #@49
    .line 4490
    const/4 v7, 0x1

    #@4a
    .line 4488
    invoke-interface {v4, p1, v6, v7, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    #@4d
    .line 4492
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@50
    .line 4495
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_3
    if-nez v5, :cond_4

    #@52
    .line 4496
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@57
    move-result-object v6

    #@58
    .line 4497
    const-string/jumbo v7, "device_provisioned"

    #@5b
    const/4 v8, 0x1

    #@5c
    .line 4496
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@5f
    .line 4499
    :cond_4
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@61
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@64
    move-result-object v6

    #@65
    .line 4500
    const-string/jumbo v7, "user_setup_complete"

    #@68
    const/4 v8, 0x1

    #@69
    .line 4499
    invoke-static {v6, v7, v8, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6c
    .line 4505
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6f
    monitor-exit p0

    #@70
    .line 4507
    return v9

    #@71
    .line 4501
    :catch_0
    move-exception v1

    #@72
    .line 4502
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@75
    const-string/jumbo v7, "Can\'t talk to package manager"

    #@78
    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7b
    .line 4505
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7e
    monitor-exit p0

    #@7f
    .line 4503
    return v10

    #@80
    .line 4504
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    #@81
    .line 4505
    :try_start_6
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@84
    .line 4504
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 6092
    monitor-enter p0

    #@1
    .line 6093
    :try_start_0
    const-string/jumbo v3, "ComponentName is null"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 6094
    const/4 v3, -0x1

    #@8
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 6096
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v2

    #@f
    .line 6097
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    move-result-wide v0

    #@13
    .line 6099
    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@15
    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 6101
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    monitor-exit p0

    #@1c
    .line 6091
    return-void

    #@1d
    .line 6100
    :catchall_0
    move-exception v3

    #@1e
    .line 6101
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@21
    .line 6100
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    .line 6092
    .end local v0    # "id":J
    .end local v2    # "userId":I
    :catchall_1
    move-exception v3

    #@23
    monitor-exit p0

    #@24
    throw v3
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    #@0
    .prologue
    .line 5432
    const-string/jumbo v18, "ComponentName is null"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v18

    #@7
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 5433
    new-instance v14, Landroid/os/UserHandle;

    #@c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v18

    #@10
    move/from16 v0, v18

    #@12
    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@15
    .line 5434
    .local v14, "user":Landroid/os/UserHandle;
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    #@18
    move-result v15

    #@19
    .line 5435
    .local v15, "userHandle":I
    monitor-enter p0

    #@1a
    .line 5437
    const/16 v18, -0x1

    #@1c
    :try_start_0
    move-object/from16 v0, p0

    #@1e
    move-object/from16 v1, p1

    #@20
    move/from16 v2, v18

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@25
    move-result-object v4

    #@26
    .line 5438
    .local v4, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@28
    move-object/from16 v18, v0

    #@2a
    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@2d
    move-result-object v18

    #@2e
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, v18

    #@32
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@35
    move-result v7

    #@36
    .line 5439
    .local v7, "isDeviceOwner":Z
    if-nez v7, :cond_0

    #@38
    if-eqz v15, :cond_0

    #@3a
    .line 5440
    sget-object v18, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    #@3c
    move-object/from16 v0, v18

    #@3e
    move-object/from16 v1, p2

    #@40
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@43
    move-result v18

    #@44
    .line 5439
    if-eqz v18, :cond_0

    #@46
    .line 5441
    new-instance v18, Ljava/lang/SecurityException;

    #@48
    new-instance v19, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v20, "Profile owners cannot set user restriction "

    #@50
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v19

    #@54
    move-object/from16 v0, v19

    #@56
    move-object/from16 v1, p2

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v19

    #@5c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v19

    #@60
    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@63
    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    .line 5435
    .end local v4    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "isDeviceOwner":Z
    :catchall_0
    move-exception v18

    #@65
    monitor-exit p0

    #@66
    throw v18

    #@67
    .line 5443
    .restart local v4    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "isDeviceOwner":Z
    :cond_0
    :try_start_1
    sget-object v18, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    #@69
    move-object/from16 v0, v18

    #@6b
    move-object/from16 v1, p2

    #@6d
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@70
    move-result v18

    #@71
    if-eqz v18, :cond_1

    #@73
    .line 5444
    new-instance v18, Ljava/lang/SecurityException;

    #@75
    new-instance v19, Ljava/lang/StringBuilder;

    #@77
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v20, "User restriction "

    #@7d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v19

    #@81
    move-object/from16 v0, v19

    #@83
    move-object/from16 v1, p2

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v19

    #@89
    const-string/jumbo v20, " cannot be changed"

    #@8c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v19

    #@90
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v19

    #@94
    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@97
    throw v18

    #@98
    .line 5446
    :cond_1
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@9c
    move-object/from16 v18, v0

    #@9e
    move-object/from16 v0, v18

    #@a0
    move-object/from16 v1, p2

    #@a2
    invoke-virtual {v0, v1, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@a5
    move-result v5

    #@a6
    .line 5448
    .local v5, "alreadyRestricted":Z
    const/4 v6, 0x0

    #@a7
    .line 5449
    .local v6, "iAudioService":Landroid/media/IAudioService;
    const-string/jumbo v18, "no_unmute_microphone"

    #@aa
    move-object/from16 v0, v18

    #@ac
    move-object/from16 v1, p2

    #@ae
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v18

    #@b2
    if-nez v18, :cond_2

    #@b4
    .line 5450
    const-string/jumbo v18, "no_adjust_volume"

    #@b7
    move-object/from16 v0, v18

    #@b9
    move-object/from16 v1, p2

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v18

    #@bf
    .line 5449
    if-eqz v18, :cond_3

    #@c1
    .line 5452
    :cond_2
    const-string/jumbo v18, "audio"

    #@c4
    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@c7
    move-result-object v18

    #@c8
    .line 5451
    invoke-static/range {v18 .. v18}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@cb
    move-result-object v6

    #@cc
    .line 5455
    .end local v6    # "iAudioService":Landroid/media/IAudioService;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cf
    move-result-wide v8

    #@d0
    .line 5457
    .local v8, "id":J
    if-eqz p3, :cond_4

    #@d2
    if-eqz v5, :cond_7

    #@d4
    .line 5495
    :cond_4
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@d8
    move-object/from16 v18, v0

    #@da
    move-object/from16 v0, v18

    #@dc
    move-object/from16 v1, p2

    #@de
    move/from16 v2, p3

    #@e0
    invoke-virtual {v0, v1, v2, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@e3
    .line 5496
    move/from16 v0, p3

    #@e5
    if-eq v0, v5, :cond_5

    #@e7
    .line 5497
    const-string/jumbo v18, "no_share_location"

    #@ea
    move-object/from16 v0, v18

    #@ec
    move-object/from16 v1, p2

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f1
    move-result v18

    #@f2
    if-eqz v18, :cond_5

    #@f4
    .line 5500
    const-string/jumbo v11, "sys.settings_secure_version"

    #@f7
    .line 5501
    .local v11, "property":Ljava/lang/String;
    const-string/jumbo v18, "sys.settings_secure_version"

    #@fa
    const-wide/16 v20, 0x0

    #@fc
    move-object/from16 v0, v18

    #@fe
    move-wide/from16 v1, v20

    #@100
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@103
    move-result-wide v18

    #@104
    const-wide/16 v20, 0x1

    #@106
    add-long v16, v18, v20

    #@108
    .line 5502
    .local v16, "version":J
    const-string/jumbo v18, "sys.settings_secure_version"

    #@10b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@10e
    move-result-object v19

    #@10f
    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@112
    .line 5504
    const-string/jumbo v10, "location_providers_allowed"

    #@115
    .line 5505
    .local v10, "name":Ljava/lang/String;
    sget-object v18, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@117
    const-string/jumbo v19, "location_providers_allowed"

    #@11a
    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@11d
    move-result-object v13

    #@11e
    .line 5506
    .local v13, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@122
    move-object/from16 v18, v0

    #@124
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@127
    move-result-object v18

    #@128
    const/16 v19, 0x0

    #@12a
    const/16 v20, 0x1

    #@12c
    move-object/from16 v0, v18

    #@12e
    move-object/from16 v1, v19

    #@130
    move/from16 v2, v20

    #@132
    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    #@135
    .line 5509
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "property":Ljava/lang/String;
    .end local v13    # "url":Landroid/net/Uri;
    .end local v16    # "version":J
    :cond_5
    if-nez p3, :cond_6

    #@137
    if-eqz v5, :cond_6

    #@139
    .line 5510
    const-string/jumbo v18, "no_unmute_microphone"

    #@13c
    move-object/from16 v0, v18

    #@13e
    move-object/from16 v1, p2

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v18

    #@144
    if-eqz v18, :cond_e

    #@146
    .line 5511
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@14a
    move-object/from16 v18, v0

    #@14c
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@14f
    move-result-object v18

    #@150
    const/16 v19, 0x0

    #@152
    move/from16 v0, v19

    #@154
    move-object/from16 v1, v18

    #@156
    invoke-interface {v6, v0, v1, v15}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@159
    .line 5521
    :cond_6
    :goto_1
    :try_start_3
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@15c
    .line 5523
    :goto_2
    move-object/from16 v0, p0

    #@15e
    invoke-direct {v0, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@161
    monitor-exit p0

    #@162
    .line 5431
    return-void

    #@163
    .line 5458
    :cond_7
    :try_start_4
    const-string/jumbo v18, "no_unmute_microphone"

    #@166
    move-object/from16 v0, v18

    #@168
    move-object/from16 v1, p2

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16d
    move-result v18

    #@16e
    if-eqz v18, :cond_9

    #@170
    .line 5459
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@174
    move-object/from16 v18, v0

    #@176
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@179
    move-result-object v18

    #@17a
    const/16 v19, 0x1

    #@17c
    move/from16 v0, v19

    #@17e
    move-object/from16 v1, v18

    #@180
    invoke-interface {v6, v0, v1, v15}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V

    #@183
    .line 5465
    :cond_8
    :goto_3
    const-string/jumbo v18, "no_config_wifi"

    #@186
    move-object/from16 v0, v18

    #@188
    move-object/from16 v1, p2

    #@18a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18d
    move-result v18

    #@18e
    if-eqz v18, :cond_a

    #@190
    .line 5466
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@194
    move-object/from16 v18, v0

    #@196
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@199
    move-result-object v18

    #@19a
    .line 5467
    const-string/jumbo v19, "wifi_networks_available_notification_on"

    #@19d
    const/16 v20, 0x0

    #@19f
    .line 5466
    move-object/from16 v0, v18

    #@1a1
    move-object/from16 v1, v19

    #@1a3
    move/from16 v2, v20

    #@1a5
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1a8
    goto/16 :goto_0

    #@1aa
    .line 5518
    :catch_0
    move-exception v12

    #@1ab
    .line 5519
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v18, "DevicePolicyManagerService"

    #@1ae
    const-string/jumbo v19, "Failed to talk to AudioService."

    #@1b1
    move-object/from16 v0, v18

    #@1b3
    move-object/from16 v1, v19

    #@1b5
    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1b8
    .line 5521
    :try_start_6
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1bb
    goto :goto_2

    #@1bc
    .line 5461
    .end local v12    # "re":Landroid/os/RemoteException;
    :cond_9
    :try_start_7
    const-string/jumbo v18, "no_adjust_volume"

    #@1bf
    move-object/from16 v0, v18

    #@1c1
    move-object/from16 v1, p2

    #@1c3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c6
    move-result v18

    #@1c7
    if-eqz v18, :cond_8

    #@1c9
    .line 5462
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@1cd
    move-object/from16 v18, v0

    #@1cf
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1d2
    move-result-object v18

    #@1d3
    const/16 v19, 0x1

    #@1d5
    const/16 v20, 0x0

    #@1d7
    move/from16 v0, v19

    #@1d9
    move/from16 v1, v20

    #@1db
    move-object/from16 v2, v18

    #@1dd
    invoke-interface {v6, v0, v1, v2, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@1e0
    goto :goto_3

    #@1e1
    .line 5520
    :catchall_1
    move-exception v18

    #@1e2
    .line 5521
    :try_start_8
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@1e5
    .line 5520
    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1e6
    .line 5469
    :cond_a
    :try_start_9
    const-string/jumbo v18, "no_share_location"

    #@1e9
    move-object/from16 v0, v18

    #@1eb
    move-object/from16 v1, p2

    #@1ed
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f0
    move-result v18

    #@1f1
    if-eqz v18, :cond_b

    #@1f3
    .line 5470
    move-object/from16 v0, p0

    #@1f5
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@1f7
    move-object/from16 v18, v0

    #@1f9
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1fc
    move-result-object v18

    #@1fd
    .line 5471
    const-string/jumbo v19, "location_mode"

    #@200
    const/16 v20, 0x0

    #@202
    .line 5470
    move-object/from16 v0, v18

    #@204
    move-object/from16 v1, v19

    #@206
    move/from16 v2, v20

    #@208
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@20b
    .line 5473
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@20f
    move-object/from16 v18, v0

    #@211
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@214
    move-result-object v18

    #@215
    .line 5474
    const-string/jumbo v19, "location_providers_allowed"

    #@218
    const-string/jumbo v20, ""

    #@21b
    .line 5473
    move-object/from16 v0, v18

    #@21d
    move-object/from16 v1, v19

    #@21f
    move-object/from16 v2, v20

    #@221
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@224
    goto/16 :goto_0

    #@226
    .line 5476
    :cond_b
    const-string/jumbo v18, "no_debugging_features"

    #@229
    move-object/from16 v0, v18

    #@22b
    move-object/from16 v1, p2

    #@22d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@230
    move-result v18

    #@231
    if-eqz v18, :cond_c

    #@233
    .line 5478
    if-nez v15, :cond_4

    #@235
    .line 5479
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@239
    move-object/from16 v18, v0

    #@23b
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23e
    move-result-object v18

    #@23f
    .line 5480
    const-string/jumbo v19, "adb_enabled"

    #@242
    const-string/jumbo v20, "0"

    #@245
    .line 5479
    move-object/from16 v0, v18

    #@247
    move-object/from16 v1, v19

    #@249
    move-object/from16 v2, v20

    #@24b
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@24e
    goto/16 :goto_0

    #@250
    .line 5482
    :cond_c
    const-string/jumbo v18, "ensure_verify_apps"

    #@253
    move-object/from16 v0, v18

    #@255
    move-object/from16 v1, p2

    #@257
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25a
    move-result v18

    #@25b
    if-eqz v18, :cond_d

    #@25d
    .line 5483
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@261
    move-object/from16 v18, v0

    #@263
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@266
    move-result-object v18

    #@267
    .line 5484
    const-string/jumbo v19, "package_verifier_enable"

    #@26a
    const-string/jumbo v20, "1"

    #@26d
    .line 5483
    move-object/from16 v0, v18

    #@26f
    move-object/from16 v1, v19

    #@271
    move-object/from16 v2, v20

    #@273
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@276
    .line 5486
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@27a
    move-object/from16 v18, v0

    #@27c
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@27f
    move-result-object v18

    #@280
    .line 5487
    const-string/jumbo v19, "verifier_verify_adb_installs"

    #@283
    const-string/jumbo v20, "1"

    #@286
    .line 5486
    move-object/from16 v0, v18

    #@288
    move-object/from16 v1, v19

    #@28a
    move-object/from16 v2, v20

    #@28c
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@28f
    goto/16 :goto_0

    #@291
    .line 5489
    :cond_d
    const-string/jumbo v18, "no_install_unknown_sources"

    #@294
    move-object/from16 v0, v18

    #@296
    move-object/from16 v1, p2

    #@298
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29b
    move-result v18

    #@29c
    if-eqz v18, :cond_4

    #@29e
    .line 5490
    move-object/from16 v0, p0

    #@2a0
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2a2
    move-object/from16 v18, v0

    #@2a4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2a7
    move-result-object v18

    #@2a8
    .line 5491
    const-string/jumbo v19, "install_non_market_apps"

    #@2ab
    const/16 v20, 0x0

    #@2ad
    .line 5490
    move-object/from16 v0, v18

    #@2af
    move-object/from16 v1, v19

    #@2b1
    move/from16 v2, v20

    #@2b3
    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@2b6
    goto/16 :goto_0

    #@2b8
    .line 5513
    :cond_e
    const-string/jumbo v18, "no_adjust_volume"

    #@2bb
    move-object/from16 v0, v18

    #@2bd
    move-object/from16 v1, p2

    #@2bf
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c2
    move-result v18

    #@2c3
    if-eqz v18, :cond_6

    #@2c5
    .line 5514
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@2c9
    move-object/from16 v18, v0

    #@2cb
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2ce
    move-result-object v18

    #@2cf
    const/16 v19, 0x0

    #@2d1
    const/16 v20, 0x0

    #@2d3
    move/from16 v0, v19

    #@2d5
    move/from16 v1, v20

    #@2d7
    move-object/from16 v2, v18

    #@2d9
    invoke-interface {v6, v0, v1, v2, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@2dc
    goto/16 :goto_1
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5807
    invoke-static {p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->rebuildManagedQuickContactsIntent(Ljava/lang/String;JLandroid/content/Intent;)Landroid/content/Intent;

    #@3
    move-result-object v1

    #@4
    .line 5809
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@7
    move-result v0

    #@8
    .line 5811
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 5813
    .local v2, "ident":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 5814
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result v4

    #@11
    .line 5815
    .local v4, "managedUserId":I
    if-gez v4, :cond_0

    #@13
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@14
    .line 5829
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 5816
    return-void

    #@18
    .line 5818
    :cond_0
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCrossProfileCallerIdDisabledForUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1f
    .line 5829
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 5823
    return-void

    #@23
    .line 5826
    :cond_1
    :try_start_5
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@25
    new-instance v6, Landroid/os/UserHandle;

    #@27
    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@2a
    .line 5825
    invoke-static {v5, v1, v6}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@2d
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2e
    .line 5829
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 5806
    return-void

    #@32
    .line 5813
    .end local v4    # "managedUserId":I
    :catchall_0
    move-exception v5

    #@33
    :try_start_7
    monitor-exit p0

    #@34
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@35
    .line 5828
    :catchall_1
    move-exception v5

    #@36
    .line 5829
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 5828
    throw v5
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5390
    const-string/jumbo v4, "ComponentName is null"

    #@3
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 5391
    monitor-enter p0

    #@7
    .line 5392
    const/4 v4, -0x2

    #@8
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@b
    .line 5394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v2

    #@f
    .line 5396
    .local v2, "id":J
    const/4 v1, 0x0

    #@10
    .line 5397
    .local v1, "userId":I
    if-eqz p2, :cond_0

    #@12
    .line 5398
    :try_start_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@15
    move-result v1

    #@16
    .line 5400
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v4

    #@1e
    .line 5405
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    monitor-exit p0

    #@22
    .line 5400
    return v4

    #@23
    .line 5401
    :catch_0
    move-exception v0

    #@24
    .line 5402
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@27
    const-string/jumbo v5, "Couldn\'t switch user"

    #@2a
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    .line 5405
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30
    .line 5403
    const/4 v4, 0x0

    #@31
    monitor-exit p0

    #@32
    return v4

    #@33
    .line 5404
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@34
    .line 5405
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    #@37
    .line 5404
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@38
    .line 5391
    .end local v1    # "userId":I
    .end local v2    # "id":J
    :catchall_1
    move-exception v4

    #@39
    monitor-exit p0

    #@3a
    throw v4
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 8
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@0
    .prologue
    .line 1763
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v7, "sys.secpolicy.camera.off_"

    #@8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v6

    #@c
    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1764
    .local v1, "cameraPropertyForUser":Ljava/lang/String;
    const/4 v6, 0x0

    #@17
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@1a
    move-result v2

    #@1b
    .line 1765
    .local v2, "systemState":Z
    iget v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@1d
    const/4 v7, 0x0

    #@1e
    invoke-virtual {p0, v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    #@21
    move-result v0

    #@22
    .line 1766
    .local v0, "cameraDisabled":Z
    if-eq v0, v2, :cond_0

    #@24
    .line 1767
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@27
    move-result-wide v4

    #@28
    .line 1769
    .local v4, "token":J
    if-eqz v0, :cond_1

    #@2a
    :try_start_0
    const-string/jumbo v3, "1"

    #@2d
    .line 1772
    .local v3, "value":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1774
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 1760
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_0
    return-void

    #@34
    .line 1769
    .restart local v4    # "token":J
    :cond_1
    :try_start_1
    const-string/jumbo v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    #@38
    .line 1773
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@39
    .line 1774
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1773
    throw v6
.end method

.method public systemReady()V
    .locals 6

    #@0
    .prologue
    .line 1780
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 1781
    return-void

    #@5
    .line 1783
    :cond_0
    const/4 v4, 0x0

    #@6
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@9
    .line 1784
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadDeviceOwner()V

    #@c
    .line 1785
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->cleanUpOldUsers()V

    #@f
    .line 1787
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    #@11
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@13
    invoke-direct {v4, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    #@16
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->register(Landroid/content/ContentResolver;)V

    #@1f
    .line 1789
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    #@22
    .line 1792
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@24
    const/4 v5, 0x1

    #@25
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@28
    move-result-object v3

    #@29
    .line 1793
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@2c
    move-result v0

    #@2d
    .line 1794
    .local v0, "N":I
    const/4 v1, 0x0

    #@2e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@30
    .line 1795
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Landroid/content/pm/UserInfo;

    #@36
    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    #@38
    .line 1797
    .local v2, "userHandle":I
    const/4 v4, 0x0

    #@39
    invoke-virtual {p0, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    #@3c
    move-result v4

    #@3d
    .line 1796
    invoke-direct {p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    #@40
    .line 1794
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1779
    .end local v2    # "userHandle":I
    :cond_1
    return-void
.end method

.method public uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "aliases"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3182
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@3
    .line 3184
    new-instance v6, Landroid/os/UserHandle;

    #@5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v7

    #@9
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@c
    .line 3185
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 3187
    .local v2, "id":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v7, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    move-result-object v5

    #@16
    .line 3189
    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v7, p2

    #@18
    if-ge v1, v7, :cond_0

    #@1a
    .line 3190
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@1d
    move-result-object v7

    #@1e
    aget-object v8, p2, v1

    #@20
    invoke-interface {v7, v8}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 3189
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 3195
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 3201
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 3181
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_2
    return-void

    #@2d
    .line 3192
    .restart local v1    # "i":I
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    #@2e
    .line 3193
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@31
    const-string/jumbo v8, "from CaCertUninstaller: "

    #@34
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    .line 3195
    :try_start_4
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    goto :goto_1

    #@3b
    .line 3197
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v4

    #@3c
    .line 3198
    .local v4, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v7, "DevicePolicyManagerService"

    #@3f
    const-string/jumbo v8, "CaCertUninstaller: "

    #@42
    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 3199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4c
    .line 3201
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    goto :goto_2

    #@50
    .line 3194
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v7

    #@51
    .line 3195
    :try_start_6
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@54
    .line 3194
    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@55
    .line 3200
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v7

    #@56
    .line 3201
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@59
    .line 3200
    throw v7
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@0
    .prologue
    .line 3015
    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    #@2
    const/4 v5, 0x0

    #@3
    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    #@6
    move-result-wide v2

    #@7
    .line 3016
    .local v2, "timeMs":J
    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    #@9
    cmp-long v4, v4, v2

    #@b
    if-nez v4, :cond_0

    #@d
    .line 3017
    return-void

    #@e
    .line 3020
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 3022
    .local v0, "ident":J
    const-wide/16 v4, 0x0

    #@14
    cmp-long v4, v2, v4

    #@16
    if-gtz v4, :cond_1

    #@18
    .line 3023
    const-wide/32 v2, 0x7fffffff

    #@1b
    .line 3031
    :goto_0
    :try_start_0
    iput-wide v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    #@1d
    .line 3032
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@1f
    long-to-int v5, v2

    #@20
    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 3034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 3014
    return-void

    #@27
    .line 3027
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v4

    #@2d
    .line 3028
    const-string/jumbo v5, "stay_on_while_plugged_in"

    #@30
    const/4 v6, 0x0

    #@31
    .line 3027
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 3033
    :catchall_0
    move-exception v4

    #@36
    .line 3034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 3033
    throw v4
.end method

.method updateUserSetupComplete()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 6174
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@4
    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 6175
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v3

    #@e
    .line 6176
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    .line 6177
    .local v0, "N":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 6178
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    check-cast v6, Landroid/content/pm/UserInfo;

    #@1b
    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    #@1d
    .line 6179
    .local v4, "userHandle":I
    const-string/jumbo v6, "user_setup_complete"

    #@20
    invoke-static {v3, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_0

    #@26
    .line 6181
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@29
    move-result-object v2

    #@2a
    .line 6182
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    #@2c
    if-nez v6, :cond_0

    #@2e
    .line 6183
    iput-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    #@30
    .line 6184
    monitor-enter p0

    #@31
    .line 6186
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeDeviceInitializerFromLockTaskPackages(I)V

    #@34
    .line 6187
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 6177
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 6184
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    #@3c
    monitor-exit p0

    #@3d
    throw v6

    #@3e
    .line 6173
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userHandle":I
    :cond_1
    return-void
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@0
    .prologue
    .line 1740
    iget v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@2
    if-ltz v2, :cond_1

    #@4
    .line 1741
    const/4 v0, 0x0

    #@5
    .line 1742
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v1, v2, -0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@f
    .line 1743
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@17
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    #@1a
    move-result v2

    #@1b
    iget v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 1744
    const/4 v0, 0x1

    #@20
    .line 1748
    :cond_0
    if-nez v0, :cond_1

    #@22
    .line 1749
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Previous password owner "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 1750
    const-string/jumbo v4, " no longer active; disabling"

    #@3a
    .line 1749
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 1751
    const/4 v2, -0x1

    #@46
    iput v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    #@48
    .line 1739
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    #@49
    .line 1742
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@4b
    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 10
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 3335
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 3336
    return-void

    #@5
    .line 3338
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    #@8
    .line 3339
    monitor-enter p0

    #@9
    .line 3342
    const/4 v8, 0x0

    #@a
    .line 3343
    const/4 v9, 0x4

    #@b
    .line 3342
    :try_start_0
    invoke-virtual {p0, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@e
    move-result-object v0

    #@f
    .line 3346
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@11
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@14
    move-result-object v1

    #@15
    .line 3347
    .local v1, "cname":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    #@17
    .line 3348
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 3353
    .local v6, "source":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v2

    #@1f
    .line 3355
    .local v2, "ident":J
    and-int/lit8 v8, p1, 0x2

    #@21
    if-eqz v8, :cond_2

    #@23
    .line 3356
    :try_start_1
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@25
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_5

    #@2f
    .line 3357
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_4

    #@35
    const/4 v5, 0x0

    #@36
    .line 3358
    .local v5, "ownsInitialization":Z
    :goto_1
    if-nez p2, :cond_6

    #@38
    .line 3359
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@3a
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    #@41
    move-result v8

    #@42
    if-nez v8, :cond_1

    #@44
    if-eqz v5, :cond_6

    #@46
    .line 3365
    :cond_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@48
    const-string/jumbo v9, "persistent_data_block"

    #@4b
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    .line 3364
    check-cast v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    #@51
    .line 3366
    .local v4, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v4, :cond_2

    #@53
    .line 3367
    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    #@56
    .line 3370
    .end local v4    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    .end local v5    # "ownsInitialization":Z
    :cond_2
    and-int/lit8 v8, p1, 0x1

    #@58
    if-eqz v8, :cond_7

    #@5a
    const/4 v7, 0x1

    #@5b
    .line 3372
    .local v7, "wipeExtRequested":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v9, "DevicePolicyManager.wipeData() from "

    #@63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    .line 3371
    invoke-direct {p0, v7, p2, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    .line 3374
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@75
    monitor-exit p0

    #@76
    .line 3334
    return-void

    #@77
    .line 3350
    .end local v2    # "ident":J
    .end local v6    # "source":Ljava/lang/String;
    .end local v7    # "wipeExtRequested":Z
    :cond_3
    :try_start_3
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@79
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7c
    move-result-object v6

    #@7d
    .restart local v6    # "source":Ljava/lang/String;
    goto :goto_0

    #@7e
    .line 3357
    .restart local v2    # "ident":J
    :cond_4
    const/4 v5, 0x1

    #@7f
    .restart local v5    # "ownsInitialization":Z
    goto :goto_1

    #@80
    .line 3356
    .end local v5    # "ownsInitialization":Z
    :cond_5
    const/4 v5, 0x0

    #@81
    .restart local v5    # "ownsInitialization":Z
    goto :goto_1

    #@82
    .line 3361
    :cond_6
    :try_start_4
    new-instance v8, Ljava/lang/SecurityException;

    #@84
    .line 3362
    const-string/jumbo v9, "Only device owner admins can set WIPE_RESET_PROTECTION_DATA"

    #@87
    .line 3361
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8b
    .line 3373
    .end local v5    # "ownsInitialization":Z
    :catchall_0
    move-exception v8

    #@8c
    .line 3374
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8f
    .line 3373
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@90
    .line 3339
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local v6    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v8

    #@91
    monitor-exit p0

    #@92
    throw v8

    #@93
    .line 3370
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "cname":Landroid/content/ComponentName;
    .restart local v2    # "ident":J
    .restart local v6    # "source":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    #@94
    .restart local v7    # "wipeExtRequested":Z
    goto :goto_2
.end method
