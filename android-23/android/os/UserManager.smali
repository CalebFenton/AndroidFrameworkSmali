.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field public static final ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Landroid/os/UserManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "UserManager"

    #@3
    sput-object v0, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@5
    .line 499
    const/4 v0, 0x0

    #@6
    sput-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    #@8
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IUserManager;

    #@0
    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 511
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@5
    .line 512
    iput-object p1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@7
    .line 510
    return-void
.end method

.method private static addDefaultUserRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 893
    const-string/jumbo v0, "no_outgoing_calls"

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@7
    .line 894
    const-string/jumbo v0, "no_sms"

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@d
    .line 892
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v1, Landroid/os/UserManager;

    #@2
    monitor-enter v1

    #@3
    .line 503
    :try_start_0
    sget-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 504
    const-string/jumbo v0, "user"

    #@a
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/UserManager;

    #@10
    sput-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    #@12
    .line 506
    :cond_0
    sget-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public static getMaxSupportedUsers()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1267
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
    .line 1269
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    return v2

    #@14
    .line 1270
    :cond_1
    const-string/jumbo v0, "fw.max_users"

    #@17
    .line 1271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1a
    move-result-object v1

    #@1b
    const v2, 0x10e0085

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@21
    move-result v1

    #@22
    .line 1270
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public static supportsMultipleUsers()Z
    .locals 3

    #@0
    .prologue
    .line 521
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-le v0, v1, :cond_0

    #@7
    .line 522
    const-string/jumbo v0, "fw.show_multiuserui"

    #@a
    .line 523
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    const v2, 0x112006e

    #@11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@14
    move-result v1

    #@15
    .line 522
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@18
    move-result v0

    #@19
    .line 521
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public canAddMoreManagedProfiles()Z
    .locals 3

    #@0
    .prologue
    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->canAddMoreManagedProfiles()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1003
    :catch_0
    move-exception v0

    #@8
    .line 1004
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not check if we can add more managed profiles"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1005
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public canAddMoreUsers()Z
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 981
    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@4
    move-result-object v4

    #@5
    .line 982
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .line 983
    .local v2, "totalUserCount":I
    const/4 v0, 0x0

    #@a
    .line 984
    .local v0, "aliveUserCount":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 985
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/UserInfo;

    #@13
    .line 986
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_0

    #@19
    .line 987
    add-int/lit8 v0, v0, 0x1

    #@1b
    .line 984
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 990
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

.method public createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 848
    const/4 v3, 0x4

    #@1
    invoke-virtual {p0, p2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@4
    move-result-object v0

    #@5
    .line 849
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@7
    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v3

    #@b
    .line 851
    const-string/jumbo v4, "skip_first_use_hints"

    #@e
    const-string/jumbo v5, "1"

    #@11
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@13
    .line 850
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@16
    .line 853
    :try_start_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@18
    invoke-interface {v3}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    #@1b
    move-result-object v1

    #@1c
    .line 854
    .local v1, "guestRestrictions":Landroid/os/Bundle;
    const-string/jumbo v3, "no_sms"

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@23
    .line 855
    const-string/jumbo v3, "no_install_unknown_sources"

    #@26
    const/4 v4, 0x1

    #@27
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2a
    .line 856
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2c
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@2e
    invoke-interface {v3, v1, v4}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 861
    .end local v1    # "guestRestrictions":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    #@32
    .line 857
    :catch_0
    move-exception v2

    #@33
    .line 858
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@35
    const-string/jumbo v4, "Could not update guest restrictions"

    #@38
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 911
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
    .line 912
    :catch_0
    move-exception v0

    #@8
    .line 913
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not create a user"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 914
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 878
    :try_start_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@3
    invoke-interface {v3, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@6
    move-result-object v1

    #@7
    .line 879
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    #@9
    .line 880
    return-object v5

    #@a
    .line 882
    :cond_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@c
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@e
    invoke-interface {v3, v4}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    #@11
    move-result-object v2

    #@12
    .line 883
    .local v2, "userRestrictions":Landroid/os/Bundle;
    invoke-static {v2}, Landroid/os/UserManager;->addDefaultUserRestrictions(Landroid/os/Bundle;)V

    #@15
    .line 884
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@17
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@19
    invoke-interface {v3, v2, v4}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 885
    return-object v1

    #@1d
    .line 886
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userRestrictions":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    #@1e
    .line 887
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@20
    const-string/jumbo v4, "Could not create a user"

    #@23
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 888
    return-object v5
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 834
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 835
    :catch_0
    move-exception v0

    #@8
    .line 836
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not create a user"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 837
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1340
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
    .line 1341
    :catch_0
    move-exception v0

    #@8
    .line 1342
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Could not get application restrictions for package "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1344
    const/4 v1, 0x0

    #@22
    return-object v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1352
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
    .line 1353
    :catch_0
    move-exception v0

    #@c
    .line 1354
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Could not get application restrictions for user "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1356
    const/4 v1, 0x0

    #@2a
    return-object v1
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "badgedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    #@0
    .prologue
    .line 1150
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
    .line 1120
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
    .line 1167
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
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1079
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
    .line 1080
    :catch_0
    move-exception v0

    #@8
    .line 1081
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not get credential owner"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1082
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 1410
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
    .line 1411
    :catch_0
    move-exception v0

    #@8
    .line 1412
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not set guest restrictions"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1414
    new-instance v1, Landroid/os/Bundle;

    #@12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@15
    return-object v1
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
    .line 1041
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
    .line 1042
    :catch_0
    move-exception v0

    #@9
    .line 1043
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Could not get user list"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1044
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1094
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
    .line 1095
    :catch_0
    move-exception v0

    #@8
    .line 1096
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not get profile parent"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1097
    const/4 v1, 0x0

    #@11
    return-object v1
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
    .line 1022
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
    .line 1023
    :catch_0
    move-exception v0

    #@9
    .line 1024
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Could not get user list"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1025
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 804
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

.method public getUserCount()I
    .locals 2

    #@0
    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 955
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
    .line 1425
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
    .line 1426
    :catch_0
    move-exception v0

    #@c
    .line 1427
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Could not get user creation time"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1428
    const-wide/16 v2, 0x0

    #@16
    return-wide v2
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 3
    .param p1, "serialNumber"    # J

    #@0
    .prologue
    .line 817
    long-to-int v1, p1

    #@1
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    #@4
    move-result v0

    #@5
    .line 818
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
    .line 533
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getUserHandle(I)I
    .locals 4
    .param p1, "userSerialNumber"    # I

    #@0
    .prologue
    .line 1323
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
    .line 1324
    :catch_0
    move-exception v0

    #@8
    .line 1325
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Could not get userHandle for user "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1327
    const/4 v1, -0x1

    #@22
    return v1
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1242
    :try_start_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@3
    invoke-interface {v3, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@6
    move-result-object v1

    #@7
    .line 1243
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    #@9
    .line 1245
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
    .line 1248
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@14
    .line 1245
    :goto_0
    return-object v3

    #@15
    .line 1249
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@17
    .line 1246
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@18
    .line 1248
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@1b
    .line 1246
    :goto_1
    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@1c
    .line 1253
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    #@1d
    .line 1254
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@1f
    const-string/jumbo v4, "Could not get the user icon "

    #@22
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 1256
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v5

    #@26
    .line 1249
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    #@27
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 666
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
    .line 667
    :catch_0
    move-exception v0

    #@8
    .line 668
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not get user info"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 669
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 544
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
    .line 545
    :catch_0
    move-exception v0

    #@e
    .line 546
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@10
    const-string/jumbo v2, "Could not get user name"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 547
    const-string/jumbo v1, ""

    #@19
    return-object v1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 9
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
    .line 1055
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1056
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/UserHandle;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1058
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    iget-object v6, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@f
    move-result v7

    #@10
    const/4 v8, 0x1

    #@11
    invoke-interface {v6, v7, v8}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v5

    #@15
    .line 1063
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/content/pm/UserInfo;

    #@25
    .line 1064
    .local v0, "info":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/os/UserHandle;

    #@27
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@29
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@2c
    .line 1065
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 1059
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    #@31
    .line 1060
    .local v3, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@33
    const-string/jumbo v7, "Could not get user list"

    #@36
    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 1061
    const/4 v6, 0x0

    #@3a
    return-object v6

    #@3b
    .line 1067
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 678
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
    .line 688
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
    .line 689
    :catch_0
    move-exception v0

    #@c
    .line 690
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Could not get user restrictions"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 691
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@16
    return-object v1
.end method

.method public getUserSerialNumber(I)I
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1305
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
    .line 1306
    :catch_0
    move-exception v0

    #@8
    .line 1307
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Could not get serial number for user "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1309
    const/4 v1, -0x1

    #@22
    return v1
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
    .line 966
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
    .line 967
    :catch_0
    move-exception v0

    #@9
    .line 968
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Could not get user list"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 969
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 3
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
    .line 1181
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
    .line 1182
    :catch_0
    move-exception v0

    #@8
    .line 1183
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not get user list"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1184
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 774
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
    .line 786
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    .line 787
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    .line 786
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 788
    :catch_0
    move-exception v0

    #@c
    .line 789
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Could not check user restrictions"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 790
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isAdminUser()Z
    .locals 2

    #@0
    .prologue
    .line 582
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 583
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

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

.method public isGuestUser()Z
    .locals 2

    #@0
    .prologue
    .line 607
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 608
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
    .locals 3

    #@0
    .prologue
    .line 594
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
    .line 595
    :catch_0
    move-exception v0

    #@8
    .line 596
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not check if user is limited "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 597
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public isManagedProfile()Z
    .locals 2

    #@0
    .prologue
    .line 620
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 621
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

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

.method public isSystemUser()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 573
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
    .line 561
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    .line 562
    const-string/jumbo v1, "com.coffeestainstudios.goatsimulator"

    #@9
    .line 561
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 634
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v1

    #@5
    .line 635
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@8
    move-result v2

    #@9
    const/4 v3, 0x0

    #@a
    .line 634
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 636
    :catch_0
    move-exception v0

    #@10
    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 650
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 651
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x1

    #@9
    .line 650
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 652
    :catch_0
    move-exception v0

    #@f
    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public isUserSwitcherEnabled()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1281
    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    .line 1282
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_0

    #@8
    .line 1283
    return v8

    #@9
    .line 1285
    :cond_0
    const/4 v1, 0x0

    #@a
    .line 1286
    .local v1, "switchableUserCount":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_2

    #@14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/content/pm/UserInfo;

    #@1a
    .line 1287
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 1288
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1291
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v6, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@28
    move-result-object v6

    #@29
    .line 1292
    const-string/jumbo v7, "guest_user_enabled"

    #@2c
    .line 1291
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@2f
    move-result v6

    #@30
    if-ne v6, v5, :cond_3

    #@32
    const/4 v0, 0x1

    #@33
    .line 1293
    .local v0, "guestEnabled":Z
    :goto_1
    if-gt v1, v5, :cond_4

    #@35
    .end local v0    # "guestEnabled":Z
    :goto_2
    return v0

    #@36
    .line 1291
    :cond_3
    const/4 v0, 0x0

    #@37
    .restart local v0    # "guestEnabled":Z
    goto :goto_1

    #@38
    :cond_4
    move v0, v5

    #@39
    .line 1293
    goto :goto_2
.end method

.method public markGuestForDeletion(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 927
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
    .line 928
    :catch_0
    move-exception v0

    #@8
    .line 929
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not mark guest for deletion"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 930
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public removeRestrictions()V
    .locals 3

    #@0
    .prologue
    .line 1386
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1}, Landroid/os/IUserManager;->removeRestrictions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1384
    :goto_0
    return-void

    #@6
    .line 1387
    :catch_0
    move-exception v0

    #@7
    .line 1388
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Could not change restrictions pin"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    goto :goto_0
.end method

.method public removeUser(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1196
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
    .line 1197
    :catch_0
    move-exception v0

    #@8
    .line 1198
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Could not remove user "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1199
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1365
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
    .line 1363
    :goto_0
    return-void

    #@a
    .line 1366
    :catch_0
    move-exception v0

    #@b
    .line 1367
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Could not set application restrictions for user "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_0
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1398
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1396
    :goto_0
    return-void

    #@6
    .line 1399
    :catch_0
    move-exception v0

    #@7
    .line 1400
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Could not set guest restrictions"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    goto :goto_0
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1380
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setUserEnabled(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 944
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 942
    :goto_0
    return-void

    #@6
    .line 945
    :catch_0
    move-exception v0

    #@7
    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Could not enable the profile"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1227
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1225
    :goto_0
    return-void

    #@6
    .line 1228
    :catch_0
    move-exception v0

    #@7
    .line 1229
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Could not set the user icon "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1213
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1211
    :goto_0
    return-void

    #@6
    .line 1214
    :catch_0
    move-exception v0

    #@7
    .line 1215
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Could not set the user name "

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 741
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@7
    .line 742
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;)V

    #@a
    .line 739
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
    .line 760
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
    .line 758
    :goto_0
    return-void

    #@a
    .line 761
    :catch_0
    move-exception v0

    #@b
    .line 762
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Could not set user restriction"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@7
    .line 705
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 720
    :goto_0
    return-void

    #@a
    .line 723
    :catch_0
    move-exception v0

    #@b
    .line 724
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "Could not set user restrictions"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method
