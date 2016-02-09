.class abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$1;
    }
.end annotation


# static fields
.field private static final DEVICE_CLEANUP_TIMEOUT:I = 0x1388

.field private static final FOLLOWER_SAFETY_TIMEOUT:I = 0x226

.field private static final MSG_DISABLE_DEVICE_TIMEOUT:I = 0x1

.field private static final MSG_USER_CONTROL_RELEASE_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevice"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveRoutingPath:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected mAddress:I

.field protected final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field protected mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field protected final mDeviceType:I

.field private final mHandler:Landroid/os/Handler;

.field protected mLastKeyRepeatCount:I

.field protected mLastKeycode:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

.field protected mPreferredAddress:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    #@3
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "deviceType"    # I

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@6
    .line 61
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    #@9
    .line 117
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@b
    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@10
    .line 125
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@12
    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@17
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@1e
    .line 132
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@23
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@25
    .line 157
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@27
    .line 158
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@29
    .line 159
    const/16 v0, 0xf

    #@2b
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@2d
    .line 160
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    #@33
    .line 156
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "deviceType"    # I

    #@0
    .prologue
    .line 165
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 171
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 167
    :sswitch_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@a
    return-object v0

    #@b
    .line 169
    :sswitch_1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@d
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@10
    return-object v0

    #@11
    .line 165
    nop

    #@12
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method private dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 317
    const/4 v2, 0x0

    #@4
    .line 319
    .local v2, "processed":Z
    new-instance v4, Ljava/util/ArrayList;

    #@6
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@8
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .end local v2    # "processed":Z
    .local v1, "action$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@1b
    .line 321
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1e
    move-result v3

    #@1f
    .line 322
    .local v3, "result":Z
    if-nez v2, :cond_0

    #@21
    move v2, v3

    #@22
    .local v2, "processed":Z
    goto :goto_0

    #@23
    .end local v2    # "processed":Z
    :cond_0
    const/4 v2, 0x1

    #@24
    .local v2, "processed":Z
    goto :goto_0

    #@25
    .line 324
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .end local v2    # "processed":Z
    .end local v3    # "result":Z
    :cond_1
    return v2
.end method

.method private handleDisableDeviceTimeout()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 879
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 880
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@15
    .line 882
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    #@19
    .line 883
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@1c
    goto :goto_0

    #@1d
    .line 885
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 886
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@23
    invoke-interface {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@26
    .line 874
    :cond_1
    return-void
.end method

.method static injectKeyEvent(JIII)V
    .locals 14
    .param p0, "time"    # J
    .param p2, "action"    # I
    .param p3, "keycode"    # I
    .param p4, "repeat"    # I

    #@0
    .prologue
    .line 499
    const/4 v7, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v10, 0x8

    #@5
    .line 500
    const v11, 0x2000001

    #@8
    const/4 v12, 0x0

    #@9
    move-wide v0, p0

    #@a
    move-wide v2, p0

    #@b
    move/from16 v4, p2

    #@d
    move/from16 v5, p3

    #@f
    move/from16 v6, p4

    #@11
    .line 498
    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@14
    move-result-object v13

    #@15
    .line 501
    .local v13, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@18
    move-result-object v0

    #@19
    .line 502
    const/4 v1, 0x0

    #@1a
    .line 501
    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@1d
    .line 503
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    #@20
    .line 497
    return-void
.end method

.method static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 515
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@5
    move-result-object v0

    #@6
    .line 516
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x44

    #@c
    if-ne v3, v4, :cond_2

    #@e
    .line 517
    aget-byte v3, v0, v2

    #@10
    const/16 v4, 0x40

    #@12
    if-eq v3, v4, :cond_0

    #@14
    .line 518
    aget-byte v3, v0, v2

    #@16
    const/16 v4, 0x6c

    #@18
    if-ne v3, v4, :cond_1

    #@1a
    .line 516
    :cond_0
    :goto_0
    return v1

    #@1b
    .line 519
    :cond_1
    aget-byte v3, v0, v2

    #@1d
    const/16 v4, 0x6b

    #@1f
    if-eq v3, v4, :cond_0

    #@21
    move v1, v2

    #@22
    goto :goto_0

    #@23
    :cond_2
    move v1, v2

    #@24
    .line 516
    goto :goto_0
.end method

.method static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 507
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@5
    move-result-object v0

    #@6
    .line 508
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x44

    #@c
    if-ne v3, v4, :cond_2

    #@e
    .line 509
    aget-byte v3, v0, v2

    #@10
    const/16 v4, 0x40

    #@12
    if-eq v3, v4, :cond_0

    #@14
    .line 510
    aget-byte v3, v0, v2

    #@16
    const/16 v4, 0x6d

    #@18
    if-ne v3, v4, :cond_1

    #@1a
    .line 508
    :cond_0
    :goto_0
    return v1

    #@1b
    .line 511
    :cond_1
    aget-byte v3, v0, v2

    #@1d
    const/16 v4, 0x6b

    #@1f
    if-eq v3, v4, :cond_0

    #@21
    move v1, v2

    #@22
    goto :goto_0

    #@23
    :cond_2
    move v1, v2

    #@24
    .line 508
    goto :goto_0
.end method


# virtual methods
.method addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 3
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 652
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    .line 653
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 654
    const-string/jumbo v0, "HdmiCecLocalDevice"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Not ready to start action. Queued for deferred start:"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 655
    return-void

    #@2b
    .line 657
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    #@2e
    .line 650
    return-void
.end method

.method protected assertRunOnServiceThread()V
    .locals 2

    #@0
    .prologue
    .line 745
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@6
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 746
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "Should run on service thread."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 744
    :cond_0
    return-void
.end method

.method protected canGoToStandby()Z
    .locals 1

    #@0
    .prologue
    .line 213
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected checkIfPendingActionsCleared()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 736
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 737
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@f
    .line 739
    .local v0, "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@11
    .line 740
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@14
    .line 735
    .end local v0    # "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    :cond_0
    return-void
.end method

.method clearAddress()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 646
    const/16 v0, 0xf

    #@5
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@7
    .line 644
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 4
    .param p1, "initiatedByCec"    # Z
    .param p2, "originalCallback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@0
    .prologue
    .line 862
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    #@5
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@7
    .line 869
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    .line 870
    const-wide/16 v2, 0x1388

    #@12
    .line 869
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@15
    .line 861
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 225
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@6
    move-result v0

    #@7
    .line 226
    .local v0, "dest":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@9
    if-eq v0, v1, :cond_0

    #@b
    const/16 v1, 0xf

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 227
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@13
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@16
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mDeviceType: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "mAddress: "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "mPreferredAddress: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "mDeviceInfo: "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "mActiveSource: "

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 916
    const-string/jumbo v0, "mActiveRoutingPath: 0x%04x"

    #@80
    const/4 v1, 0x1

    #@81
    new-array v1, v1, [Ljava/lang/Object;

    #@83
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    #@85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v2

    #@89
    const/4 v3, 0x0

    #@8a
    aput-object v2, v1, v3

    #@8c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@93
    .line 910
    return-void
.end method

.method getActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 686
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 688
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@19
    .line 689
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 690
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 691
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 693
    .restart local v2    # "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 696
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_2
    return-object v2
.end method

.method getActivePath()I
    .locals 2

    #@0
    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 796
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 795
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getActivePortId()I
    .locals 3

    #@0
    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    #@7
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 812
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .locals 2

    #@0
    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 773
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 831
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@5
    return-object v0
.end method

.method getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 626
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5
    return-object v0
.end method

.method protected abstract getPreferredAddress()I
.end method

.method final getService()Lcom/android/server/hdmi/HdmiControlService;
    .locals 1

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    return-object v0
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 620
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@2
    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 360
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method final handleAddressAllocated(II)V
    .locals 0
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 614
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    #@5
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@7
    .line 615
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(II)V

    #@a
    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

    #@d
    .line 612
    return-void
.end method

.method protected handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 351
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    #@8
    move-result v1

    #@9
    .line 352
    .local v1, "version":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@c
    move-result v2

    #@d
    .line 353
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@10
    move-result v3

    #@11
    .line 352
    invoke-static {v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@14
    move-result-object v0

    #@15
    .line 354
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@17
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1a
    .line 355
    const/4 v2, 0x1

    #@1b
    return v2
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 376
    const-string/jumbo v0, "HdmiCecLocalDevice"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Only TV can handle <Get Menu Language>:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 378
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method protected handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    .line 536
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@4
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@7
    move-result v2

    #@8
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@a
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    #@d
    move-result v3

    #@e
    .line 535
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@15
    .line 537
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method protected handleGiveDeviceVendorId()Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 341
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    #@8
    move-result v1

    #@9
    .line 343
    .local v1, "vendorId":I
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@b
    .line 342
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@e
    move-result-object v0

    #@f
    .line 344
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@14
    .line 345
    const/4 v2, 0x1

    #@15
    return v2
.end method

.method protected handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 395
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@5
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@8
    move-result v2

    #@9
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@b
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 394
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    move-result-object v0

    #@13
    .line 396
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    #@15
    .line 397
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1a
    .line 401
    :goto_0
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 399
    :cond_0
    const-string/jumbo v1, "HdmiCecLocalDevice"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Failed to build <Get Osd Name>:"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2d
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0
.end method

.method protected handleGivePhysicalAddress()Z
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 331
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@8
    move-result v1

    #@9
    .line 333
    .local v1, "physicalAddress":I
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@b
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@d
    .line 332
    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@10
    move-result-object v0

    #@11
    .line 334
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@13
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@16
    .line 335
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 527
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 365
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 429
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    .line 543
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@4
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x0

    #@9
    .line 542
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@10
    .line 544
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 548
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 608
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@6
    .line 592
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 433
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 600
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 370
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 405
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 409
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 384
    const-string/jumbo v0, "HdmiCecLocalDevice"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Only Playback device can handle <Set Menu Language>:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 386
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 585
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 531
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 440
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 445
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@17
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    #@1a
    move-result v0

    #@1b
    .line 440
    if-eqz v0, :cond_0

    #@1d
    .line 442
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    #@22
    .line 443
    const/4 v0, 0x1

    #@23
    return v0
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 417
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 425
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 523
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 596
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 604
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 10
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v7, 0x1

    #@4
    .line 450
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@7
    .line 451
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 452
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@e
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_0

    #@14
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 453
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    #@1f
    .line 454
    return v7

    #@20
    .line 455
    :cond_0
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@22
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_1

    #@2e
    .line 456
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@30
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    #@33
    .line 457
    return v7

    #@34
    .line 460
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@37
    move-result-wide v0

    #@38
    .line 461
    .local v0, "downTime":J
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@3b
    move-result-object v4

    #@3c
    .line 462
    .local v4, "params":[B
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecKeycode;->cecKeycodeAndParamsToAndroidKey([B)I

    #@3f
    move-result v3

    #@40
    .line 463
    .local v3, "keycode":I
    const/4 v2, 0x0

    #@41
    .line 464
    .local v2, "keyRepeatCount":I
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@43
    if-eq v5, v8, :cond_2

    #@45
    .line 465
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@47
    if-ne v3, v5, :cond_3

    #@49
    .line 466
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    #@4b
    add-int/lit8 v2, v5, 0x1

    #@4d
    .line 471
    :cond_2
    :goto_0
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@4f
    .line 472
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    #@51
    .line 474
    if-eq v3, v8, :cond_4

    #@53
    .line 475
    invoke-static {v0, v1, v6, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    #@56
    .line 476
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@58
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@5a
    invoke-static {v6, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@5d
    move-result-object v6

    #@5e
    .line 477
    const-wide/16 v8, 0x226

    #@60
    .line 476
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@63
    .line 478
    return v7

    #@64
    .line 468
    :cond_3
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@66
    invoke-static {v0, v1, v7, v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    #@69
    goto :goto_0

    #@6a
    .line 480
    :cond_4
    return v6
.end method

.method protected handleUserControlReleased()Z
    .locals 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 485
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@6
    .line 486
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v3, 0x2

    #@9
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 487
    iput v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    #@e
    .line 488
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@10
    if-eq v2, v5, :cond_0

    #@12
    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v0

    #@16
    .line 490
    .local v0, "upTime":J
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@18
    invoke-static {v0, v1, v6, v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    #@1b
    .line 491
    iput v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    #@1d
    .line 492
    return v6

    #@1e
    .line 494
    .end local v0    # "upTime":J
    :cond_0
    return v4
.end method

.method protected handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 552
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@5
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@8
    move-result v2

    #@9
    .line 553
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@c
    move-result v3

    #@d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@10
    move-result-object v4

    #@11
    const/4 v5, 0x0

    #@12
    .line 552
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 556
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1a
    invoke-virtual {v0, p1, v6}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@1d
    .line 558
    :cond_0
    return v6
.end method

.method protected handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/16 v1, 0xf

    #@2
    const/4 v5, 0x1

    #@3
    .line 562
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@6
    move-result-object v4

    #@7
    .line 563
    .local v4, "params":[B
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    #@a
    move-result v6

    #@b
    .line 564
    .local v6, "vendorId":I
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    #@10
    move-result v0

    #@11
    if-ne v6, v0, :cond_1

    #@13
    .line 565
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@15
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@17
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@1a
    move-result v2

    #@1b
    .line 566
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@1e
    move-result v3

    #@1f
    .line 565
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_0

    #@25
    .line 567
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@27
    invoke-virtual {v0, p1, v5}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@2a
    .line 576
    :cond_0
    :goto_0
    return v5

    #@2b
    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@2e
    move-result v0

    #@2f
    if-eq v0, v1, :cond_2

    #@31
    .line 570
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@34
    move-result v0

    #@35
    if-eq v0, v1, :cond_2

    #@37
    .line 571
    const-string/jumbo v0, "HdmiCecLocalDevice"

    #@3a
    const-string/jumbo v1, "Wrong direct vendor command. Replying with <Feature Abort>"

    #@3d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 572
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@42
    const/4 v1, 0x0

    #@43
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@46
    goto :goto_0

    #@47
    .line 574
    :cond_2
    const-string/jumbo v0, "HdmiCecLocalDevice"

    #@4a
    const-string/jumbo v1, "Wrong broadcast vendor command. Ignoring"

    #@4d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    goto :goto_0
.end method

.method hasAction(Ljava/lang/Class;)Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 674
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 675
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@15
    .line 676
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 677
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 680
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_1
    const/4 v2, 0x0

    #@22
    return v2
.end method

.method init()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    #@9
    .line 179
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@c
    .line 176
    return-void
.end method

.method isAddressOf(I)Z
    .locals 1
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 639
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@5
    if-ne p1, v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method final isConnectedToArcPort(I)Z
    .locals 1
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 769
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnectedToArcPort(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected isInputReady(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 205
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected abstract onAddressAllocated(II)V
.end method

.method onHotplug(IZ)V
    .locals 0
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    #@0
    .prologue
    .line 759
    return-void
.end method

.method protected final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 238
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@e
    move-result v0

    #@f
    sparse-switch v0, :sswitch_data_0

    #@12
    .line 310
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 242
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 244
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 246
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@21
    move-result v0

    #@22
    return v0

    #@23
    .line 248
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@26
    move-result v0

    #@27
    return v0

    #@28
    .line 250
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@2b
    move-result v0

    #@2c
    return v0

    #@2d
    .line 252
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGivePhysicalAddress()Z

    #@30
    move-result v0

    #@31
    return v0

    #@32
    .line 254
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@35
    move-result v0

    #@36
    return v0

    #@37
    .line 256
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDeviceVendorId()Z

    #@3a
    move-result v0

    #@3b
    return v0

    #@3c
    .line 258
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@3f
    move-result v0

    #@40
    return v0

    #@41
    .line 260
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@44
    move-result v0

    #@45
    return v0

    #@46
    .line 262
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@49
    move-result v0

    #@4a
    return v0

    #@4b
    .line 264
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@4e
    move-result v0

    #@4f
    return v0

    #@50
    .line 266
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@53
    move-result v0

    #@54
    return v0

    #@55
    .line 268
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@58
    move-result v0

    #@59
    return v0

    #@5a
    .line 270
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@5d
    move-result v0

    #@5e
    return v0

    #@5f
    .line 272
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@62
    move-result v0

    #@63
    return v0

    #@64
    .line 274
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@67
    move-result v0

    #@68
    return v0

    #@69
    .line 276
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@6c
    move-result v0

    #@6d
    return v0

    #@6e
    .line 278
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@71
    move-result v0

    #@72
    return v0

    #@73
    .line 280
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@76
    move-result v0

    #@77
    return v0

    #@78
    .line 282
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@7b
    move-result v0

    #@7c
    return v0

    #@7d
    .line 284
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()Z

    #@80
    move-result v0

    #@81
    return v0

    #@82
    .line 286
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@85
    move-result v0

    #@86
    return v0

    #@87
    .line 288
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@8a
    move-result v0

    #@8b
    return v0

    #@8c
    .line 290
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@8f
    move-result v0

    #@90
    return v0

    #@91
    .line 292
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@94
    move-result v0

    #@95
    return v0

    #@96
    .line 294
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@99
    move-result v0

    #@9a
    return v0

    #@9b
    .line 296
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@9e
    move-result v0

    #@9f
    return v0

    #@a0
    .line 298
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@a3
    move-result v0

    #@a4
    return v0

    #@a5
    .line 300
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@a8
    move-result v0

    #@a9
    return v0

    #@aa
    .line 302
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@ad
    move-result v0

    #@ae
    return v0

    #@af
    .line 304
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@b2
    move-result v0

    #@b3
    return v0

    #@b4
    .line 306
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@b7
    move-result v0

    #@b8
    return v0

    #@b9
    .line 308
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@bc
    move-result v0

    #@bd
    return v0

    #@be
    .line 240
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_13
        0xa -> :sswitch_21
        0xd -> :sswitch_12
        0xf -> :sswitch_1d
        0x32 -> :sswitch_4
        0x35 -> :sswitch_20
        0x36 -> :sswitch_11
        0x43 -> :sswitch_1e
        0x44 -> :sswitch_14
        0x45 -> :sswitch_15
        0x46 -> :sswitch_6
        0x47 -> :sswitch_1c
        0x72 -> :sswitch_e
        0x7a -> :sswitch_10
        0x7e -> :sswitch_f
        0x80 -> :sswitch_a
        0x81 -> :sswitch_b
        0x82 -> :sswitch_0
        0x83 -> :sswitch_5
        0x84 -> :sswitch_9
        0x85 -> :sswitch_2
        0x86 -> :sswitch_16
        0x89 -> :sswitch_1a
        0x8c -> :sswitch_7
        0x8d -> :sswitch_18
        0x8e -> :sswitch_19
        0x8f -> :sswitch_17
        0x90 -> :sswitch_1f
        0x91 -> :sswitch_3
        0x9d -> :sswitch_1
        0x9f -> :sswitch_8
        0xa0 -> :sswitch_1b
        0xc0 -> :sswitch_c
        0xc5 -> :sswitch_d
    .end sparse-switch
.end method

.method protected onStandby(ZI)V
    .locals 0
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I

    #@0
    .prologue
    .line 849
    return-void
.end method

.method pathToPortId(I)I
    .locals 1
    .param p1, "newPath"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 837
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 707
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    #@7
    .line 708
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    .line 709
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    #@f
    .line 705
    return-void
.end method

.method removeAction(Ljava/lang/Class;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 715
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 716
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@7
    .line 714
    return-void
.end method

.method removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 3
    .param p2, "exception"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 723
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 724
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 725
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@15
    .line 727
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    if-eq v0, p2, :cond_0

    #@17
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 728
    const/4 v2, 0x0

    #@22
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    #@25
    .line 729
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@28
    goto :goto_0

    #@29
    .line 732
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    #@2c
    .line 722
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    #@0
    .prologue
    .line 897
    const-string/jumbo v0, "HdmiCecLocalDevice"

    #@3
    const-string/jumbo v1, "sendKeyEvent not implemented"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 896
    return-void
.end method

.method protected sendStandby(I)V
    .locals 0
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 579
    return-void
.end method

.method sendUserControlPressedAndReleased(II)V
    .locals 2
    .param p1, "targetAddress"    # I
    .param p2, "cecKeycode"    # I

    #@0
    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    .line 902
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@4
    .line 901
    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@b
    .line 903
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    .line 904
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    #@f
    .line 903
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@16
    .line 900
    return-void
.end method

.method setActivePath(I)V
    .locals 2
    .param p1, "path"    # I

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 802
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 804
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->pathToPortId(I)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setActivePortId(I)V

    #@f
    .line 800
    return-void

    #@10
    .line 801
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1
.end method

.method setActivePortId(I)V
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    #@9
    .line 822
    return-void
.end method

.method setActiveSource(II)V
    .locals 2
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I

    #@0
    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@5
    iput p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@7
    .line 789
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@9
    iput p2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 791
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@e
    const/4 v1, -0x1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    #@12
    .line 786
    return-void

    #@13
    .line 787
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    #@b
    .line 782
    return-void
.end method

.method setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .locals 2
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@0
    .prologue
    .line 779
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@2
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    #@7
    .line 778
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 750
    return-void
.end method

.method setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 632
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5
    .line 630
    return-void
.end method

.method protected abstract setPreferredAddress(I)V
.end method

.method startQueuedActions()V
    .locals 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    #@3
    .line 663
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@15
    .line 664
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->started()Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 665
    const-string/jumbo v2, "HdmiCecLocalDevice"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "Starting queued action:"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 666
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    #@38
    goto :goto_0

    #@39
    .line 661
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_1
    return-void
.end method
