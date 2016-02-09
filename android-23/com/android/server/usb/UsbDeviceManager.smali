.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$1;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = false

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_USB_DATA_UNLOCKED:I = 0x6

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x7

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String; = "UsbDeviceManager"

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"


# instance fields
.field private mAccessoryModeRequestTime:J

.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAdbEnabled:Z

.field private mAudioSourceEnabled:Z

.field private mBootCompleted:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private final mLock:Ljava/lang/Object;

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUseUsbNotification:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbDeviceManager;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "usbFunctions"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    const-wide/16 v4, 0x0

    #@5
    iput-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    #@7
    .line 128
    new-instance v3, Ljava/lang/Object;

    #@9
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    #@e
    .line 162
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$1;

    #@10
    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    #@13
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    #@15
    .line 179
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    #@17
    .line 180
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@19
    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c
    move-result-object v3

    #@1d
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    #@1f
    .line 182
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24
    move-result-object v1

    #@25
    .line 183
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.hardware.usb.accessory"

    #@28
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@2b
    move-result v3

    #@2c
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    #@2e
    .line 184
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    #@31
    .line 186
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->readOemUsbOverrideConfig()V

    #@34
    .line 188
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@36
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    #@41
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@43
    .line 190
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_0

    #@49
    .line 192
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    #@4c
    .line 195
    :cond_0
    const-string/jumbo v3, "ro.adb.secure"

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@53
    move-result v2

    #@54
    .line 196
    .local v2, "secureAdbEnabled":Z
    const-string/jumbo v3, "1"

    #@57
    const-string/jumbo v4, "vold.decrypt"

    #@5a
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    .line 197
    .local v0, "dataEncrypted":Z
    if-eqz v2, :cond_1

    #@64
    if-eqz v0, :cond_2

    #@66
    .line 178
    :cond_1
    :goto_0
    return-void

    #@67
    .line 198
    :cond_2
    new-instance v3, Lcom/android/server/usb/UsbDebuggingManager;

    #@69
    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    #@6c
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@6e
    goto :goto_0
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "usbFunctions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 896
    if-eqz p1, :cond_0

    #@2
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    #@4
    if-nez v4, :cond_1

    #@6
    :cond_0
    return-object p1

    #@7
    .line 898
    :cond_1
    const-string/jumbo v4, "ro.bootmode"

    #@a
    const-string/jumbo v5, "unknown"

    #@d
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 900
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    #@13
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/List;

    #@19
    .line 901
    .local v1, "overrides":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_3

    #@1b
    .line 902
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "pair$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/util/Pair;

    #@2b
    .line 903
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2d
    check-cast v4, Ljava/lang/String;

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 904
    const-string/jumbo v5, "UsbDeviceManager"

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "OEM USB override: "

    #@40
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@46
    check-cast v4, Ljava/lang/String;

    #@48
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    const-string/jumbo v6, " ==> "

    #@4f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@55
    check-cast v4, Ljava/lang/String;

    #@57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 905
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@64
    check-cast v4, Ljava/lang/String;

    #@66
    return-object v4

    #@67
    .line 910
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pair$iterator":Ljava/util/Iterator;
    :cond_3
    return-object p1
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 203
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private static initRndisAddress()V
    .locals 16

    #@0
    .prologue
    const/4 v15, 0x4

    #@1
    const/4 v14, 0x3

    #@2
    const/4 v13, 0x1

    #@3
    const/4 v12, 0x2

    #@4
    const/4 v11, 0x0

    #@5
    .line 278
    const/4 v0, 0x6

    #@6
    .line 279
    .local v0, "ETH_ALEN":I
    const/4 v7, 0x6

    #@7
    new-array v2, v7, [I

    #@9
    .line 281
    .local v2, "address":[I
    aput v12, v2, v11

    #@b
    .line 283
    const-string/jumbo v7, "ro.serialno"

    #@e
    const-string/jumbo v8, "1234567890ABCDEF"

    #@11
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 284
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    .line 286
    .local v6, "serialLength":I
    const/4 v4, 0x0

    #@1a
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    #@1c
    .line 287
    rem-int/lit8 v7, v4, 0x5

    #@1e
    add-int/lit8 v7, v7, 0x1

    #@20
    aget v8, v2, v7

    #@22
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v9

    #@26
    xor-int/2addr v8, v9

    #@27
    aput v8, v2, v7

    #@29
    .line 286
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 289
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2e
    const-string/jumbo v8, "%02X:%02X:%02X:%02X:%02X:%02X"

    #@31
    const/4 v9, 0x6

    #@32
    new-array v9, v9, [Ljava/lang/Object;

    #@34
    .line 290
    aget v10, v2, v11

    #@36
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v10

    #@3a
    aput-object v10, v9, v11

    #@3c
    aget v10, v2, v13

    #@3e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v10

    #@42
    aput-object v10, v9, v13

    #@44
    aget v10, v2, v12

    #@46
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v10

    #@4a
    aput-object v10, v9, v12

    #@4c
    aget v10, v2, v14

    #@4e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v10

    #@52
    aput-object v10, v9, v14

    #@54
    aget v10, v2, v15

    #@56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v10

    #@5a
    aput-object v10, v9, v15

    #@5c
    const/4 v10, 0x5

    #@5d
    aget v10, v2, v10

    #@5f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v10

    #@63
    const/4 v11, 0x5

    #@64
    aput-object v10, v9, v11

    #@66
    .line 289
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 292
    .local v1, "addrString":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    #@6d
    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 275
    :goto_1
    return-void

    #@71
    .line 293
    :catch_0
    move-exception v3

    #@72
    .line 294
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "UsbDeviceManager"

    #@75
    const-string/jumbo v8, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    #@78
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    goto :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private readOemUsbOverrideConfig()V
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 874
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v4

    #@7
    .line 875
    const v6, 0x107002e

    #@a
    .line 874
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 877
    .local v1, "configList":[Ljava/lang/String;
    if-eqz v1, :cond_3

    #@10
    .line 878
    array-length v6, v1

    #@11
    move v4, v5

    #@12
    :goto_0
    if-ge v4, v6, :cond_3

    #@14
    aget-object v0, v1, v4

    #@16
    .line 879
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v7, ":"

    #@19
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 880
    .local v2, "items":[Ljava/lang/String;
    array-length v7, v2

    #@1e
    const/4 v8, 0x3

    #@1f
    if-ne v7, v8, :cond_2

    #@21
    .line 881
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    #@23
    if-nez v7, :cond_0

    #@25
    .line 882
    new-instance v7, Ljava/util/HashMap;

    #@27
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@2a
    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    #@2c
    .line 884
    :cond_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    #@2e
    aget-object v8, v2, v5

    #@30
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Ljava/util/List;

    #@36
    .line 885
    .local v3, "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    #@38
    .line 886
    new-instance v3, Ljava/util/LinkedList;

    #@3a
    .end local v3    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    #@3d
    .line 887
    .restart local v3    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    #@3f
    aget-object v8, v2, v5

    #@41
    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 889
    :cond_1
    new-instance v7, Landroid/util/Pair;

    #@46
    const/4 v8, 0x1

    #@47
    aget-object v8, v2, v8

    #@49
    const/4 v9, 0x2

    #@4a
    aget-object v9, v2, v9

    #@4c
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4f
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 878
    .end local v3    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@54
    goto :goto_0

    #@55
    .line 873
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private startAccessoryMode()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 250
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    #@3
    if-nez v3, :cond_0

    #@5
    return-void

    #@6
    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    #@c
    .line 253
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    #@f
    move-result v3

    #@10
    if-ne v3, v5, :cond_3

    #@12
    const/4 v1, 0x1

    #@13
    .line 255
    .local v1, "enableAudio":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    #@15
    if-eqz v3, :cond_5

    #@17
    .line 256
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    #@19
    const/4 v4, 0x0

    #@1a
    aget-object v3, v3, v4

    #@1c
    if-eqz v3, :cond_5

    #@1e
    .line 257
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    #@20
    aget-object v3, v3, v5

    #@22
    if-eqz v3, :cond_4

    #@24
    const/4 v0, 0x1

    #@25
    .line 258
    .local v0, "enableAccessory":Z
    :goto_1
    const/4 v2, 0x0

    #@26
    .line 260
    .local v2, "functions":Ljava/lang/String;
    if-eqz v0, :cond_6

    #@28
    if-eqz v1, :cond_6

    #@2a
    .line 261
    const-string/jumbo v2, "accessory,audio_source"

    #@2d
    .line 269
    .end local v2    # "functions":Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    #@2f
    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@32
    move-result-wide v4

    #@33
    iput-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    #@35
    .line 271
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    #@38
    .line 249
    :cond_2
    return-void

    #@39
    .line 253
    .end local v0    # "enableAccessory":Z
    .end local v1    # "enableAudio":Z
    :cond_3
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "enableAudio":Z
    goto :goto_0

    #@3b
    .line 257
    :cond_4
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "enableAccessory":Z
    goto :goto_1

    #@3d
    .line 255
    .end local v0    # "enableAccessory":Z
    :cond_5
    const/4 v0, 0x0

    #@3e
    .restart local v0    # "enableAccessory":Z
    goto :goto_1

    #@3f
    .line 263
    .restart local v2    # "functions":Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    #@41
    .line 264
    const-string/jumbo v2, "accessory"

    #@44
    .local v2, "functions":Ljava/lang/String;
    goto :goto_2

    #@45
    .line 265
    .local v2, "functions":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_1

    #@47
    .line 266
    const-string/jumbo v2, "audio_source"

    #@4a
    .local v2, "functions":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 915
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    #@9
    .line 913
    :cond_0
    return-void
.end method

.method public bootCompleted()V
    .locals 2

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    #@6
    .line 233
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    #@0
    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 927
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@6
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    #@9
    .line 925
    return-void

    #@a
    .line 929
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public denyUsbDebugging()V
    .locals 1

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 921
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@6
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    #@9
    .line 919
    :cond_0
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 936
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@9
    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 939
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@12
    .line 934
    :cond_1
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 860
    const-string/jumbo v0, "sys.usb.config"

    #@3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 845
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    #@5
    move-result-object v0

    #@6
    .line 846
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    #@8
    .line 847
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "no accessory attached"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 849
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 851
    const-string/jumbo v3, " does not match current accessory "

    #@27
    .line 850
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 853
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@35
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 855
    .end local v1    # "error":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    #@40
    .line 856
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    #@43
    move-result-object v2

    #@44
    return-object v2
.end method

.method public setCurrentFunctions(Ljava/lang/String;)V
    .locals 2
    .param p1, "functions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 863
    return-void
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    #@0
    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 240
    :try_start_0
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    #@5
    .line 241
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@7
    const/4 v2, 0x5

    #@8
    const/4 v3, 0x0

    #@9
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 238
    return-void

    #@12
    .line 239
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public setUsbDataUnlocked(Z)V
    .locals 2
    .param p1, "unlocked"    # Z

    #@0
    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    #@6
    .line 868
    return-void
.end method

.method public systemReady()V
    .locals 9

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 212
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v7, "notification"

    #@7
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    .line 211
    check-cast v4, Landroid/app/NotificationManager;

    #@d
    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    #@f
    .line 216
    const/4 v1, 0x0

    #@10
    .line 217
    .local v1, "massStorageSupported":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@15
    move-result-object v3

    #@16
    .line 218
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    #@19
    move-result-object v2

    #@1a
    .line 219
    .local v2, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_0

    #@1c
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    #@1f
    move-result v1

    #@20
    .line 220
    .end local v1    # "massStorageSupported":Z
    :goto_0
    if-eqz v1, :cond_1

    #@22
    move v4, v5

    #@23
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    #@25
    .line 224
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    #@27
    .line 225
    const-string/jumbo v7, "adb_enabled"

    #@2a
    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    #@2c
    if-eqz v8, :cond_2

    #@2e
    .line 224
    :goto_2
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 230
    :goto_3
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@33
    const/4 v5, 0x3

    #@34
    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    #@37
    .line 208
    return-void

    #@38
    .line 219
    .restart local v1    # "massStorageSupported":Z
    :cond_0
    const/4 v1, 0x0

    #@39
    goto :goto_0

    #@3a
    .end local v1    # "massStorageSupported":Z
    :cond_1
    move v4, v6

    #@3b
    .line 220
    goto :goto_1

    #@3c
    :cond_2
    move v6, v5

    #@3d
    .line 225
    goto :goto_2

    #@3e
    .line 226
    :catch_0
    move-exception v0

    #@3f
    .line 228
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "UsbDeviceManager"

    #@42
    const-string/jumbo v5, "ADB_ENABLED is restricted."

    #@45
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_3
.end method

.method public updateUserRestrictions()V
    .locals 2

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    #@6
    .line 245
    return-void
.end method
