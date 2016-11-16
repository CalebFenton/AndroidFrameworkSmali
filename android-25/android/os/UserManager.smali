.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final ACTION_CREATE_USER:Ljava/lang/String; = "android.os.action.CREATE_USER"

.field public static final ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field public static final DISALLLOW_UNMUTE_DEVICE:Ljava/lang/String; = "disallow_unmute_device"

.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_CAMERA:Ljava/lang/String; = "no_camera"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DATA_ROAMING:Ljava/lang/String; = "no_data_roaming"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final DISALLOW_OEM_UNLOCK:Ljava/lang/String; = "no_oem_unlock"

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_RUN_IN_BACKGROUND:Ljava/lang/String; = "no_run_in_background"

.field public static final DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final DISALLOW_SET_USER_ICON:Ljava/lang/String; = "no_set_user_icon"

.field public static final DISALLOW_SET_WALLPAPER:Ljava/lang/String; = "no_set_wallpaper"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final EXTRA_USER_ACCOUNT_NAME:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_NAME"

.field public static final EXTRA_USER_ACCOUNT_OPTIONS:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_OPTIONS"

.field public static final EXTRA_USER_ACCOUNT_TYPE:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_TYPE"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "android.os.extra.USER_NAME"

.field public static final KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field public static final RESTRICTION_NOT_SET:I = 0x0

.field public static final RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2

.field public static final RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4

.field public static final RESTRICTION_SOURCE_SYSTEM:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_CREATION_FAILED_NOT_PERMITTED:I = 0x1

.field public static final USER_CREATION_FAILED_NO_MORE_USERS:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    const-string/jumbo v0, "UserManager"

    #@3
    sput-object v0, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@5
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IUserManager;

    #@0
    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 726
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@5
    .line 727
    iput-object p1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@7
    .line 725
    return-void
.end method

.method public static createUserCreationIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountOptions"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1393
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.os.action.CREATE_USER"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1394
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_0

    #@a
    .line 1395
    const-string/jumbo v1, "android.os.extra.USER_NAME"

    #@d
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 1397
    :cond_0
    if-eqz p1, :cond_1

    #@12
    if-nez p2, :cond_1

    #@14
    .line 1398
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "accountType must be specified if accountName is specified"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 1401
    :cond_1
    if-eqz p1, :cond_2

    #@1f
    .line 1402
    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_NAME"

    #@22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 1404
    :cond_2
    if-eqz p2, :cond_3

    #@27
    .line 1405
    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_TYPE"

    #@2a
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 1407
    :cond_3
    if-eqz p3, :cond_4

    #@2f
    .line 1408
    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    #@32
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@35
    .line 1410
    :cond_4
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 721
    const-string/jumbo v0, "user"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/UserManager;

    #@9
    return-object v0
.end method

.method public static getMaxSupportedUsers()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1997
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    #@3
    const-string/jumbo v1, "JVP"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    return v2

    #@d
    .line 1999
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    return v2

    #@14
    .line 2000
    :cond_1
    const-string/jumbo v0, "fw.max_users"

    #@17
    .line 2001
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1a
    move-result-object v1

    #@1b
    const v2, 0x10e008d

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@21
    move-result v1

    #@22
    .line 2000
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public static isDeviceInDemoMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2037
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v1

    #@5
    .line 2038
    const-string/jumbo v2, "device_demo_mode"

    #@8
    .line 2037
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v1

    #@c
    if-lez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public static isSplitSystemUser()Z
    .locals 2

    #@0
    .prologue
    .line 748
    const-string/jumbo v0, "ro.fw.system_user_split"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static supportsMultipleUsers()Z
    .locals 3

    #@0
    .prologue
    .line 736
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-le v0, v1, :cond_0

    #@7
    .line 737
    const-string/jumbo v0, "fw.show_multiuserui"

    #@a
    .line 738
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    const v2, 0x1120075

    #@11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@14
    move-result v1

    #@15
    .line 737
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@18
    move-result v0

    #@19
    .line 736
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public canAddMoreManagedProfiles(IZ)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    #@0
    .prologue
    .line 1650
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->canAddMoreManagedProfiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1651
    :catch_0
    move-exception v0

    #@8
    .line 1652
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public canAddMoreUsers()Z
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1627
    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@4
    move-result-object v4

    #@5
    .line 1628
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .line 1629
    .local v2, "totalUserCount":I
    const/4 v0, 0x0

    #@a
    .line 1630
    .local v0, "aliveUserCount":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 1631
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/UserInfo;

    #@13
    .line 1632
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_0

    #@19
    .line 1633
    add-int/lit8 v0, v0, 0x1

    #@1b
    .line 1630
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1636
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@21
    move-result v6

    #@22
    if-ge v0, v6, :cond_2

    #@24
    :goto_1
    return v5

    #@25
    :cond_2
    const/4 v5, 0x0

    #@26
    goto :goto_1
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 867
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 868
    :catch_0
    move-exception v0

    #@8
    .line 869
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public canSwitchUsers()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 759
    iget-object v4, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v4

    #@7
    .line 760
    const-string/jumbo v5, "allow_user_switching_when_system_user_locked"

    #@a
    .line 758
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_2

    #@10
    const/4 v0, 0x1

    #@11
    .line 761
    .local v0, "allowUserSwitchingWhenSystemUserLocked":Z
    :goto_0
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@13
    invoke-virtual {p0, v4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    #@16
    move-result v2

    #@17
    .line 762
    .local v2, "isSystemUserUnlocked":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_3

    #@21
    const/4 v1, 0x1

    #@22
    .line 764
    .local v1, "inCall":Z
    :goto_1
    if-nez v0, :cond_0

    #@24
    if-eqz v2, :cond_1

    #@26
    :cond_0
    if-eqz v1, :cond_4

    #@28
    :cond_1
    :goto_2
    return v3

    #@29
    .line 758
    .end local v0    # "allowUserSwitchingWhenSystemUserLocked":Z
    .end local v1    # "inCall":Z
    .end local v2    # "isSystemUserUnlocked":Z
    :cond_2
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "allowUserSwitchingWhenSystemUserLocked":Z
    goto :goto_0

    #@2b
    .line 762
    .restart local v2    # "isSystemUserUnlocked":Z
    :cond_3
    const/4 v1, 0x0

    #@2c
    .restart local v1    # "inCall":Z
    goto :goto_1

    #@2d
    .line 764
    :cond_4
    const/4 v3, 0x1

    #@2e
    goto :goto_2
.end method

.method public clearSeedAccountData()V
    .locals 2

    #@0
    .prologue
    .line 1485
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->clearSeedAccountData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1483
    return-void

    #@6
    .line 1486
    :catch_0
    move-exception v0

    #@7
    .line 1487
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1303
    const/4 v0, 0x0

    #@1
    .line 1305
    .local v0, "guest":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@3
    const/4 v3, 0x4

    #@4
    invoke-interface {v2, p2, v3}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 1306
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    .line 1307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v2

    #@e
    .line 1308
    const-string/jumbo v3, "skip_first_use_hints"

    #@11
    const-string/jumbo v4, "1"

    #@14
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@16
    .line 1307
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 1313
    :cond_0
    return-object v0

    #@1a
    .line 1310
    .end local v0    # "guest":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@1b
    .line 1311
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1e
    move-result-object v2

    #@1f
    throw v2
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1330
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1331
    :catch_0
    move-exception v0

    #@8
    .line 1332
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1346
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    .line 1347
    .local v0, "parentUserHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@6
    .line 1348
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v4

    #@a
    .line 1347
    invoke-interface {v3, p1, v4}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v2

    #@e
    .line 1349
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@10
    .line 1350
    iget-object v3, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@15
    move-result-object v3

    #@16
    .line 1351
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@18
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@1b
    move-result-object v4

    #@1c
    .line 1350
    invoke-virtual {v3, v0, v4}, Landroid/accounts/AccountManager;->addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1353
    :cond_0
    return-object v2

    #@20
    .line 1354
    .end local v0    # "parentUserHandle":Landroid/os/UserHandle;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@21
    .line 1355
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@24
    move-result-object v3

    #@25
    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1281
    const/4 v1, 0x0

    #@1
    .line 1283
    .local v1, "user":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@3
    invoke-interface {v2, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@6
    move-result-object v1

    #@7
    .line 1286
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1293
    :cond_0
    :goto_0
    return-object v1

    #@10
    .line 1287
    :cond_1
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@12
    const-string/jumbo v3, "no_sms"

    #@15
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@17
    const/4 v5, 0x1

    #@18
    invoke-interface {v2, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    #@1b
    .line 1288
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@1d
    const-string/jumbo v3, "no_outgoing_calls"

    #@20
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@22
    const/4 v5, 0x1

    #@23
    invoke-interface {v2, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 1290
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    #@28
    .line 1291
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2b
    move-result-object v2

    #@2c
    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2094
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 2095
    :catch_0
    move-exception v0

    #@8
    .line 2096
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2105
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2106
    :catch_0
    move-exception v0

    #@c
    .line 2107
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "badgedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    #@0
    .prologue
    .line 1882
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1852
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1899
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1766
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1767
    :catch_0
    move-exception v0

    #@8
    .line 1768
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 2153
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 2154
    :catch_0
    move-exception v0

    #@8
    .line 2155
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getEnabledProfileIds(I)[I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1754
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getEnabledProfiles(I)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1702
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 1703
    :catch_0
    move-exception v0

    #@9
    .line 1704
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 2

    #@0
    .prologue
    .line 1613
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1614
    :catch_0
    move-exception v0

    #@8
    .line 1615
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getProfileIds(IZ)[I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    #@0
    .prologue
    .line 1735
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1736
    :catch_0
    move-exception v0

    #@8
    .line 1737
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1746
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1780
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1781
    :catch_0
    move-exception v0

    #@8
    .line 1782
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getProfiles(I)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1669
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 1670
    :catch_0
    move-exception v0

    #@9
    .line 1671
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1421
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1422
    :catch_0
    move-exception v0

    #@8
    .line 1423
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 2

    #@0
    .prologue
    .line 1451
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountOptions()Landroid/os/PersistableBundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1452
    :catch_0
    move-exception v0

    #@8
    .line 1453
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1435
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1436
    :catch_0
    move-exception v0

    #@8
    .line 1437
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1251
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    #@7
    move-result v0

    #@8
    int-to-long v0, v0

    #@9
    return-wide v0
.end method

.method public getSerialNumbersOfUsers(Z)[J
    .locals 6
    .param p1, "excludeDying"    # Z

    #@0
    .prologue
    .line 1561
    :try_start_0
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    .line 1562
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@9
    move-result v4

    #@a
    new-array v2, v4, [J

    #@c
    .line 1563
    .local v2, "result":[J
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@e
    if-ge v0, v4, :cond_0

    #@10
    .line 1564
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/content/pm/UserInfo;

    #@16
    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    #@18
    int-to-long v4, v4

    #@19
    aput-wide v4, v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1563
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1566
    :cond_0
    return-object v2

    #@1f
    .line 1567
    .end local v0    # "i":I
    .end local v2    # "result":[J
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    #@20
    .line 1568
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@23
    move-result-object v4

    #@24
    throw v4
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1582
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1583
    :catch_0
    move-exception v0

    #@8
    .line 1584
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getUserCount()I
    .locals 2

    #@0
    .prologue
    .line 1530
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1531
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_0

    #@6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x1

    #@c
    goto :goto_0
.end method

.method public getUserCreationTime(Landroid/os/UserHandle;)J
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2167
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserCreationTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 2168
    :catch_0
    move-exception v0

    #@c
    .line 2169
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 3
    .param p1, "serialNumber"    # J

    #@0
    .prologue
    .line 1264
    long-to-int v1, p1

    #@1
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    #@4
    move-result v0

    #@5
    .line 1265
    .local v0, "ident":I
    if-ltz v0, :cond_0

    #@7
    new-instance v1, Landroid/os/UserHandle;

    #@9
    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public getUserHandle()I
    .locals 1

    #@0
    .prologue
    .line 774
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getUserHandle(I)I
    .locals 2
    .param p1, "userSerialNumber"    # I

    #@0
    .prologue
    .line 2067
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserHandle(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2068
    :catch_0
    move-exception v0

    #@8
    .line 2069
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1972
    :try_start_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@3
    invoke-interface {v3, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@6
    move-result-object v1

    #@7
    .line 1973
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    #@9
    .line 1975
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@c
    move-result-object v3

    #@d
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result-object v3

    #@11
    .line 1978
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@14
    .line 1975
    :goto_0
    return-object v3

    #@15
    .line 1979
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@17
    .line 1976
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@18
    .line 1978
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@1b
    .line 1976
    :goto_1
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@1c
    .line 1983
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    #@1d
    .line 1984
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@20
    move-result-object v3

    #@21
    throw v3

    #@22
    .line 1979
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    #@23
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@24
    .line 1986
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v4
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1095
    :catch_0
    move-exception v0

    #@8
    .line 1096
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v1

    #@a
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    return-object v1

    #@d
    .line 786
    :catch_0
    move-exception v0

    #@e
    .line 787
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1715
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v3

    #@4
    const/4 v4, 0x1

    #@5
    invoke-virtual {p0, v3, v4}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    #@8
    move-result-object v2

    #@9
    .line 1716
    .local v2, "userIds":[I
    new-instance v0, Ljava/util/ArrayList;

    #@b
    array-length v3, v2

    #@c
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 1717
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v3, 0x0

    #@10
    array-length v4, v2

    #@11
    :goto_0
    if-ge v3, v4, :cond_0

    #@13
    aget v1, v2, v3

    #@15
    .line 1718
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1717
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1720
    .end local v1    # "userId":I
    :cond_0
    return-object v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1115
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1116
    :catch_0
    move-exception v0

    #@c
    .line 1117
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1126
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1136
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1137
    :catch_0
    move-exception v0

    #@c
    .line 1138
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2050
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2051
    :catch_0
    move-exception v0

    #@8
    .line 2052
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1544
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 1545
    :catch_0
    move-exception v0

    #@9
    .line 1546
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 2
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1913
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1914
    :catch_0
    move-exception v0

    #@8
    .line 1915
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1152
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1153
    :catch_0
    move-exception v0

    #@c
    .line 1154
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1222
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1234
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    .line 1235
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    .line 1234
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1236
    :catch_0
    move-exception v0

    #@c
    .line 1237
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public isAdminUser()Z
    .locals 1

    #@0
    .prologue
    .line 834
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isDemoUser()Z
    .locals 3

    #@0
    .prologue
    .line 891
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isDemoUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 892
    :catch_0
    move-exception v0

    #@c
    .line 893
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public isEphemeralUser()Z
    .locals 1

    #@0
    .prologue
    .line 937
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isGuestUser()Z
    .locals 2

    #@0
    .prologue
    .line 879
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 880
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public isLinkedUser()Z
    .locals 2

    #@0
    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->isRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 856
    :catch_0
    move-exception v0

    #@8
    .line 857
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isManagedProfile()Z
    .locals 3

    #@0
    .prologue
    .line 907
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isManagedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 908
    :catch_0
    move-exception v0

    #@c
    .line 909
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public isManagedProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 924
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->isManagedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 925
    :catch_0
    move-exception v0

    #@8
    .line 926
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isPrimaryUser()Z
    .locals 2

    #@0
    .prologue
    .line 813
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 814
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1810
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1811
    :catch_0
    move-exception v0

    #@c
    .line 1812
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    #@0
    .prologue
    .line 1684
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1685
    :catch_0
    move-exception v0

    #@8
    .line 1686
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isSystemUser()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 825
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isUserAGoat()Z
    .locals 2

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    .line 802
    const-string/jumbo v1, "com.coffeestainstudios.goatsimulator"

    #@9
    .line 801
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public isUserAdmin(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 843
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    .line 844
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public isUserEphemeral(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 945
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    .line 946
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public isUserRunning(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 965
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 966
    :catch_0
    move-exception v0

    #@b
    .line 967
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 958
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isUserRunningAndLocked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 991
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunningAndLocked(Landroid/os/UserHandle;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isUserRunningAndLocked(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 998
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 999
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x2

    #@9
    .line 998
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1000
    :catch_0
    move-exception v0

    #@f
    .line 1001
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public isUserRunningAndUnlocked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1008
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunningAndUnlocked(Landroid/os/UserHandle;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isUserRunningAndUnlocked(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1015
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1016
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x4

    #@9
    .line 1015
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1017
    :catch_0
    move-exception v0

    #@f
    .line 1018
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 981
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 982
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x1

    #@9
    .line 981
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 983
    :catch_0
    move-exception v0

    #@f
    .line 984
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public isUserSwitcherEnabled()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 2011
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 2012
    return v7

    #@a
    .line 2015
    :cond_0
    iget-object v5, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@c
    invoke-static {v5}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 2016
    return v7

    #@13
    .line 2018
    :cond_1
    invoke-virtual {p0, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@16
    move-result-object v4

    #@17
    .line 2019
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_2

    #@19
    .line 2020
    return v7

    #@1a
    .line 2022
    :cond_2
    const/4 v1, 0x0

    #@1b
    .line 2023
    .local v1, "switchableUserCount":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_4

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/content/pm/UserInfo;

    #@2b
    .line 2024
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_3

    #@31
    .line 2025
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2028
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v5, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@36
    const-class v7, Landroid/app/admin/DevicePolicyManager;

    #@38
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    #@3e
    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getGuestUserDisabled(Landroid/content/ComponentName;)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_5

    #@44
    const/4 v0, 0x0

    #@45
    .line 2030
    .local v0, "guestEnabled":Z
    :goto_1
    if-gt v1, v6, :cond_6

    #@47
    .end local v0    # "guestEnabled":Z
    :goto_2
    return v0

    #@48
    .line 2028
    :cond_5
    const/4 v0, 0x1

    #@49
    .restart local v0    # "guestEnabled":Z
    goto :goto_1

    #@4a
    :cond_6
    move v0, v6

    #@4b
    .line 2030
    goto :goto_2
.end method

.method public isUserUnlocked()Z
    .locals 1

    #@0
    .prologue
    .line 1037
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isUserUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1062
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1063
    const/4 v2, 0x4

    #@5
    .line 1062
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 1064
    :catch_0
    move-exception v0

    #@b
    .line 1065
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1056
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1078
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1079
    const/16 v2, 0x8

    #@6
    .line 1078
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1080
    :catch_0
    move-exception v0

    #@c
    .line 1081
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1071
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public markGuestForDeletion(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1500
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1501
    :catch_0
    move-exception v0

    #@8
    .line 1502
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public removeUser(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1927
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1928
    :catch_0
    move-exception v0

    #@8
    .line 1929
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2117
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2115
    return-void

    #@a
    .line 2118
    :catch_0
    move-exception v0

    #@b
    .line 2119
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2141
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2139
    return-void

    #@6
    .line 2142
    :catch_0
    move-exception v0

    #@7
    .line 2143
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setQuietModeEnabled(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z

    #@0
    .prologue
    .line 1795
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setQuietModeEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1793
    return-void

    #@6
    .line 1796
    :catch_0
    move-exception v0

    #@7
    .line 1797
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2132
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1471
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    .line 1472
    const/4 v5, 0x1

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v4, p4

    #@7
    .line 1471
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1469
    return-void

    #@b
    .line 1473
    :catch_0
    move-exception v6

    #@c
    .line 1474
    .local v6, "re":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v0

    #@10
    throw v0
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1598
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1596
    return-void

    #@6
    .line 1599
    :catch_0
    move-exception v0

    #@7
    .line 1600
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1520
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1518
    return-void

    #@6
    .line 1521
    :catch_0
    move-exception v0

    #@7
    .line 1522
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1957
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1955
    return-void

    #@6
    .line 1958
    :catch_0
    move-exception v0

    #@7
    .line 1959
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1943
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1941
    return-void

    #@6
    .line 1944
    :catch_0
    move-exception v0

    #@7
    .line 1945
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1190
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@7
    .line 1189
    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1208
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1206
    return-void

    #@a
    .line 1209
    :catch_0
    move-exception v0

    #@b
    .line 1210
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "This method is no longer supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "This method is no longer supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2183
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2184
    :catch_0
    move-exception v0

    #@8
    .line 2185
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 1827
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1828
    :catch_0
    move-exception v0

    #@8
    .line 1829
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method
