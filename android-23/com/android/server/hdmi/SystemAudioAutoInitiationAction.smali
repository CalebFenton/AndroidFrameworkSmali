.class final Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAutoInitiationAction.java"


# static fields
.field private static final STATE_WAITING_FOR_SYSTEM_AUDIO_MODE_STATUS:I = 0x1


# instance fields
.field private final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 34
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    #@5
    .line 32
    return-void
.end method

.method private canChangeSystemAudio()Z
    .locals 2

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@f
    move-result-object v0

    #@10
    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@15
    move-result v0

    #@16
    .line 112
    if-eqz v0, :cond_1

    #@18
    :cond_0
    const/4 v0, 0x0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method private handleSystemAudioModeStatusMessage()V
    .locals 5

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 75
    const-string/jumbo v1, "Cannot change system audio mode in auto initiation action."

    #@9
    const/4 v2, 0x0

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    #@12
    .line 77
    return-void

    #@13
    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    #@1a
    move-result v0

    #@1b
    .line 82
    .local v0, "systemAudioModeSetting":Z
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    #@1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@20
    move-result-object v2

    #@21
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    #@23
    .line 83
    const/4 v4, 0x0

    #@24
    .line 82
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@27
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@2a
    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    #@2d
    .line 73
    return-void
.end method

.method private handleSystemAudioModeStatusTimeout()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 101
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 102
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 103
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    #@13
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@16
    move-result-object v1

    #@17
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@20
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    #@23
    .line 100
    return-void

    #@24
    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@27
    move-result-object v0

    #@28
    const/4 v1, 0x0

    #@29
    invoke-virtual {v0, v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@2c
    goto :goto_0
.end method

.method private sendGiveSystemAudioModeStatus()V
    .locals 2

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 48
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    #@6
    .line 47
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    .line 48
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    #@f
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@12
    .line 46
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 90
    return-void

    #@5
    .line 93
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 88
    :goto_0
    return-void

    #@b
    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    #@e
    goto :goto_0

    #@f
    .line 93
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 61
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    #@4
    if-ne v0, v3, :cond_0

    #@6
    .line 62
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    #@8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@b
    move-result v1

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 63
    :cond_0
    return v2

    #@f
    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v0

    #@13
    const/16 v1, 0x7e

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 67
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusMessage()V

    #@1a
    .line 68
    return v3

    #@1b
    .line 70
    :cond_2
    return v2
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 39
    iput v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    #@3
    .line 41
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    #@5
    const/16 v1, 0x7d0

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addTimer(II)V

    #@a
    .line 42
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V

    #@d
    .line 43
    return v2
.end method
