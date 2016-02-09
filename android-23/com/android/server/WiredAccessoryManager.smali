.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;,
        Lcom/android/server/WiredAccessoryManager$1;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@8
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    #@b
    .line 227
    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    #@d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@15
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    #@17
    .line 90
    const-string/jumbo v1, "power"

    #@1a
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/os/PowerManager;

    #@20
    .line 91
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "WiredAccessoryManager"

    #@23
    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@29
    .line 92
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@2f
    .line 93
    const-string/jumbo v1, "audio"

    #@32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroid/media/AudioManager;

    #@38
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    #@3a
    .line 94
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@3c
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v1

    #@40
    const v2, 0x1120071

    #@43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@46
    move-result v1

    #@47
    .line 96
    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    #@49
    .line 99
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    #@4b
    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    #@4e
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    #@50
    .line 89
    return-void
.end method

.method private onSystemReady()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/16 v3, -0x100

    #@4
    .line 103
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 104
    const/4 v0, 0x0

    #@9
    .line 105
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@b
    const/4 v2, 0x2

    #@c
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    #@f
    move-result v1

    #@10
    if-ne v1, v5, :cond_0

    #@12
    .line 106
    const/4 v0, 0x4

    #@13
    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@15
    const/4 v2, 0x4

    #@16
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    #@19
    move-result v1

    #@1a
    if-ne v1, v5, :cond_1

    #@1c
    .line 109
    or-int/lit8 v0, v0, 0x10

    #@1e
    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@20
    const/4 v2, 0x6

    #@21
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    #@24
    move-result v1

    #@25
    if-ne v1, v5, :cond_2

    #@27
    .line 112
    or-int/lit8 v0, v0, 0x40

    #@29
    .line 114
    :cond_2
    const-wide/16 v2, 0x0

    #@2b
    .line 115
    const/16 v1, 0x54

    #@2d
    .line 114
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    #@30
    .line 118
    .end local v0    # "switchValues":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    #@32
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    #@35
    .line 102
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 7
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 258
    and-int v3, p2, p1

    #@3
    and-int v4, p3, p1

    #@5
    if-eq v3, v4, :cond_1

    #@7
    .line 259
    const/4 v1, 0x0

    #@8
    .line 260
    .local v1, "outDevice":I
    const/4 v0, 0x0

    #@9
    .line 263
    .local v0, "inDevice":I
    and-int v3, p2, p1

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 264
    const/4 v2, 0x1

    #@e
    .line 269
    .local v2, "state":I
    :goto_0
    if-ne p1, v6, :cond_3

    #@10
    .line 270
    const/4 v1, 0x4

    #@11
    .line 271
    const v0, -0x7ffffff0

    #@14
    .line 288
    :goto_1
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "headsetName: "

    #@1e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 289
    if-ne v2, v6, :cond_9

    #@28
    const-string/jumbo v3, " connected"

    #@2b
    .line 288
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 292
    if-eqz v1, :cond_0

    #@38
    .line 293
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    #@3a
    const-string/jumbo v4, ""

    #@3d
    invoke-virtual {v3, v1, v2, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    #@40
    .line 295
    :cond_0
    if-eqz v0, :cond_1

    #@42
    .line 296
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    #@44
    const-string/jumbo v4, ""

    #@47
    invoke-virtual {v3, v0, v2, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 257
    .end local v0    # "inDevice":I
    .end local v1    # "outDevice":I
    .end local v2    # "state":I
    :cond_1
    return-void

    #@4b
    .line 266
    .restart local v0    # "inDevice":I
    .restart local v1    # "outDevice":I
    :cond_2
    const/4 v2, 0x0

    #@4c
    .restart local v2    # "state":I
    goto :goto_0

    #@4d
    .line 272
    :cond_3
    const/4 v3, 0x2

    #@4e
    if-ne p1, v3, :cond_4

    #@50
    .line 273
    const/16 v1, 0x8

    #@52
    goto :goto_1

    #@53
    .line 274
    :cond_4
    const/16 v3, 0x20

    #@55
    if-ne p1, v3, :cond_5

    #@57
    .line 275
    const/high16 v1, 0x20000

    #@59
    goto :goto_1

    #@5a
    .line 276
    :cond_5
    const/4 v3, 0x4

    #@5b
    if-ne p1, v3, :cond_6

    #@5d
    .line 277
    const/16 v1, 0x800

    #@5f
    goto :goto_1

    #@60
    .line 278
    :cond_6
    const/16 v3, 0x8

    #@62
    if-ne p1, v3, :cond_7

    #@64
    .line 279
    const/16 v1, 0x1000

    #@66
    goto :goto_1

    #@67
    .line 280
    :cond_7
    const/16 v3, 0x10

    #@69
    if-ne p1, v3, :cond_8

    #@6b
    .line 281
    const/16 v1, 0x400

    #@6d
    goto :goto_1

    #@6e
    .line 283
    :cond_8
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@70
    new-instance v4, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 284
    return-void

    #@88
    .line 289
    :cond_9
    const-string/jumbo v3, " disconnected"

    #@8b
    goto :goto_2
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 246
    const/16 v0, 0x3f

    #@5
    .line 247
    .local v0, "allHeadsets":I
    const/4 v1, 0x1

    #@6
    .local v1, "curHeadset":I
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 248
    and-int v3, v1, v0

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 249
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 250
    not-int v3, v1

    #@10
    and-int/2addr v0, v3

    #@11
    .line 247
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    :cond_1
    monitor-exit v2

    #@15
    .line 244
    return-void

    #@16
    .line 245
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 2
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    #@0
    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 303
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 304
    and-int/lit8 v1, p1, 0x4

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 305
    const-string/jumbo v1, "SW_HEADPHONE_INSERT "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 307
    :cond_0
    and-int/lit8 v1, p2, 0x10

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 308
    and-int/lit8 v1, p1, 0x10

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 309
    const-string/jumbo v1, "SW_MICROPHONE_INSERT"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 311
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .locals 11
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    #@0
    .prologue
    .line 183
    and-int/lit8 v2, p2, 0x3f

    #@2
    .line 184
    .local v2, "headsetState":I
    and-int/lit8 v5, v2, 0x4

    #@4
    .line 185
    .local v5, "usb_headset_anlg":I
    and-int/lit8 v6, v2, 0x8

    #@6
    .line 186
    .local v6, "usb_headset_dgtl":I
    and-int/lit8 v1, v2, 0x23

    #@8
    .line 187
    .local v1, "h2w_headset":I
    const/4 v0, 0x1

    #@9
    .line 188
    .local v0, "h2wStateChange":Z
    const/4 v4, 0x1

    #@a
    .line 189
    .local v4, "usbStateChange":Z
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@c
    new-instance v8, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v9, "newName="

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    .line 190
    const-string/jumbo v9, " newState="

    #@1f
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    .line 191
    const-string/jumbo v9, " headsetState="

    #@2a
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    .line 192
    const-string/jumbo v9, " prev headsetState="

    #@35
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    .line 192
    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    #@3b
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v8

    #@3f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 194
    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    #@48
    if-ne v7, v2, :cond_0

    #@4a
    .line 195
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@4c
    const-string/jumbo v8, "No state change."

    #@4f
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 196
    return-void

    #@53
    .line 202
    :cond_0
    const/16 v7, 0x23

    #@55
    if-ne v1, v7, :cond_1

    #@57
    .line 203
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@59
    const-string/jumbo v8, "Invalid combination, unsetting h2w flag"

    #@5c
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 204
    const/4 v0, 0x0

    #@60
    .line 208
    :cond_1
    const/4 v7, 0x4

    #@61
    if-ne v5, v7, :cond_2

    #@63
    const/16 v7, 0x8

    #@65
    if-ne v6, v7, :cond_2

    #@67
    .line 209
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@69
    const-string/jumbo v8, "Invalid combination, unsetting usb flag"

    #@6c
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 210
    const/4 v4, 0x0

    #@70
    .line 212
    :cond_2
    if-nez v0, :cond_3

    #@72
    if-eqz v4, :cond_4

    #@74
    .line 217
    :cond_3
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@76
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@79
    .line 219
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@7b
    const-string/jumbo v8, "MSG_NEW_DEVICE_STATE"

    #@7e
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 220
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    #@83
    .line 221
    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    #@85
    const-string/jumbo v9, ""

    #@88
    .line 220
    const/4 v10, 0x1

    #@89
    invoke-virtual {v7, v10, v2, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8c
    move-result-object v3

    #@8d
    .line 222
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    #@8f
    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@92
    .line 224
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    #@94
    .line 181
    return-void

    #@95
    .line 213
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@97
    const-string/jumbo v8, "invalid transition, returning ..."

    #@9a
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 214
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    #@0
    .prologue
    .line 123
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "notifyWiredAccessoryChanged: when="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 124
    const-string/jumbo v3, " bits="

    #@15
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 124
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 125
    const-string/jumbo v3, " mask="

    #@24
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 125
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 127
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    #@39
    monitor-enter v2

    #@3a
    .line 129
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    #@3c
    not-int v3, p4

    #@3d
    and-int/2addr v1, v3

    #@3e
    or-int/2addr v1, p3

    #@3f
    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    #@41
    .line 130
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    #@43
    and-int/lit8 v1, v1, 0x54

    #@45
    sparse-switch v1, :sswitch_data_0

    #@48
    .line 153
    const/4 v0, 0x0

    #@49
    .line 157
    .local v0, "headset":I
    :goto_0
    const-string/jumbo v1, "h2w"

    #@4c
    .line 158
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    #@4e
    and-int/lit8 v3, v3, -0x24

    #@50
    or-int/2addr v3, v0

    #@51
    .line 157
    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v2

    #@55
    .line 122
    return-void

    #@56
    .line 133
    .end local v0    # "headset":I
    :sswitch_0
    const/4 v0, 0x0

    #@57
    .line 134
    .restart local v0    # "headset":I
    goto :goto_0

    #@58
    .line 137
    .end local v0    # "headset":I
    :sswitch_1
    const/4 v0, 0x2

    #@59
    .line 138
    .restart local v0    # "headset":I
    goto :goto_0

    #@5a
    .line 141
    .end local v0    # "headset":I
    :sswitch_2
    const/16 v0, 0x20

    #@5c
    .line 142
    .restart local v0    # "headset":I
    goto :goto_0

    #@5d
    .line 145
    .end local v0    # "headset":I
    :sswitch_3
    const/4 v0, 0x1

    #@5e
    .line 146
    .restart local v0    # "headset":I
    goto :goto_0

    #@5f
    .line 149
    .end local v0    # "headset":I
    :sswitch_4
    const/4 v0, 0x1

    #@60
    .line 150
    .restart local v0    # "headset":I
    goto :goto_0

    #@61
    .line 127
    .end local v0    # "headset":I
    :catchall_0
    move-exception v1

    #@62
    monitor-exit v2

    #@63
    throw v1

    #@64
    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_4
        0x14 -> :sswitch_3
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public systemReady()V
    .locals 7

    #@0
    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@8
    .line 167
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    #@a
    const/4 v3, 0x2

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    const/4 v6, 0x0

    #@e
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    .line 168
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    #@14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 163
    return-void

    #@19
    .line 164
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method
