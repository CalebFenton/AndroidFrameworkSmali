.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerStatusCounter:I

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    #@a
    .line 55
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    #@d
    .line 71
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@f
    .line 72
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/OneTouchPlayAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@12
    .line 69
    return-void
.end method

.method private broadcastActiveSource()V
    .locals 2

    #@0
    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourcePath()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@f
    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    #@17
    .line 85
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .locals 3
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 60
    if-eqz p0, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 61
    :cond_0
    const-string/jumbo v0, "OneTouchPlayAction"

    #@8
    const-string/jumbo v1, "Wrong arguments"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 62
    return-object v2

    #@f
    .line 64
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    #@11
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@14
    return-object v0
.end method

.method private invokeCallback(I)V
    .locals 6
    .param p1, "result"    # I

    #@0
    .prologue
    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    #@12
    .line 138
    .local v0, "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 140
    .end local v0    # "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@17
    .line 141
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "OneTouchPlayAction"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Callback failed:"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 135
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 93
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@6
    .line 92
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 91
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 131
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 116
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 117
    return-void

    #@6
    .line 119
    :cond_0
    if-ne p1, v2, :cond_1

    #@8
    .line 120
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    #@a
    add-int/lit8 v1, v0, 0x1

    #@c
    iput v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    #@e
    const/16 v1, 0xa

    #@10
    if-ge v0, v1, :cond_2

    #@12
    .line 121
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    #@15
    .line 122
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@17
    const/16 v1, 0x7d0

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    #@1c
    .line 115
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 125
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    #@20
    .line 126
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    #@23
    goto :goto_0
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 98
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@4
    if-ne v1, v4, :cond_0

    #@6
    .line 99
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@b
    move-result v2

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 100
    :cond_0
    return v3

    #@f
    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v1

    #@13
    const/16 v2, 0x90

    #@15
    if-ne v1, v2, :cond_3

    #@17
    .line 103
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@1a
    move-result-object v1

    #@1b
    aget-byte v0, v1, v3

    #@1d
    .line 104
    .local v0, "status":I
    if-nez v0, :cond_2

    #@1f
    .line 105
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    #@22
    .line 106
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    #@25
    .line 107
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    #@28
    .line 109
    :cond_2
    return v4

    #@29
    .line 111
    .end local v0    # "status":I
    :cond_3
    return v3
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    #@4
    move-result v0

    #@5
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@7
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@e
    .line 78
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    #@11
    .line 79
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    #@14
    .line 80
    iput v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@16
    .line 81
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@18
    const/16 v1, 0x7d0

    #@1a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    #@1d
    .line 82
    return v2
.end method
