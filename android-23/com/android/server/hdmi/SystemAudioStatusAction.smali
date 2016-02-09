.class final Lcom/android/server/hdmi/SystemAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioStatusAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_AUDIO_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemAudioStatusAction"


# instance fields
.field private final mAvrAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/SystemAudioStatusAction;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleSendGiveAudioStatusFailure()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 42
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    #@5
    .line 43
    iput-object p3, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@7
    .line 40
    return-void
.end method

.method private finishWithCallback(I)V
    .locals 3
    .param p1, "returnCode"    # I

    #@0
    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@6
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finish()V

    #@c
    .line 108
    return-void

    #@d
    .line 112
    :catch_0
    move-exception v0

    #@e
    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemAudioStatusAction"

    #@11
    const-string/jumbo v2, "Failed to invoke callback."

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@4
    move-result-object v1

    #@5
    .line 97
    .local v1, "params":[B
    aget-byte v3, v1, v5

    #@7
    and-int/lit16 v3, v3, 0x80

    #@9
    const/16 v4, 0x80

    #@b
    if-ne v3, v4, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 98
    .local v0, "mute":Z
    :goto_0
    aget-byte v3, v1, v5

    #@10
    and-int/lit8 v2, v3, 0x7f

    #@12
    .line 99
    .local v2, "volume":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    #@19
    .line 101
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@20
    move-result v3

    #@21
    xor-int/2addr v3, v0

    #@22
    if-nez v3, :cond_0

    #@24
    .line 103
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    #@26
    const/16 v4, 0x43

    #@28
    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendUserControlPressedAndReleased(II)V

    #@2b
    .line 105
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finishWithCallback(I)V

    #@2e
    .line 95
    return-void

    #@2f
    .line 97
    .end local v0    # "mute":Z
    .end local v2    # "volume":I
    :cond_1
    const/4 v0, 0x0

    #@30
    .restart local v0    # "mute":Z
    goto :goto_0
.end method

.method private handleSendGiveAudioStatusFailure()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 69
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@4
    move-result-object v1

    #@5
    const/4 v2, -0x1

    #@6
    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    #@9
    .line 71
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 72
    const/16 v0, 0x66

    #@15
    .line 74
    .local v0, "uiCommand":I
    :goto_0
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    #@17
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendUserControlPressedAndReleased(II)V

    #@1a
    .line 77
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finishWithCallback(I)V

    #@1d
    .line 66
    return-void

    #@1e
    .line 73
    .end local v0    # "uiCommand":I
    :cond_0
    const/16 v0, 0x65

    #@20
    .restart local v0    # "uiCommand":I
    goto :goto_0
.end method

.method private sendGiveAudioStatus()V
    .locals 2

    #@0
    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    #@6
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    .line 56
    new-instance v1, Lcom/android/server/hdmi/SystemAudioStatusAction$1;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioStatusAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioStatusAction;)V

    #@f
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@12
    .line 54
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 122
    return-void

    #@5
    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleSendGiveAudioStatusFailure()V

    #@8
    .line 120
    return-void
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
    .line 82
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    #@4
    if-ne v0, v3, :cond_0

    #@6
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    #@8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@b
    move-result v1

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 83
    :cond_0
    return v2

    #@f
    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v0

    #@13
    packed-switch v0, :pswitch_data_0

    #@16
    .line 92
    return v2

    #@17
    .line 88
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1a
    .line 89
    return v3

    #@1b
    .line 86
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_0
    .end packed-switch
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 48
    iput v2, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    #@3
    .line 49
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    #@5
    const/16 v1, 0x7d0

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->addTimer(II)V

    #@a
    .line 50
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendGiveAudioStatus()V

    #@d
    .line 51
    return v2
.end method
