.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;,
        Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbSettingsManager"

.field private static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static synthetic -wrap0(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;
    .locals 1
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/usb/UsbSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/usb/UsbSettingsManager;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    #@2
    .line 72
    const-string/jumbo v1, "/data/system/usb_device_manager.xml"

    #@5
    .line 71
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    #@a
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 83
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@b
    .line 87
    new-instance v1, Ljava/util/HashMap;

    #@d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 86
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@12
    .line 90
    new-instance v1, Ljava/util/HashMap;

    #@14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@17
    .line 89
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@19
    .line 93
    new-instance v1, Ljava/util/HashMap;

    #@1b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1e
    .line 92
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@20
    .line 95
    new-instance v1, Ljava/lang/Object;

    #@22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@27
    .line 495
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    #@29
    invoke-direct {v1, p0, v5}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;)V

    #@2c
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    #@2e
    .line 503
    :try_start_0
    const-string/jumbo v1, "android"

    #@31
    const/4 v2, 0x0

    #@32
    invoke-virtual {p1, v1, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 508
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    #@3a
    .line 509
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@3c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@42
    .line 511
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    #@44
    .line 512
    new-instance v1, Landroid/util/AtomicFile;

    #@46
    new-instance v2, Ljava/io/File;

    #@48
    .line 513
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@4b
    move-result v3

    #@4c
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@4f
    move-result-object v3

    #@50
    .line 514
    const-string/jumbo v4, "usb_device_manager.xml"

    #@53
    .line 512
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@56
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@59
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    #@5b
    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5e
    move-result-object v1

    #@5f
    .line 517
    const v2, 0x1120075

    #@62
    .line 516
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@65
    move-result v1

    #@66
    iput-boolean v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDisablePermissionDialogs:Z

    #@68
    .line 519
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@6a
    monitor-enter v2

    #@6b
    .line 520
    :try_start_1
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@6d
    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_0

    #@73
    .line 521
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->upgradeSingleUserLocked()V

    #@76
    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->readSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    monitor-exit v2

    #@7a
    .line 526
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    #@7c
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@7e
    const/4 v3, 0x1

    #@7f
    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@82
    .line 527
    new-instance v1, Lcom/android/server/usb/MtpNotificationManager;

    #@84
    .line 529
    new-instance v2, Lcom/android/server/usb/UsbSettingsManager$1;

    #@86
    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbSettingsManager$1;-><init>(Lcom/android/server/usb/UsbSettingsManager;)V

    #@89
    .line 527
    invoke-direct {v1, p1, v2}, Lcom/android/server/usb/MtpNotificationManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V

    #@8c
    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    #@8e
    .line 499
    return-void

    #@8f
    .line 504
    :catch_0
    move-exception v0

    #@90
    .line 505
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@92
    const-string/jumbo v2, "Missing android package"

    #@95
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@98
    throw v1

    #@99
    .line 519
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    #@9a
    monitor-exit v2

    #@9b
    throw v1
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@0
    .prologue
    .line 922
    const/4 v0, 0x0

    #@1
    .line 923
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "test$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@17
    .line 924
    .local v1, "test":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {p2, v1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 925
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 926
    const/4 v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 929
    .end local v1    # "test":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_1
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@0
    .prologue
    .line 911
    const/4 v0, 0x0

    #@1
    .line 912
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "test$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@17
    .line 913
    .local v1, "test":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {p2, v1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 914
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 915
    const/4 v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 918
    .end local v1    # "test":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_1
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1186
    const/4 v0, 0x0

    #@1
    .line 1187
    .local v0, "cleared":Z
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 1188
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 1190
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@e
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    .line 1191
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@18
    if-ge v1, v4, :cond_1

    #@1a
    .line 1192
    aget-object v2, v3, v1

    #@1c
    .line 1193
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 1194
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 1195
    const/4 v0, 0x1

    #@2e
    .line 1191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1199
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@33
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 1201
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@3b
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@3e
    move-result-object v4

    #@3f
    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    .line 1202
    .restart local v3    # "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@44
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    #@45
    if-ge v1, v4, :cond_3

    #@47
    .line 1203
    aget-object v2, v3, v1

    #@49
    .line 1204
    .restart local v2    # "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@4b
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_2

    #@55
    .line 1205
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@57
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    .line 1206
    const/4 v0, 0x1

    #@5b
    .line 1202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_1

    #@5e
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_3
    monitor-exit v5

    #@5f
    .line 1210
    return v0

    #@60
    .line 1187
    :catchall_0
    move-exception v4

    #@61
    monitor-exit v5

    #@62
    throw v4
.end method

.method private static createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;
    .locals 2
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 1248
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1249
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "device"

    #@b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 1250
    const/high16 v1, 0x10000000

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 1251
    return-object v0
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 722
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 723
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    .line 724
    const/16 v6, 0x80

    #@9
    .line 723
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@c
    move-result-object v4

    #@d
    .line 725
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    .line 726
    .local v0, "count":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 727
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@1a
    .line 728
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-direct {p0, v3, v5, v6, p1}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 729
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 726
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 732
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 707
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 708
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    .line 709
    const/16 v6, 0x80

    #@9
    .line 708
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@c
    move-result-object v4

    #@d
    .line 710
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    .line 711
    .local v0, "count":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 712
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@1a
    .line 713
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-direct {p0, v3, v5, p1, v6}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 714
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 711
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 717
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v2
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 969
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 971
    const/4 v1, 0x0

    #@4
    .line 974
    .local v1, "changed":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6
    .line 975
    const/16 v7, 0x81

    #@8
    .line 974
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v4

    #@c
    .line 981
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 982
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    #@10
    monitor-exit v6

    #@11
    return-void

    #@12
    .line 976
    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@13
    .line 977
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string/jumbo v5, "UsbSettingsManager"

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, "handlePackageUpdate could not find package "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    monitor-exit v6

    #@2e
    .line 978
    return-void

    #@2f
    .line 983
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v3, 0x0

    #@30
    .local v3, "i":I
    :goto_0
    :try_start_3
    array-length v5, v0

    #@31
    if-ge v3, v5, :cond_3

    #@33
    .line 985
    aget-object v5, v0, v3

    #@35
    .line 986
    const-string/jumbo v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    #@38
    .line 985
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 987
    const/4 v1, 0x1

    #@3f
    .line 989
    :cond_1
    aget-object v5, v0, v3

    #@41
    .line 990
    const-string/jumbo v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    #@44
    .line 989
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_2

    #@4a
    .line 991
    const/4 v1, 0x1

    #@4b
    .line 983
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 995
    :cond_3
    if-eqz v1, :cond_4

    #@50
    .line 996
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    :cond_4
    monitor-exit v6

    #@54
    .line 968
    return-void

    #@55
    .line 969
    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v5

    #@56
    monitor-exit v6

    #@57
    throw v5
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "metaDataName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 934
    const/4 v4, 0x0

    #@1
    .line 935
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    #@2
    .line 938
    .local v0, "changed":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4
    invoke-virtual {p2, v6, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v4

    #@8
    .line 939
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1

    #@a
    const/4 v6, 0x0

    #@b
    .line 961
    if-eqz v4, :cond_0

    #@d
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@10
    .line 939
    :cond_0
    return v6

    #@11
    .line 941
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@14
    .line 942
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@17
    move-result v6

    #@18
    const/4 v7, 0x1

    #@19
    if-eq v6, v7, :cond_5

    #@1b
    .line 943
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 944
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "usb-device"

    #@22
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_4

    #@28
    .line 945
    invoke-static {v4}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@2b
    move-result-object v3

    #@2c
    .line 946
    .local v3, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-direct {p0, p1, v3}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_2

    #@32
    .line 947
    const/4 v0, 0x1

    #@33
    .line 956
    .end local v3    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 958
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@38
    .line 959
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "UsbSettingsManager"

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "Unable to load component info "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    .line 961
    if-eqz v4, :cond_3

    #@58
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@5b
    .line 963
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v0

    #@5c
    .line 950
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string/jumbo v6, "usb-accessory"

    #@5f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_2

    #@65
    .line 951
    invoke-static {v4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@68
    move-result-object v2

    #@69
    .line 952
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_2

    #@6f
    .line 953
    const/4 v0, 0x1

    #@70
    goto :goto_1

    #@71
    .line 961
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_3

    #@73
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@76
    goto :goto_2

    #@77
    .line 960
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v6

    #@78
    .line 961
    if-eqz v4, :cond_6

    #@7a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@7d
    .line 960
    :cond_6
    throw v6
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "metaDataName"    # Ljava/lang/String;
    .param p3, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p4, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 671
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    .line 673
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    #@5
    .line 675
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    invoke-virtual {v0, v6, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@a
    move-result-object v4

    #@b
    .line 676
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1

    #@d
    .line 677
    const-string/jumbo v6, "UsbSettingsManager"

    #@10
    new-instance v7, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v8, "no meta-data for "

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 701
    if-eqz v4, :cond_0

    #@29
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@2c
    .line 678
    :cond_0
    return v9

    #@2d
    .line 681
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@30
    .line 682
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@33
    move-result v6

    #@34
    if-eq v6, v7, :cond_7

    #@36
    .line 683
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 684
    .local v5, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_3

    #@3c
    const-string/jumbo v6, "usb-device"

    #@3f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_3

    #@45
    .line 685
    invoke-static {v4}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@48
    move-result-object v3

    #@49
    .line 686
    .local v3, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {v3, p3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_5

    #@4f
    .line 701
    if-eqz v4, :cond_2

    #@51
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@54
    .line 687
    :cond_2
    return v7

    #@55
    .line 690
    .end local v3    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_3
    if-eqz p4, :cond_5

    #@57
    :try_start_2
    const-string/jumbo v6, "usb-accessory"

    #@5a
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_5

    #@60
    .line 691
    invoke-static {v4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@63
    move-result-object v2

    #@64
    .line 692
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    move-result v6

    #@68
    if-eqz v6, :cond_5

    #@6a
    .line 701
    if-eqz v4, :cond_4

    #@6c
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@6f
    .line 693
    :cond_4
    return v7

    #@70
    .line 696
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_5
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 698
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@75
    .line 699
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "UsbSettingsManager"

    #@78
    new-instance v7, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v8, "Unable to load component info "

    #@80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@93
    .line 701
    if-eqz v4, :cond_6

    #@95
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@98
    .line 703
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    return v9

    #@99
    .line 701
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7
    if-eqz v4, :cond_6

    #@9b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@9e
    goto :goto_1

    #@9f
    .line 700
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v6

    #@a0
    .line 701
    if-eqz v4, :cond_8

    #@a2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@a5
    .line 700
    :cond_8
    throw v6
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    const/4 v4, 0x0

    #@1
    .line 540
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@4
    move-result v0

    #@5
    .line 541
    .local v0, "count":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@8
    .line 542
    const-string/jumbo v5, "package"

    #@b
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_2

    #@15
    .line 543
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 547
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1c
    .line 548
    const-string/jumbo v5, "usb-device"

    #@1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_3

    #@29
    .line 549
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@2c
    move-result-object v2

    #@2d
    .line 550
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 555
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@35
    .line 538
    return-void

    #@36
    .line 541
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 551
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "usb-accessory"

    #@3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_1

    #@46
    .line 552
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@49
    move-result-object v1

    #@4a
    .line 553
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@4c
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    goto :goto_1
.end method

.method private readSettingsLocked()V
    .locals 7

    #@0
    .prologue
    .line 600
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    #@5
    .line 601
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    #@a
    .line 603
    const/4 v3, 0x0

    #@b
    .line 605
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    #@d
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@10
    move-result-object v3

    #@11
    .line 606
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@14
    move-result-object v2

    #@15
    .line 607
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@17
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1e
    .line 609
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@21
    .line 610
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@24
    move-result v5

    #@25
    const/4 v6, 0x1

    #@26
    if-eq v5, v6, :cond_1

    #@28
    .line 611
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 612
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "preference"

    #@2f
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 613
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 618
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3a
    .line 624
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 597
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    #@3e
    .line 615
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 620
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@43
    .line 621
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "UsbSettingsManager"

    #@46
    const-string/jumbo v6, "error reading settings file, deleting to start fresh"

    #@49
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 622
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    #@4e
    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 624
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@54
    goto :goto_1

    #@55
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :cond_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@58
    goto :goto_1

    #@59
    .line 623
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    #@5a
    .line 624
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5d
    .line 623
    throw v5
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1046
    .local v3, "uid":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6
    const/4 v7, 0x0

    #@7
    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v0

    #@b
    .line 1047
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@d
    if-eq v6, v3, :cond_0

    #@f
    .line 1048
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "package "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1049
    const-string/jumbo v8, " does not match caller\'s uid "

    #@24
    .line 1048
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 1051
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@35
    .line 1052
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "package "

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    const-string/jumbo v8, " not found"

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v6

    #@56
    .line 1055
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@59
    move-result-wide v4

    #@5a
    .line 1056
    .local v4, "identity":J
    const-string/jumbo v6, "com.android.systemui"

    #@5d
    .line 1057
    const-string/jumbo v7, "com.android.systemui.usb.UsbPermissionActivity"

    #@60
    .line 1056
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@63
    .line 1058
    const/high16 v6, 0x10000000

    #@65
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@68
    .line 1059
    const-string/jumbo v6, "android.intent.extra.INTENT"

    #@6b
    invoke-virtual {p1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@6e
    .line 1060
    const-string/jumbo v6, "package"

    #@71
    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@74
    .line 1061
    const-string/jumbo v6, "android.intent.extra.UID"

    #@77
    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@7a
    .line 1063
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@7c
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    #@7e
    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@81
    .line 1067
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 1041
    :goto_0
    return-void

    #@85
    .line 1064
    :catch_1
    move-exception v1

    #@86
    .line 1065
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string/jumbo v6, "UsbSettingsManager"

    #@89
    const-string/jumbo v7, "unable to start UsbPermissionActivity"

    #@8c
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8f
    .line 1067
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@92
    goto :goto_0

    #@93
    .line 1066
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v6

    #@94
    .line 1067
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@97
    .line 1066
    throw v6
.end method

.method private resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 753
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/usb/UsbSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 756
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@9
    new-instance v4, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@b
    invoke-direct {v4, p2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    #@e
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v3, "defaultPackage":Ljava/lang/String;
    monitor-exit v1

    #@15
    .line 760
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move-object v1, p1

    #@18
    move-object v4, p2

    #@19
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    #@1c
    .line 749
    return-void

    #@1d
    .line 752
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "defaultPackage"    # Ljava/lang/String;
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p5, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 804
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    .line 807
    .local v1, "count":I
    if-nez v1, :cond_1

    #@6
    .line 808
    if-eqz p5, :cond_0

    #@8
    .line 809
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 810
    .local v8, "uri":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@11
    move-result v9

    #@12
    if-lez v9, :cond_0

    #@14
    .line 813
    new-instance v3, Landroid/content/Intent;

    #@16
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@19
    .line 814
    .local v3, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v9, "com.android.systemui"

    #@1c
    .line 815
    const-string/jumbo v10, "com.android.systemui.usb.UsbAccessoryUriActivity"

    #@1f
    .line 814
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 816
    const/high16 v9, 0x10000000

    #@24
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@27
    .line 817
    const-string/jumbo v9, "accessory"

    #@2a
    move-object/from16 v0, p5

    #@2c
    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2f
    .line 818
    const-string/jumbo v9, "uri"

    #@32
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@35
    .line 820
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@37
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    #@39
    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 828
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@3d
    .line 821
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v8    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@3e
    .line 822
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v9, "UsbSettingsManager"

    #@41
    const-string/jumbo v10, "unable to start UsbAccessoryUriActivity"

    #@44
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0

    #@48
    .line 831
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@49
    .line 832
    .local v2, "defaultRI":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    #@4a
    if-ne v1, v9, :cond_3

    #@4c
    if-nez p3, :cond_3

    #@4e
    .line 835
    const/4 v9, 0x0

    #@4f
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v6

    #@53
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@55
    .line 836
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@57
    if-eqz v9, :cond_2

    #@59
    .line 837
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5b
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5d
    if-eqz v9, :cond_2

    #@5f
    .line 838
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@61
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@63
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    #@65
    and-int/lit8 v9, v9, 0x1

    #@67
    if-eqz v9, :cond_2

    #@69
    .line 839
    move-object v2, v6

    #@6a
    .line 842
    .end local v2    # "defaultRI":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-boolean v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mDisablePermissionDialogs:Z

    #@6c
    if-eqz v9, :cond_3

    #@6e
    .line 844
    const/4 v9, 0x0

    #@6f
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v6

    #@73
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@75
    .line 845
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@77
    if-eqz v9, :cond_3

    #@79
    .line 846
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7b
    iget-object p3, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@7d
    .line 851
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-nez v2, :cond_4

    #@7f
    if-eqz p3, :cond_4

    #@81
    .line 853
    const/4 v5, 0x0

    #@82
    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_4

    #@84
    .line 854
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v6

    #@88
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@8a
    .line 855
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8c
    if-eqz v9, :cond_6

    #@8e
    .line 856
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@90
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@92
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v9

    #@96
    .line 855
    if-eqz v9, :cond_6

    #@98
    .line 857
    move-object v2, v6

    #@99
    .line 863
    .end local v5    # "i":I
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-eqz v2, :cond_8

    #@9b
    .line 865
    if-eqz p4, :cond_7

    #@9d
    .line 866
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9f
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a1
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a3
    move-object/from16 v0, p4

    #@a5
    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    #@a8
    .line 874
    :cond_5
    :goto_2
    :try_start_1
    new-instance v9, Landroid/content/ComponentName;

    #@aa
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@ac
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@ae
    .line 875
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b0
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@b2
    .line 874
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b5
    .line 873
    invoke-virtual {p1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b8
    .line 876
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@ba
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    #@bc
    invoke-virtual {v9, p1, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@bf
    .line 803
    :goto_3
    return-void

    #@c0
    .line 853
    .restart local v5    # "i":I
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@c2
    goto :goto_1

    #@c3
    .line 867
    .end local v5    # "i":I
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    if-eqz p5, :cond_5

    #@c5
    .line 868
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c7
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c9
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@cb
    move-object/from16 v0, p5

    #@cd
    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    #@d0
    goto :goto_2

    #@d1
    .line 877
    :catch_1
    move-exception v4

    #@d2
    .line 878
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v9, "UsbSettingsManager"

    #@d5
    const-string/jumbo v10, "startActivity failed"

    #@d8
    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@db
    goto :goto_3

    #@dc
    .line 881
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    new-instance v7, Landroid/content/Intent;

    #@de
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    #@e1
    .line 882
    .local v7, "resolverIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    #@e3
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@e6
    .line 884
    const/4 v9, 0x1

    #@e7
    if-ne v1, v9, :cond_a

    #@e9
    .line 886
    const-string/jumbo v9, "com.android.systemui"

    #@ec
    .line 887
    const-string/jumbo v10, "com.android.systemui.usb.UsbConfirmActivity"

    #@ef
    .line 886
    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@f2
    .line 888
    const-string/jumbo v10, "rinfo"

    #@f5
    const/4 v9, 0x0

    #@f6
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f9
    move-result-object v9

    #@fa
    check-cast v9, Landroid/os/Parcelable;

    #@fc
    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@ff
    .line 890
    if-eqz p4, :cond_9

    #@101
    .line 891
    const-string/jumbo v9, "device"

    #@104
    move-object/from16 v0, p4

    #@106
    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@109
    .line 903
    :goto_4
    :try_start_2
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@10b
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    #@10d
    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    #@110
    goto :goto_3

    #@111
    .line 904
    :catch_2
    move-exception v4

    #@112
    .line 905
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v9, "UsbSettingsManager"

    #@115
    new-instance v10, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v11, "unable to start activity "

    #@11d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v10

    #@121
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v10

    #@125
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v10

    #@129
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12c
    goto :goto_3

    #@12d
    .line 893
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_9
    const-string/jumbo v9, "accessory"

    #@130
    move-object/from16 v0, p5

    #@132
    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@135
    goto :goto_4

    #@136
    .line 897
    :cond_a
    const-string/jumbo v9, "com.android.systemui"

    #@139
    .line 898
    const-string/jumbo v10, "com.android.systemui.usb.UsbResolverActivity"

    #@13c
    .line 897
    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@13f
    .line 899
    const-string/jumbo v9, "rlist"

    #@142
    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@145
    .line 900
    const-string/jumbo v9, "android.intent.extra.INTENT"

    #@148
    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14b
    goto :goto_4
.end method

.method private upgradeSingleUserLocked()V
    .locals 8

    #@0
    .prologue
    .line 563
    sget-object v6, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    #@2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 564
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@d
    .line 565
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@f
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@12
    .line 567
    const/4 v2, 0x0

    #@13
    .line 569
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@15
    sget-object v6, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    #@17
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 570
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1d
    move-result-object v4

    #@1e
    .line 571
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@20
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@27
    .line 573
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2a
    .line 574
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@2d
    move-result v6

    #@2e
    const/4 v7, 0x1

    #@2f
    if-eq v6, v7, :cond_2

    #@31
    .line 575
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 576
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "preference"

    #@38
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_1

    #@3e
    .line 577
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@41
    goto :goto_0

    #@42
    .line 582
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@43
    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    #@44
    .line 583
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "UsbSettingsManager"

    #@47
    const-string/jumbo v7, "Failed to read single-user settings"

    #@4a
    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 587
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@50
    .line 590
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    #@53
    .line 593
    sget-object v6, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    #@55
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@58
    .line 562
    :cond_0
    return-void

    #@59
    .line 579
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    goto :goto_0

    #@5d
    .line 584
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@5e
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v2, v3

    #@5f
    .line 585
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v6, "UsbSettingsManager"

    #@62
    const-string/jumbo v7, "Failed to read single-user settings"

    #@65
    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@68
    .line 587
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6b
    goto :goto_2

    #@6c
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6f
    move-object v2, v3

    #@70
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    #@71
    .line 586
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v6

    #@72
    .line 587
    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 586
    throw v6

    #@76
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    #@77
    move-object v2, v3

    #@78
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    #@79
    .line 582
    .local v2, "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    #@7a
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@7b
    .line 584
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    #@7c
    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_3
.end method

.method private writeSettingsLocked()V
    .locals 9

    #@0
    .prologue
    .line 631
    const/4 v4, 0x0

    #@1
    .line 633
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v4

    #@7
    .line 635
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 636
    .local v5, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v5, v4, v6}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 637
    const/4 v6, 0x1

    #@16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v6

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1e
    .line 638
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@21
    const/4 v7, 0x1

    #@22
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@25
    .line 639
    const-string/jumbo v6, "settings"

    #@28
    const/4 v7, 0x0

    #@29
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c
    .line 641
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@2e
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@31
    move-result-object v6

    #@32
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v3

    #@36
    .local v3, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_1

    #@3c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@42
    .line 642
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const-string/jumbo v6, "preference"

    #@45
    const/4 v7, 0x0

    #@46
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 643
    const-string/jumbo v7, "package"

    #@4c
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@4e
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v6

    #@52
    check-cast v6, Ljava/lang/String;

    #@54
    const/4 v8, 0x0

    #@55
    invoke-virtual {v5, v8, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 644
    invoke-virtual {v2, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@5b
    .line 645
    const-string/jumbo v6, "preference"

    #@5e
    const/4 v7, 0x0

    #@5f
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    goto :goto_0

    #@63
    .line 659
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .end local v3    # "filter$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    :catch_0
    move-exception v0

    #@64
    .line 660
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "UsbSettingsManager"

    #@67
    const-string/jumbo v7, "Failed to write settings"

    #@6a
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 661
    if-eqz v4, :cond_0

    #@6f
    .line 662
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    #@71
    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@74
    .line 628
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    #@75
    .line 648
    .restart local v3    # "filter$iterator":Ljava/util/Iterator;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@77
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@7a
    move-result-object v6

    #@7b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v3

    #@7f
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v6

    #@83
    if-eqz v6, :cond_2

    #@85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v1

    #@89
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@8b
    .line 649
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const-string/jumbo v6, "preference"

    #@8e
    const/4 v7, 0x0

    #@8f
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@92
    .line 650
    const-string/jumbo v7, "package"

    #@95
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@97
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    move-result-object v6

    #@9b
    check-cast v6, Ljava/lang/String;

    #@9d
    const/4 v8, 0x0

    #@9e
    invoke-virtual {v5, v8, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a1
    .line 651
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@a4
    .line 652
    const-string/jumbo v6, "preference"

    #@a7
    const/4 v7, 0x0

    #@a8
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ab
    goto :goto_2

    #@ac
    .line 655
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_2
    const-string/jumbo v6, "settings"

    #@af
    const/4 v7, 0x0

    #@b0
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b3
    .line 656
    invoke-virtual {v5}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    #@b6
    .line 658
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    #@b8
    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@bb
    goto :goto_1
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .locals 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 776
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    #@5
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 777
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "accessory"

    #@b
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 778
    const/high16 v0, 0x10000000

    #@10
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 782
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v4

    #@16
    .line 783
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    #@19
    move-result-object v2

    #@1a
    .line 786
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@1c
    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@1e
    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    #@21
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .local v3, "defaultPackage":Ljava/lang/String;
    monitor-exit v4

    #@28
    .line 789
    const/4 v4, 0x0

    #@29
    move-object v0, p0

    #@2a
    move-object v5, p1

    #@2b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    #@2e
    .line 775
    return-void

    #@2f
    .line 782
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v4

    #@31
    throw v0
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 796
    new-instance v0, Landroid/content/Intent;

    #@7
    .line 797
    const-string/jumbo v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    #@a
    .line 796
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 798
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "accessory"

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13
    .line 799
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    #@15
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1a
    .line 792
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1037
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "User has not given permission to accessory "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1035
    :cond_0
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 1030
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1031
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "User has not given permission to device "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1029
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1179
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearPackageDefaultsLocked(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1180
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1177
    return-void

    #@e
    .line 1178
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 736
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 739
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@9
    .line 741
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    #@b
    invoke-static {v1, p1}, Lcom/android/server/usb/MtpNotificationManager;->shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 743
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    #@13
    invoke-virtual {v1, p1}, Lcom/android/server/usb/MtpNotificationManager;->showNotification(Landroid/hardware/usb/UsbDevice;)V

    #@16
    .line 735
    :goto_0
    return-void

    #@17
    .line 745
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    #@1a
    goto :goto_0
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 767
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    #@e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 768
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "device"

    #@14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@17
    .line 770
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    #@19
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1b
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1e
    .line 772
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    #@20
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v1, v2}, Lcom/android/server/usb/MtpNotificationManager;->hideNotification(I)V

    #@27
    .line 763
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 13
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1215
    iget-object v11, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 1216
    :try_start_0
    const-string/jumbo v10, "Device permissions:"

    #@6
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1217
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v10

    #@f
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v4

    #@13
    .local v4, "deviceName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v10

    #@17
    if-eqz v10, :cond_1

    #@19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Ljava/lang/String;

    #@1f
    .line 1218
    .local v3, "deviceName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v12, "  "

    #@27
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v10

    #@2b
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v10

    #@2f
    const-string/jumbo v12, ": "

    #@32
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v10

    #@36
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v10

    #@3a
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 1219
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v9

    #@43
    check-cast v9, Landroid/util/SparseBooleanArray;

    #@45
    .line 1220
    .local v9, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    #@48
    move-result v2

    #@49
    .line 1221
    .local v2, "count":I
    const/4 v8, 0x0

    #@4a
    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_0

    #@4c
    .line 1222
    new-instance v10, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@54
    move-result v12

    #@55
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v12

    #@59
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v10

    #@5d
    const-string/jumbo v12, " "

    #@60
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v10

    #@68
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 1221
    add-int/lit8 v8, v8, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 1224
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 1215
    .end local v2    # "count":I
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "deviceName$iterator":Ljava/util/Iterator;
    .end local v8    # "i":I
    .end local v9    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v10

    #@73
    monitor-exit v11

    #@74
    throw v10

    #@75
    .line 1226
    .restart local v4    # "deviceName$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string/jumbo v10, "Accessory permissions:"

    #@78
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 1227
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@80
    move-result-object v10

    #@81
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v1

    #@85
    .local v1, "accessory$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v10

    #@89
    if-eqz v10, :cond_3

    #@8b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    #@91
    .line 1228
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    new-instance v10, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v12, "  "

    #@99
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v10

    #@a1
    const-string/jumbo v12, ": "

    #@a4
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v10

    #@a8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 1229
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@b1
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    move-result-object v9

    #@b5
    check-cast v9, Landroid/util/SparseBooleanArray;

    #@b7
    .line 1230
    .restart local v9    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    #@ba
    move-result v2

    #@bb
    .line 1231
    .restart local v2    # "count":I
    const/4 v8, 0x0

    #@bc
    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v2, :cond_2

    #@be
    .line 1232
    new-instance v10, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@c6
    move-result v12

    #@c7
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ca
    move-result-object v12

    #@cb
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v10

    #@cf
    const-string/jumbo v12, " "

    #@d2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v10

    #@d6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v10

    #@da
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@dd
    .line 1231
    add-int/lit8 v8, v8, 0x1

    #@df
    goto :goto_3

    #@e0
    .line 1234
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@e3
    goto :goto_2

    #@e4
    .line 1236
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v2    # "count":I
    .end local v8    # "i":I
    .end local v9    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_3
    const-string/jumbo v10, "Device preferences:"

    #@e7
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 1237
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@ec
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@ef
    move-result-object v10

    #@f0
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f3
    move-result-object v7

    #@f4
    .local v7, "filter$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@f7
    move-result v10

    #@f8
    if-eqz v10, :cond_4

    #@fa
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fd
    move-result-object v6

    #@fe
    check-cast v6, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@100
    .line 1238
    .local v6, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    new-instance v10, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v12, "  "

    #@108
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v10

    #@10c
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v10

    #@110
    const-string/jumbo v12, ": "

    #@113
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v12

    #@117
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@119
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    move-result-object v10

    #@11d
    check-cast v10, Ljava/lang/String;

    #@11f
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v10

    #@123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v10

    #@127
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12a
    goto :goto_4

    #@12b
    .line 1240
    .end local v6    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_4
    const-string/jumbo v10, "Accessory preferences:"

    #@12e
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@131
    .line 1241
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@133
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@136
    move-result-object v10

    #@137
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13a
    move-result-object v7

    #@13b
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@13e
    move-result v10

    #@13f
    if-eqz v10, :cond_5

    #@141
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@144
    move-result-object v5

    #@145
    check-cast v5, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@147
    .line 1242
    .local v5, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    new-instance v10, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v12, "  "

    #@14f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v10

    #@153
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v10

    #@157
    const-string/jumbo v12, ": "

    #@15a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v12

    #@15e
    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@160
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@163
    move-result-object v10

    #@164
    check-cast v10, Ljava/lang/String;

    #@166
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v10

    #@16a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v10

    #@16e
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@171
    goto :goto_5

    #@172
    .end local v5    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_5
    monitor-exit v11

    #@173
    .line 1214
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1159
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/SparseBooleanArray;

    #@b
    .line 1161
    .local v0, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    #@d
    .line 1162
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@f
    .end local v0    # "uidList":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x1

    #@10
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@13
    .line 1163
    .restart local v0    # "uidList":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 1165
    :cond_0
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 1158
    return-void

    #@1e
    .line 1159
    .end local v0    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1147
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1148
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 1149
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/util/SparseBooleanArray;

    #@f
    .line 1150
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_0

    #@11
    .line 1151
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@13
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    #@14
    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@17
    .line 1152
    .restart local v1    # "uidList":Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@19
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1154
    :cond_0
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v3

    #@21
    .line 1146
    return-void

    #@22
    .line 1147
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1170
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    monitor-exit v1

    #@11
    return v2

    #@12
    .line 1172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@14
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    monitor-exit v1

    #@1f
    return v2

    #@20
    .line 1173
    :cond_1
    const/4 v0, 0x0

    #@21
    monitor-exit v1

    #@22
    return v0

    #@23
    .line 1170
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 1016
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1017
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    .line 1018
    .local v0, "uid":I
    const/16 v2, 0x3e8

    #@9
    if-eq v0, v2, :cond_0

    #@b
    iget-boolean v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDisablePermissionDialogs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1019
    :cond_0
    const/4 v2, 0x1

    #@10
    monitor-exit v3

    #@11
    return v2

    #@12
    .line 1021
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    #@14
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/util/SparseBooleanArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 1022
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_2

    #@1c
    .line 1023
    const/4 v2, 0x0

    #@1d
    monitor-exit v3

    #@1e
    return v2

    #@1f
    .line 1025
    :cond_2
    :try_start_2
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    move-result v2

    #@23
    monitor-exit v3

    #@24
    return v2

    #@25
    .line 1016
    .end local v0    # "uid":I
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 1002
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1003
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    .line 1004
    .local v0, "uid":I
    const/16 v2, 0x3e8

    #@9
    if-eq v0, v2, :cond_0

    #@b
    iget-boolean v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDisablePermissionDialogs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1005
    :cond_0
    const/4 v2, 0x1

    #@10
    monitor-exit v3

    #@11
    return v2

    #@12
    .line 1007
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    #@14
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/util/SparseBooleanArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 1008
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_2

    #@20
    .line 1009
    const/4 v2, 0x0

    #@21
    monitor-exit v3

    #@22
    return v2

    #@23
    .line 1011
    :cond_2
    :try_start_2
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    move-result v2

    #@27
    monitor-exit v3

    #@28
    return v2

    #@29
    .line 1002
    .end local v0    # "uid":I
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1092
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    .line 1095
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1096
    const-string/jumbo v2, "accessory"

    #@e
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@11
    .line 1097
    const-string/jumbo v2, "permission"

    #@14
    const/4 v3, 0x1

    #@15
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@18
    .line 1099
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1103
    :goto_0
    return-void

    #@1f
    .line 1106
    :cond_0
    const-string/jumbo v2, "accessory"

    #@22
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@25
    .line 1107
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    #@28
    .line 1091
    return-void

    #@29
    .line 1100
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1072
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    .line 1075
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1076
    const-string/jumbo v2, "device"

    #@e
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@11
    .line 1077
    const-string/jumbo v2, "permission"

    #@14
    const/4 v3, 0x1

    #@15
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@18
    .line 1079
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1083
    :goto_0
    return-void

    #@1f
    .line 1087
    :cond_0
    const-string/jumbo v2, "device"

    #@22
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@25
    .line 1088
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    #@28
    .line 1071
    return-void

    #@29
    .line 1080
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1129
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@2
    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    #@5
    .line 1130
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v0, 0x0

    #@6
    .line 1131
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 1132
    if-nez p2, :cond_3

    #@b
    .line 1133
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_2

    #@13
    const/4 v0, 0x1

    #@14
    .line 1140
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@16
    .line 1141
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit v3

    #@1a
    .line 1128
    return-void

    #@1b
    .line 1133
    :cond_2
    const/4 v0, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 1135
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_4

    #@29
    const/4 v0, 0x0

    #@2a
    .line 1136
    :goto_1
    if-eqz v0, :cond_0

    #@2c
    .line 1137
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    #@2e
    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 1131
    :catchall_0
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2

    #@35
    .line 1135
    :cond_4
    const/4 v0, 0x1

    #@36
    goto :goto_1
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1111
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@2
    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    #@5
    .line 1112
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v0, 0x0

    #@6
    .line 1113
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 1114
    if-nez p2, :cond_3

    #@b
    .line 1115
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_2

    #@13
    const/4 v0, 0x1

    #@14
    .line 1122
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@16
    .line 1123
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit v3

    #@1a
    .line 1110
    return-void

    #@1b
    .line 1115
    :cond_2
    const/4 v0, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 1117
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_4

    #@29
    const/4 v0, 0x0

    #@2a
    .line 1118
    :goto_1
    if-eqz v0, :cond_0

    #@2c
    .line 1119
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    #@2e
    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 1113
    :catchall_0
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2

    #@35
    .line 1117
    :cond_4
    const/4 v0, 0x1

    #@36
    goto :goto_1
.end method
