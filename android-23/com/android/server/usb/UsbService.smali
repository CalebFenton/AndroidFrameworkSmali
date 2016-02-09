.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;,
        Lcom/android/server/usb/UsbService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 106
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    #@4
    .line 88
    new-instance v2, Ljava/lang/Object;

    #@6
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    #@b
    .line 93
    new-instance v2, Landroid/util/SparseArray;

    #@d
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@12
    .line 132
    new-instance v2, Lcom/android/server/usb/UsbService$1;

    #@14
    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    #@17
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@19
    .line 107
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@1b
    .line 109
    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    #@1d
    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    #@20
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@22
    .line 111
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@27
    move-result-object v1

    #@28
    .line 112
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.usb.host"

    #@2b
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_0

    #@31
    .line 113
    new-instance v2, Lcom/android/server/usb/UsbHostManager;

    #@33
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@35
    invoke-direct {v2, p1, v3}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    #@38
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@3a
    .line 115
    :cond_0
    new-instance v2, Ljava/io/File;

    #@3c
    const-string/jumbo v3, "/sys/class/android_usb"

    #@3f
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@42
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_1

    #@48
    .line 116
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager;

    #@4a
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@4c
    invoke-direct {v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    #@4f
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@51
    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@53
    if-nez v2, :cond_2

    #@55
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@57
    if-eqz v2, :cond_3

    #@59
    .line 119
    :cond_2
    new-instance v2, Lcom/android/server/usb/UsbPortManager;

    #@5b
    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    #@5e
    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@60
    .line 122
    :cond_3
    const/4 v2, 0x0

    #@61
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    #@64
    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    #@66
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@69
    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    #@6b
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    #@6e
    .line 126
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    #@71
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@74
    .line 127
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    #@77
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7a
    .line 128
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@7d
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@80
    .line 129
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@82
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@84
    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@87
    .line 106
    return-void
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/usb/UsbSettingsManager;

    #@b
    .line 98
    .local v0, "settings":Lcom/android/server/usb/UsbSettingsManager;
    if-nez v0, :cond_0

    #@d
    .line 99
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    #@f
    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@11
    new-instance v3, Landroid/os/UserHandle;

    #@13
    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@16
    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    #@19
    .line 100
    .restart local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    monitor-exit v2

    #@1f
    .line 102
    return-object v0

    #@20
    .line 96
    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method private static isSupportedCurrentFunction(Ljava/lang/String;)Z
    .locals 2
    .param p0, "function"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 307
    if-nez p0, :cond_0

    #@3
    return v1

    #@4
    .line 309
    :cond_0
    const-string/jumbo v0, "none"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 316
    :cond_1
    return v1

    #@e
    .line 309
    :cond_2
    const-string/jumbo v0, "audio_source"

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    const-string/jumbo v0, "midi"

    #@1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_1

    #@20
    const-string/jumbo v0, "mtp"

    #@23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    const-string/jumbo v0, "ptp"

    #@2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_1

    #@32
    const-string/jumbo v0, "rndis"

    #@35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_1

    #@3b
    .line 319
    const/4 v0, 0x0

    #@3c
    return v0
.end method

.method private static final removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 599
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private setCurrentUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@3
    move-result-object v0

    #@4
    .line 154
    .local v0, "userSettings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 155
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbHostManager;->setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V

    #@d
    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 158
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@13
    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V

    #@16
    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 331
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    #@e
    .line 329
    return-void
.end method

.method public bootCompleted()V
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 178
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@6
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    #@9
    .line 176
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 280
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearDefaults(Ljava/lang/String;)V

    #@10
    .line 278
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 3

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 343
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    #@e
    .line 341
    return-void
.end method

.method public denyUsbDebugging()V
    .locals 3

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 337
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    #@e
    .line 335
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 389
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v17, "android.permission.DUMP"

    #@7
    const-string/jumbo v18, "UsbService"

    #@a
    move-object/from16 v0, v17

    #@c
    move-object/from16 v1, v18

    #@e
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 391
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    #@13
    const-string/jumbo v2, "  "

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-direct {v10, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@1b
    .line 392
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1e
    move-result-wide v12

    #@1f
    .line 394
    .local v12, "ident":J
    if-eqz p3, :cond_0

    #@21
    :try_start_0
    move-object/from16 v0, p3

    #@23
    array-length v2, v0

    #@24
    if-nez v2, :cond_4

    #@26
    .line 395
    :cond_0
    const-string/jumbo v2, "USB Manager State:"

    #@29
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 396
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2f
    .line 397
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 398
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@39
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3c
    .line 400
    :cond_1
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@40
    if-eqz v2, :cond_2

    #@42
    .line 401
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@46
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@49
    .line 403
    :cond_2
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@4d
    if-eqz v2, :cond_3

    #@4f
    .line 404
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@53
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@56
    .line 406
    :cond_3
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@5a
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@5d
    .line 408
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    #@61
    move-object/from16 v17, v0

    #@63
    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    .line 409
    const/4 v11, 0x0

    #@65
    .local v11, "i":I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    #@67
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@69
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6c
    move-result v2

    #@6d
    if-ge v11, v2, :cond_6

    #@6f
    .line 410
    move-object/from16 v0, p0

    #@71
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@73
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    #@76
    move-result v16

    #@77
    .line 411
    .local v16, "userId":I
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    #@7b
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7e
    move-result-object v14

    #@7f
    check-cast v14, Lcom/android/server/usb/UsbSettingsManager;

    #@81
    .line 412
    .local v14, "settings":Lcom/android/server/usb/UsbSettingsManager;
    new-instance v2, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v18, "Settings for user "

    #@89
    move-object/from16 v0, v18

    #@8b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    move/from16 v0, v16

    #@91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    const-string/jumbo v18, ":"

    #@98
    move-object/from16 v0, v18

    #@9a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@a5
    .line 413
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@a8
    .line 414
    invoke-virtual {v14, v10}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@ab
    .line 415
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@ae
    .line 409
    add-int/lit8 v11, v11, 0x1

    #@b0
    goto :goto_0

    #@b1
    .line 394
    .end local v11    # "i":I
    .end local v14    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    .end local v16    # "userId":I
    :cond_4
    :try_start_2
    const-string/jumbo v2, "-a"

    #@b4
    const/16 v17, 0x0

    #@b6
    aget-object v17, p3, v17

    #@b8
    move-object/from16 v0, v17

    #@ba
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v2

    #@be
    if-nez v2, :cond_0

    #@c0
    .line 418
    move-object/from16 v0, p3

    #@c2
    array-length v2, v0

    #@c3
    const/16 v17, 0x4

    #@c5
    move/from16 v0, v17

    #@c7
    if-ne v2, v0, :cond_d

    #@c9
    const-string/jumbo v2, "set-port-roles"

    #@cc
    const/16 v17, 0x0

    #@ce
    aget-object v17, p3, v17

    #@d0
    move-object/from16 v0, v17

    #@d2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v2

    #@d6
    if-eqz v2, :cond_d

    #@d8
    .line 419
    const/4 v2, 0x1

    #@d9
    aget-object v3, p3, v2

    #@db
    .line 421
    .local v3, "portId":Ljava/lang/String;
    const/4 v2, 0x2

    #@dc
    aget-object v2, p3, v2

    #@de
    const-string/jumbo v17, "source"

    #@e1
    move-object/from16 v0, v17

    #@e3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v17

    #@e7
    if-eqz v17, :cond_7

    #@e9
    .line 423
    const/4 v6, 0x1

    #@ea
    .line 436
    .local v6, "powerRole":I
    :goto_1
    const/4 v2, 0x3

    #@eb
    aget-object v2, p3, v2

    #@ed
    const-string/jumbo v17, "host"

    #@f0
    move-object/from16 v0, v17

    #@f2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v17

    #@f6
    if-eqz v17, :cond_a

    #@f8
    .line 438
    const/4 v8, 0x1

    #@f9
    .line 450
    .local v8, "dataRole":I
    :goto_2
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@fd
    if-eqz v2, :cond_5

    #@ff
    .line 451
    move-object/from16 v0, p0

    #@101
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@103
    invoke-virtual {v2, v3, v6, v8, v10}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    #@106
    .line 457
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@109
    .line 458
    move-object/from16 v0, p0

    #@10b
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@10d
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@110
    .line 594
    .end local v3    # "portId":Ljava/lang/String;
    .end local v6    # "powerRole":I
    .end local v8    # "dataRole":I
    :cond_5
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@113
    .line 388
    return-void

    #@114
    .restart local v11    # "i":I
    :cond_6
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@115
    goto :goto_3

    #@116
    .line 593
    .end local v11    # "i":I
    :catchall_0
    move-exception v2

    #@117
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11a
    .line 593
    throw v2

    #@11b
    .line 408
    .restart local v11    # "i":I
    :catchall_1
    move-exception v2

    #@11c
    :try_start_4
    monitor-exit v17

    #@11d
    throw v2

    #@11e
    .line 421
    .end local v11    # "i":I
    .restart local v3    # "portId":Ljava/lang/String;
    :cond_7
    const-string/jumbo v17, "sink"

    #@121
    move-object/from16 v0, v17

    #@123
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@126
    move-result v17

    #@127
    if-eqz v17, :cond_8

    #@129
    .line 426
    const/4 v6, 0x2

    #@12a
    .line 427
    .restart local v6    # "powerRole":I
    goto :goto_1

    #@12b
    .line 421
    .end local v6    # "powerRole":I
    :cond_8
    const-string/jumbo v17, "no-power"

    #@12e
    move-object/from16 v0, v17

    #@130
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v2

    #@134
    if-eqz v2, :cond_9

    #@136
    .line 429
    const/4 v6, 0x0

    #@137
    .line 430
    .restart local v6    # "powerRole":I
    goto :goto_1

    #@138
    .line 432
    .end local v6    # "powerRole":I
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v17, "Invalid power role: "

    #@140
    move-object/from16 v0, v17

    #@142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v2

    #@146
    const/16 v17, 0x2

    #@148
    aget-object v17, p3, v17

    #@14a
    move-object/from16 v0, v17

    #@14c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v2

    #@150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v2

    #@154
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@157
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15a
    .line 433
    return-void

    #@15b
    .line 436
    .restart local v6    # "powerRole":I
    :cond_a
    :try_start_5
    const-string/jumbo v17, "device"

    #@15e
    move-object/from16 v0, v17

    #@160
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v17

    #@164
    if-eqz v17, :cond_b

    #@166
    .line 441
    const/4 v8, 0x2

    #@167
    .line 442
    .restart local v8    # "dataRole":I
    goto :goto_2

    #@168
    .line 436
    .end local v8    # "dataRole":I
    :cond_b
    const-string/jumbo v17, "no-data"

    #@16b
    move-object/from16 v0, v17

    #@16d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@170
    move-result v2

    #@171
    if-eqz v2, :cond_c

    #@173
    .line 444
    const/4 v8, 0x0

    #@174
    .line 445
    .restart local v8    # "dataRole":I
    goto :goto_2

    #@175
    .line 447
    .end local v8    # "dataRole":I
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v17, "Invalid data role: "

    #@17d
    move-object/from16 v0, v17

    #@17f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v2

    #@183
    const/16 v17, 0x3

    #@185
    aget-object v17, p3, v17

    #@187
    move-object/from16 v0, v17

    #@189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v2

    #@18d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v2

    #@191
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@194
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@197
    .line 448
    return-void

    #@198
    .line 460
    .end local v3    # "portId":Ljava/lang/String;
    .end local v6    # "powerRole":I
    :cond_d
    :try_start_6
    move-object/from16 v0, p3

    #@19a
    array-length v2, v0

    #@19b
    const/16 v17, 0x3

    #@19d
    move/from16 v0, v17

    #@19f
    if-ne v2, v0, :cond_12

    #@1a1
    const-string/jumbo v2, "add-port"

    #@1a4
    const/16 v17, 0x0

    #@1a6
    aget-object v17, p3, v17

    #@1a8
    move-object/from16 v0, v17

    #@1aa
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ad
    move-result v2

    #@1ae
    if-eqz v2, :cond_12

    #@1b0
    .line 461
    const/4 v2, 0x1

    #@1b1
    aget-object v3, p3, v2

    #@1b3
    .line 463
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    #@1b4
    aget-object v2, p3, v2

    #@1b6
    const-string/jumbo v17, "ufp"

    #@1b9
    move-object/from16 v0, v17

    #@1bb
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1be
    move-result v17

    #@1bf
    if-eqz v17, :cond_e

    #@1c1
    .line 465
    const/4 v15, 0x2

    #@1c2
    .line 480
    .local v15, "supportedModes":I
    :goto_4
    move-object/from16 v0, p0

    #@1c4
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@1c6
    if-eqz v2, :cond_5

    #@1c8
    .line 481
    move-object/from16 v0, p0

    #@1ca
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@1cc
    invoke-virtual {v2, v3, v15, v10}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    #@1cf
    .line 482
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1d2
    .line 483
    move-object/from16 v0, p0

    #@1d4
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@1d6
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@1d9
    goto/16 :goto_3

    #@1db
    .line 463
    .end local v15    # "supportedModes":I
    :cond_e
    const-string/jumbo v17, "dfp"

    #@1de
    move-object/from16 v0, v17

    #@1e0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e3
    move-result v17

    #@1e4
    if-eqz v17, :cond_f

    #@1e6
    .line 468
    const/4 v15, 0x1

    #@1e7
    .line 469
    .restart local v15    # "supportedModes":I
    goto :goto_4

    #@1e8
    .line 463
    .end local v15    # "supportedModes":I
    :cond_f
    const-string/jumbo v17, "dual"

    #@1eb
    move-object/from16 v0, v17

    #@1ed
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f0
    move-result v17

    #@1f1
    if-eqz v17, :cond_10

    #@1f3
    .line 471
    const/4 v15, 0x3

    #@1f4
    .line 472
    .restart local v15    # "supportedModes":I
    goto :goto_4

    #@1f5
    .line 463
    .end local v15    # "supportedModes":I
    :cond_10
    const-string/jumbo v17, "none"

    #@1f8
    move-object/from16 v0, v17

    #@1fa
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fd
    move-result v2

    #@1fe
    if-eqz v2, :cond_11

    #@200
    .line 474
    const/4 v15, 0x0

    #@201
    .line 475
    .restart local v15    # "supportedModes":I
    goto :goto_4

    #@202
    .line 477
    .end local v15    # "supportedModes":I
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    #@204
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v17, "Invalid mode: "

    #@20a
    move-object/from16 v0, v17

    #@20c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v2

    #@210
    const/16 v17, 0x2

    #@212
    aget-object v17, p3, v17

    #@214
    move-object/from16 v0, v17

    #@216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v2

    #@21a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21d
    move-result-object v2

    #@21e
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@221
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@224
    .line 478
    return-void

    #@225
    .line 485
    .end local v3    # "portId":Ljava/lang/String;
    :cond_12
    :try_start_7
    move-object/from16 v0, p3

    #@227
    array-length v2, v0

    #@228
    const/16 v17, 0x5

    #@22a
    move/from16 v0, v17

    #@22c
    if-ne v2, v0, :cond_1c

    #@22e
    const-string/jumbo v2, "connect-port"

    #@231
    const/16 v17, 0x0

    #@233
    aget-object v17, p3, v17

    #@235
    move-object/from16 v0, v17

    #@237
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23a
    move-result v2

    #@23b
    if-eqz v2, :cond_1c

    #@23d
    .line 486
    const/4 v2, 0x1

    #@23e
    aget-object v3, p3, v2

    #@240
    .line 488
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    #@241
    aget-object v2, p3, v2

    #@243
    const-string/jumbo v17, "?"

    #@246
    move-object/from16 v0, v17

    #@248
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@24b
    move-result v5

    #@24c
    .line 489
    .local v5, "canChangeMode":Z
    if-eqz v5, :cond_13

    #@24e
    const/4 v2, 0x2

    #@24f
    aget-object v2, p3, v2

    #@251
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    #@254
    move-result-object v2

    #@255
    :goto_5
    const-string/jumbo v17, "ufp"

    #@258
    move-object/from16 v0, v17

    #@25a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25d
    move-result v17

    #@25e
    if-eqz v17, :cond_14

    #@260
    .line 491
    const/4 v4, 0x2

    #@261
    .line 501
    .local v4, "mode":I
    :goto_6
    const/4 v2, 0x3

    #@262
    aget-object v2, p3, v2

    #@264
    const-string/jumbo v17, "?"

    #@267
    move-object/from16 v0, v17

    #@269
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@26c
    move-result v7

    #@26d
    .line 502
    .local v7, "canChangePowerRole":Z
    if-eqz v7, :cond_16

    #@26f
    const/4 v2, 0x3

    #@270
    aget-object v2, p3, v2

    #@272
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    #@275
    move-result-object v2

    #@276
    :goto_7
    const-string/jumbo v17, "source"

    #@279
    move-object/from16 v0, v17

    #@27b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27e
    move-result v17

    #@27f
    if-eqz v17, :cond_17

    #@281
    .line 504
    const/4 v6, 0x1

    #@282
    .line 514
    .restart local v6    # "powerRole":I
    :goto_8
    const/4 v2, 0x4

    #@283
    aget-object v2, p3, v2

    #@285
    const-string/jumbo v17, "?"

    #@288
    move-object/from16 v0, v17

    #@28a
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@28d
    move-result v9

    #@28e
    .line 515
    .local v9, "canChangeDataRole":Z
    if-eqz v9, :cond_19

    #@290
    const/4 v2, 0x4

    #@291
    aget-object v2, p3, v2

    #@293
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    #@296
    move-result-object v2

    #@297
    :goto_9
    const-string/jumbo v17, "host"

    #@29a
    move-object/from16 v0, v17

    #@29c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29f
    move-result v17

    #@2a0
    if-eqz v17, :cond_1a

    #@2a2
    .line 517
    const/4 v8, 0x1

    #@2a3
    .line 526
    .restart local v8    # "dataRole":I
    :goto_a
    move-object/from16 v0, p0

    #@2a5
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@2a7
    if-eqz v2, :cond_5

    #@2a9
    .line 527
    move-object/from16 v0, p0

    #@2ab
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@2ad
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    #@2b0
    .line 529
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2b3
    .line 530
    move-object/from16 v0, p0

    #@2b5
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@2b7
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@2ba
    goto/16 :goto_3

    #@2bc
    .line 489
    .end local v4    # "mode":I
    .end local v6    # "powerRole":I
    .end local v7    # "canChangePowerRole":Z
    .end local v8    # "dataRole":I
    .end local v9    # "canChangeDataRole":Z
    :cond_13
    const/4 v2, 0x2

    #@2bd
    aget-object v2, p3, v2

    #@2bf
    goto :goto_5

    #@2c0
    :cond_14
    const-string/jumbo v17, "dfp"

    #@2c3
    move-object/from16 v0, v17

    #@2c5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c8
    move-result v2

    #@2c9
    if-eqz v2, :cond_15

    #@2cb
    .line 494
    const/4 v4, 0x1

    #@2cc
    .line 495
    .restart local v4    # "mode":I
    goto :goto_6

    #@2cd
    .line 497
    .end local v4    # "mode":I
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    #@2cf
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d2
    const-string/jumbo v17, "Invalid mode: "

    #@2d5
    move-object/from16 v0, v17

    #@2d7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v2

    #@2db
    const/16 v17, 0x2

    #@2dd
    aget-object v17, p3, v17

    #@2df
    move-object/from16 v0, v17

    #@2e1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v2

    #@2e5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e8
    move-result-object v2

    #@2e9
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@2ec
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2ef
    .line 498
    return-void

    #@2f0
    .line 502
    .restart local v4    # "mode":I
    .restart local v7    # "canChangePowerRole":Z
    :cond_16
    const/4 v2, 0x3

    #@2f1
    :try_start_8
    aget-object v2, p3, v2

    #@2f3
    goto :goto_7

    #@2f4
    :cond_17
    const-string/jumbo v17, "sink"

    #@2f7
    move-object/from16 v0, v17

    #@2f9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2fc
    move-result v2

    #@2fd
    if-eqz v2, :cond_18

    #@2ff
    .line 507
    const/4 v6, 0x2

    #@300
    .line 508
    .restart local v6    # "powerRole":I
    goto :goto_8

    #@301
    .line 510
    .end local v6    # "powerRole":I
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    #@303
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@306
    const-string/jumbo v17, "Invalid power role: "

    #@309
    move-object/from16 v0, v17

    #@30b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30e
    move-result-object v2

    #@30f
    const/16 v17, 0x3

    #@311
    aget-object v17, p3, v17

    #@313
    move-object/from16 v0, v17

    #@315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v2

    #@319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31c
    move-result-object v2

    #@31d
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@320
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@323
    .line 511
    return-void

    #@324
    .line 515
    .restart local v6    # "powerRole":I
    .restart local v9    # "canChangeDataRole":Z
    :cond_19
    const/4 v2, 0x4

    #@325
    :try_start_9
    aget-object v2, p3, v2

    #@327
    goto/16 :goto_9

    #@329
    :cond_1a
    const-string/jumbo v17, "device"

    #@32c
    move-object/from16 v0, v17

    #@32e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@331
    move-result v2

    #@332
    if-eqz v2, :cond_1b

    #@334
    .line 520
    const/4 v8, 0x2

    #@335
    .line 521
    .restart local v8    # "dataRole":I
    goto/16 :goto_a

    #@337
    .line 523
    .end local v8    # "dataRole":I
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@339
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33c
    const-string/jumbo v17, "Invalid data role: "

    #@33f
    move-object/from16 v0, v17

    #@341
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@344
    move-result-object v2

    #@345
    const/16 v17, 0x4

    #@347
    aget-object v17, p3, v17

    #@349
    move-object/from16 v0, v17

    #@34b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34e
    move-result-object v2

    #@34f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@352
    move-result-object v2

    #@353
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@356
    .line 594
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@359
    .line 524
    return-void

    #@35a
    .line 532
    .end local v3    # "portId":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v5    # "canChangeMode":Z
    .end local v6    # "powerRole":I
    .end local v7    # "canChangePowerRole":Z
    .end local v9    # "canChangeDataRole":Z
    :cond_1c
    :try_start_a
    move-object/from16 v0, p3

    #@35c
    array-length v2, v0

    #@35d
    const/16 v17, 0x2

    #@35f
    move/from16 v0, v17

    #@361
    if-ne v2, v0, :cond_1d

    #@363
    const-string/jumbo v2, "disconnect-port"

    #@366
    const/16 v17, 0x0

    #@368
    aget-object v17, p3, v17

    #@36a
    move-object/from16 v0, v17

    #@36c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36f
    move-result v2

    #@370
    if-eqz v2, :cond_1d

    #@372
    .line 533
    const/4 v2, 0x1

    #@373
    aget-object v3, p3, v2

    #@375
    .line 534
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@377
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@379
    if-eqz v2, :cond_5

    #@37b
    .line 535
    move-object/from16 v0, p0

    #@37d
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@37f
    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    #@382
    .line 536
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@385
    .line 537
    move-object/from16 v0, p0

    #@387
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@389
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@38c
    goto/16 :goto_3

    #@38e
    .line 539
    .end local v3    # "portId":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p3

    #@390
    array-length v2, v0

    #@391
    const/16 v17, 0x2

    #@393
    move/from16 v0, v17

    #@395
    if-ne v2, v0, :cond_1e

    #@397
    const-string/jumbo v2, "remove-port"

    #@39a
    const/16 v17, 0x0

    #@39c
    aget-object v17, p3, v17

    #@39e
    move-object/from16 v0, v17

    #@3a0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a3
    move-result v2

    #@3a4
    if-eqz v2, :cond_1e

    #@3a6
    .line 540
    const/4 v2, 0x1

    #@3a7
    aget-object v3, p3, v2

    #@3a9
    .line 541
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ab
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@3ad
    if-eqz v2, :cond_5

    #@3af
    .line 542
    move-object/from16 v0, p0

    #@3b1
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@3b3
    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3b6
    .line 543
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3b9
    .line 544
    move-object/from16 v0, p0

    #@3bb
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@3bd
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3c0
    goto/16 :goto_3

    #@3c2
    .line 546
    .end local v3    # "portId":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p3

    #@3c4
    array-length v2, v0

    #@3c5
    const/16 v17, 0x1

    #@3c7
    move/from16 v0, v17

    #@3c9
    if-ne v2, v0, :cond_1f

    #@3cb
    const-string/jumbo v2, "reset"

    #@3ce
    const/16 v17, 0x0

    #@3d0
    aget-object v17, p3, v17

    #@3d2
    move-object/from16 v0, v17

    #@3d4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d7
    move-result v2

    #@3d8
    if-eqz v2, :cond_1f

    #@3da
    .line 547
    move-object/from16 v0, p0

    #@3dc
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@3de
    if-eqz v2, :cond_5

    #@3e0
    .line 548
    move-object/from16 v0, p0

    #@3e2
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@3e4
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3e7
    .line 549
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3ea
    .line 550
    move-object/from16 v0, p0

    #@3ec
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@3ee
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3f1
    goto/16 :goto_3

    #@3f3
    .line 552
    :cond_1f
    move-object/from16 v0, p3

    #@3f5
    array-length v2, v0

    #@3f6
    const/16 v17, 0x1

    #@3f8
    move/from16 v0, v17

    #@3fa
    if-ne v2, v0, :cond_20

    #@3fc
    const-string/jumbo v2, "ports"

    #@3ff
    const/16 v17, 0x0

    #@401
    aget-object v17, p3, v17

    #@403
    move-object/from16 v0, v17

    #@405
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@408
    move-result v2

    #@409
    if-eqz v2, :cond_20

    #@40b
    .line 553
    move-object/from16 v0, p0

    #@40d
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@40f
    if-eqz v2, :cond_5

    #@411
    .line 554
    move-object/from16 v0, p0

    #@413
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@415
    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@418
    goto/16 :goto_3

    #@41a
    .line 557
    :cond_20
    const-string/jumbo v2, "Dump current USB state or issue command:"

    #@41d
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@420
    .line 558
    const-string/jumbo v2, "  ports"

    #@423
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@426
    .line 559
    const-string/jumbo v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    #@429
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@42c
    .line 560
    const-string/jumbo v2, "  add-port <id> <ufp|dfp|dual|none>"

    #@42f
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@432
    .line 561
    const-string/jumbo v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    #@435
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@438
    .line 562
    const-string/jumbo v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    #@43b
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@43e
    .line 563
    const-string/jumbo v2, "  disconnect-port <id>"

    #@441
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@444
    .line 564
    const-string/jumbo v2, "  remove-port <id>"

    #@447
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@44a
    .line 565
    const-string/jumbo v2, "  reset"

    #@44d
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@450
    .line 566
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@453
    .line 567
    const-string/jumbo v2, "Example USB type C port role switch:"

    #@456
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@459
    .line 568
    const-string/jumbo v2, "  dumpsys usb set-port-roles \"default\" source device"

    #@45c
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@45f
    .line 569
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@462
    .line 570
    const-string/jumbo v2, "Example USB type C port simulation with full capabilities:"

    #@465
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@468
    .line 571
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" dual"

    #@46b
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@46e
    .line 572
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    #@471
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@474
    .line 573
    const-string/jumbo v2, "  dumpsys usb ports"

    #@477
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@47a
    .line 574
    const-string/jumbo v2, "  dumpsys usb disconnect-port \"matrix\""

    #@47d
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@480
    .line 575
    const-string/jumbo v2, "  dumpsys usb remove-port \"matrix\""

    #@483
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@486
    .line 576
    const-string/jumbo v2, "  dumpsys usb reset"

    #@489
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@48c
    .line 577
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@48f
    .line 578
    const-string/jumbo v2, "Example USB type C port where only power role can be changed:"

    #@492
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@495
    .line 579
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" dual"

    #@498
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@49b
    .line 580
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    #@49e
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4a1
    .line 581
    const-string/jumbo v2, "  dumpsys usb reset"

    #@4a4
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4a7
    .line 582
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@4aa
    .line 583
    const-string/jumbo v2, "Example USB OTG port where id pin determines function:"

    #@4ad
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b0
    .line 584
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" dual"

    #@4b3
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b6
    .line 585
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" dfp source host"

    #@4b9
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4bc
    .line 586
    const-string/jumbo v2, "  dumpsys usb reset"

    #@4bf
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4c2
    .line 587
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@4c5
    .line 588
    const-string/jumbo v2, "Example USB device-only port:"

    #@4c8
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4cb
    .line 589
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" ufp"

    #@4ce
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4d1
    .line 590
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    #@4d4
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4d7
    .line 591
    const-string/jumbo v2, "  dumpsys usb reset"

    #@4da
    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@4dd
    goto/16 :goto_3
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 203
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 204
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@7
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 206
    :cond_0
    return-object v1
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "devices"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 186
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    #@9
    .line 184
    :cond_0
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 5
    .param p1, "portId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 360
    const-string/jumbo v3, "portId must not be null"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 361
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v4, "android.permission.MANAGE_USB"

    #@c
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 365
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@15
    if-eqz v3, :cond_0

    #@17
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@19
    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 367
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 365
    return-object v2

    #@21
    .line 366
    :catchall_0
    move-exception v2

    #@22
    .line 367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 366
    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 348
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.MANAGE_USB"

    #@6
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 352
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@f
    if-eqz v3, :cond_0

    #@11
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@13
    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v2

    #@17
    .line 354
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 352
    return-object v2

    #@1b
    .line 353
    :catchall_0
    move-exception v2

    #@1c
    .line 354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 353
    throw v2
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_USB"

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 267
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@c
    move-result v0

    #@d
    .line 268
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    #@14
    .line 265
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_USB"

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 260
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@c
    move-result v0

    #@d
    .line 261
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    #@14
    .line 258
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 240
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 241
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 274
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 234
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 235
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 285
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 286
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 214
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 216
    :cond_0
    return-object v1
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 193
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 196
    :cond_0
    return-object v1
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 253
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 254
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    #@b
    .line 252
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 247
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    #@b
    .line 245
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 229
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    #@10
    .line 227
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 291
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 293
    invoke-static {p1}, Lcom/android/server/usb/UsbService;->isSupportedCurrentFunction(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 294
    const-string/jumbo v0, "UsbService"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Caller of setCurrentFunction() requested unsupported USB function: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 296
    const-string/jumbo p1, "none"

    #@2c
    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 300
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@32
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    #@35
    .line 290
    return-void

    #@36
    .line 302
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@38
    const-string/jumbo v1, "USB device mode not supported"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 223
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    #@10
    .line 221
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 5
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 373
    const-string/jumbo v2, "portId must not be null"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 374
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    #@a
    .line 375
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v3, "android.permission.MANAGE_USB"

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 379
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 380
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@1c
    const/4 v3, 0x0

    #@1d
    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 383
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 372
    return-void

    #@24
    .line 382
    :catchall_0
    move-exception v2

    #@25
    .line 383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 382
    throw v2
.end method

.method public setUsbDataUnlocked(Z)V
    .locals 3
    .param p1, "unlocked"    # Z

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_USB"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 325
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDataUnlocked(Z)V

    #@e
    .line 323
    return-void
.end method

.method public systemReady()V
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@2
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    #@5
    .line 165
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 166
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    #@e
    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 169
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    #@14
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    #@17
    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 172
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    #@20
    .line 162
    :cond_2
    return-void
.end method
