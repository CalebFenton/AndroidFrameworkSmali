.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1380
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@5
    .line 1379
    return-void
.end method


# virtual methods
.method binderClearCallingIdentity()J
    .locals 2

    #@0
    .prologue
    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method binderGetCallingPid()I
    .locals 1

    #@0
    .prologue
    .line 1484
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method binderGetCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 1480
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method binderGetCallingUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 1488
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method binderIsCallingUidMyUid()Z
    .locals 2

    #@0
    .prologue
    .line 1492
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method binderRestoreCallingIdentity(J)V
    .locals 1
    .param p1, "token"    # J

    #@0
    .prologue
    .line 1476
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3
    .line 1475
    return-void
.end method

.method environmentGetUserSystemDirectory(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1500
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getDevicePolicyFilePathForSystemUser()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1536
    const-string/jumbo v0, "/data/system/"

    #@3
    return-object v0
.end method

.method getIActivityManager()Landroid/app/IActivityManager;
    .locals 1

    #@0
    .prologue
    .line 1422
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getIAudioService()Landroid/media/IAudioService;
    .locals 1

    #@0
    .prologue
    .line 1435
    const-string/jumbo v0, "audio"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method getIBackupManager()Landroid/app/backup/IBackupManager;
    .locals 1

    #@0
    .prologue
    .line 1431
    const-string/jumbo v0, "backup"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 1430
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    .prologue
    .line 1426
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    #@0
    .prologue
    .line 1418
    const-string/jumbo v0, "window"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 1417
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method getMyLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 1464
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    #@0
    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/app/NotificationManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/NotificationManager;

    #@a
    return-object v0
.end method

.method getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    #@0
    .prologue
    .line 1397
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    #@2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    #@8
    return-object v0
.end method

.method getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 1

    #@0
    .prologue
    .line 1405
    const-class v0, Landroid/os/PowerManagerInternal;

    #@2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@8
    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    #@0
    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getTrustManager()Landroid/app/trust/TrustManager;
    .locals 2

    #@0
    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "trust"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/trust/TrustManager;

    #@b
    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 1

    #@0
    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    #@0
    .prologue
    .line 1393
    const-class v0, Landroid/os/UserManagerInternal;

    #@2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/UserManagerInternal;

    #@8
    return-object v0
.end method

.method getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    #@0
    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/net/wifi/WifiManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@a
    return-object v0
.end method

.method newLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    #@0
    .prologue
    .line 1439
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method newOwners()Lcom/android/server/devicepolicy/Owners;
    .locals 4

    #@0
    .prologue
    .line 1384
    new-instance v0, Lcom/android/server/devicepolicy/Owners;

    #@2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    #@9
    move-result-object v2

    #@a
    .line 1385
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    #@d
    move-result-object v3

    #@e
    .line 1384
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/Owners;-><init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;)V

    #@11
    return-object v0
.end method

.method powerManagerGoToSleep(JII)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/os/PowerManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/PowerManager;

    #@a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@d
    .line 1503
    return-void
.end method

.method powerManagerReboot(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/os/PowerManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/PowerManager;

    #@a
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    #@d
    .line 1507
    return-void
.end method

.method registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@9
    .line 1540
    return-void
.end method

.method securityLogGetLoggingEnabledProperty()Z
    .locals 1

    #@0
    .prologue
    .line 1590
    invoke-static {}, Landroid/app/admin/SecurityLog;->getLoggingEnabledProperty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method securityLogIsLoggingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1594
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method securityLogSetLoggingEnabledProperty(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1586
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->setLoggingEnabledProperty(Z)V

    #@3
    .line 1585
    return-void
.end method

.method settingsGlobalGetInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    #@0
    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method settingsGlobalPutInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@9
    .line 1573
    return-void
.end method

.method settingsGlobalPutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    .line 1581
    return-void
.end method

.method settingsGlobalPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@9
    .line 1560
    return-void
.end method

.method settingsSecureGetIntForUser(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method settingsSecurePutInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@9
    .line 1565
    return-void
.end method

.method settingsSecurePutIntForUser(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@9
    .line 1550
    return-void
.end method

.method settingsSecurePutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    .line 1577
    return-void
.end method

.method settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@9
    .line 1555
    return-void
.end method

.method storageManagerIsEncryptable()Z
    .locals 1

    #@0
    .prologue
    .line 1460
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncryptable()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method storageManagerIsEncrypted()Z
    .locals 1

    #@0
    .prologue
    .line 1456
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method storageManagerIsFileBasedEncryptionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1443
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method storageManagerIsNonDefaultBlockEncrypted()Z
    .locals 3

    #@0
    .prologue
    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1449
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v2

    #@8
    .line 1451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b
    .line 1449
    return v2

    #@c
    .line 1450
    :catchall_0
    move-exception v2

    #@d
    .line 1451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1450
    throw v2
.end method

.method systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1524
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method systemPropertiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1520
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method systemPropertiesGetBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    #@0
    .prologue
    .line 1512
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method systemPropertiesGetLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 1516
    invoke-static {p1, p2, p3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1528
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 1527
    return-void
.end method

.method final userHandleGetCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderGetCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method userManagerIsSplitSystemUser()Z
    .locals 1

    #@0
    .prologue
    .line 1532
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@3
    move-result v0

    #@4
    return v0
.end method
