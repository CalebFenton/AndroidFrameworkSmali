.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

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
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 52
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    #@6
    .line 68
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@8
    .line 69
    iput-object p3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@a
    .line 66
    return-void
.end method

.method private broadcastActiveSource()V
    .locals 2

    #@0
    .prologue
    .line 83
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
    .line 85
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    #@17
    .line 82
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
    .line 57
    if-eqz p0, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 58
    :cond_0
    const-string/jumbo v0, "OneTouchPlayAction"

    #@8
    const-string/jumbo v1, "Wrong arguments"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 59
    return-object v2

    #@f
    .line 61
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    #@11
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@14
    return-object v0
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1, "result"    # I

    #@0
    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 128
    :goto_0
    return-void

    #@6
    .line 131
    :catch_0
    move-exception v0

    #@7
    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OneTouchPlayAction"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Callback failed:"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 90
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@6
    .line 89
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 88
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 113
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 114
    return-void

    #@6
    .line 116
    :cond_0
    if-ne p1, v2, :cond_1

    #@8
    .line 117
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
    .line 118
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    #@15
    .line 119
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@17
    const/16 v1, 0x7d0

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    #@1c
    .line 112
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 122
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    #@20
    .line 123
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
    .line 95
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@4
    if-ne v1, v4, :cond_0

    #@6
    .line 96
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    #@8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@b
    move-result v2

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 97
    :cond_0
    return v3

    #@f
    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v1

    #@13
    const/16 v2, 0x90

    #@15
    if-ne v1, v2, :cond_3

    #@17
    .line 100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@1a
    move-result-object v1

    #@1b
    aget-byte v0, v1, v3

    #@1d
    .line 101
    .local v0, "status":I
    if-nez v0, :cond_2

    #@1f
    .line 102
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    #@22
    .line 103
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    #@25
    .line 104
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    #@28
    .line 106
    :cond_2
    return v4

    #@29
    .line 108
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
    .line 74
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
    .line 75
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    #@11
    .line 76
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    #@14
    .line 77
    iput v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@16
    .line 78
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    #@18
    const/16 v1, 0x7d0

    #@1a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    #@1d
    .line 79
    return v2
.end method
