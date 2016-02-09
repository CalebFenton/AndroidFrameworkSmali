.class abstract Lcom/android/server/hdmi/SystemAudioAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAction.java"


# static fields
.field private static final MAX_SEND_RETRY_COUNT:I = 0x2

.field private static final OFF_TIMEOUT_MS:I = 0x7d0

.field private static final ON_TIMEOUT_MS:I = 0x1388

.field private static final STATE_CHECK_ROUTING_IN_PRGRESS:I = 0x1

.field private static final STATE_WAIT_FOR_SET_SYSTEM_AUDIO_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SystemAudioAction"


# instance fields
.field protected final mAvrLogicalAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mSendRetryCount:I

.field protected mTargetAudioStatus:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 54
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    #@6
    .line 68
    const/4 v0, 0x5

    #@7
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    #@a
    .line 69
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    #@c
    .line 70
    iput-boolean p3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    #@e
    .line 71
    iput-object p4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@10
    .line 66
    return-void
.end method

.method private getSystemAudioModeRequestParam()I
    .locals 2

    #@0
    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@15
    move-result-object v1

    #@16
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@18
    return v1

    #@19
    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@20
    move-result v0

    #@21
    .line 120
    .local v0, "param":I
    const v1, 0xffff

    #@24
    if-eq v0, v1, :cond_1

    #@26
    .end local v0    # "param":I
    :goto_0
    return v0

    #@27
    .line 121
    .restart local v0    # "param":I
    :cond_1
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method

.method private handleSendSystemAudioModeRequestTimeout()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 125
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 126
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    #@7
    add-int/lit8 v1, v0, 0x1

    #@9
    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    #@b
    const/4 v1, 0x2

    #@c
    if-lt v0, v1, :cond_1

    #@e
    .line 127
    :cond_0
    const-string/jumbo v0, "[T]:wait for <Set System Audio Mode>."

    #@11
    new-array v1, v2, [Ljava/lang/Object;

    #@13
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@16
    .line 128
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    #@19
    .line 129
    const/4 v0, 0x1

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    #@1d
    .line 130
    return-void

    #@1e
    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    #@21
    .line 124
    return-void
.end method

.method private sendSystemAudioModeRequestInternal()V
    .locals 5

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->getSourceAddress()I

    #@3
    move-result v1

    #@4
    .line 95
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    #@6
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->getSystemAudioModeRequestParam()I

    #@9
    move-result v3

    #@a
    iget-boolean v4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    #@c
    .line 93
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    #@f
    move-result-object v0

    #@10
    .line 96
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$2;

    #@12
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$2;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@18
    .line 106
    const/4 v1, 0x2

    #@19
    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    #@1b
    .line 107
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    #@1d
    iget-boolean v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    #@1f
    if-eqz v1, :cond_0

    #@21
    const/16 v1, 0x1388

    #@23
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/SystemAudioAction;->addTimer(II)V

    #@26
    .line 92
    return-void

    #@27
    .line 107
    :cond_0
    const/16 v1, 0x7d0

    #@29
    goto :goto_0
.end method


# virtual methods
.method protected finishWithCallback(I)V
    .locals 3
    .param p1, "returnCode"    # I

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@6
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 208
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->finish()V

    #@c
    .line 200
    return-void

    #@d
    .line 204
    :catch_0
    move-exception v0

    #@e
    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemAudioAction"

    #@11
    const-string/jumbo v2, "Failed to invoke callback."

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method final handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 188
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 189
    return-void

    #@5
    .line 191
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 187
    return-void

    #@b
    .line 193
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->handleSendSystemAudioModeRequestTimeout()V

    #@e
    .line 194
    return-void

    #@f
    .line 191
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@6
    move-result v1

    #@7
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 142
    return v3

    #@c
    .line 144
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    #@e
    packed-switch v1, :pswitch_data_0

    #@11
    .line 172
    return v3

    #@12
    .line 146
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 147
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@1b
    move-result-object v1

    #@1c
    aget-byte v1, v1, v3

    #@1e
    and-int/lit16 v1, v1, 0xff

    #@20
    .line 148
    const/16 v2, 0x70

    #@22
    .line 147
    if-ne v1, v2, :cond_1

    #@24
    .line 149
    const-string/jumbo v1, "Failed to start system audio mode request."

    #@27
    new-array v2, v3, [Ljava/lang/Object;

    #@29
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2c
    .line 150
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    #@2f
    .line 151
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    #@32
    .line 152
    return v4

    #@33
    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@36
    move-result v1

    #@37
    const/16 v2, 0x72

    #@39
    if-ne v1, v2, :cond_2

    #@3b
    .line 155
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    #@3d
    const-string/jumbo v2, "SystemAudioAction"

    #@40
    invoke-static {p1, v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_2

    #@46
    .line 158
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@49
    move-result v0

    #@4a
    .line 159
    .local v0, "receivedStatus":Z
    iget-boolean v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    #@4c
    if-ne v0, v1, :cond_3

    #@4e
    .line 160
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    #@51
    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->startAudioStatusAction()V

    #@54
    .line 162
    return v4

    #@55
    .line 156
    .end local v0    # "receivedStatus":Z
    :cond_2
    return v3

    #@56
    .line 164
    .restart local v0    # "receivedStatus":Z
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v2, "Unexpected system audio mode request:"

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    new-array v2, v3, [Ljava/lang/Object;

    #@6c
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@6f
    .line 168
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    #@72
    .line 169
    return v3

    #@73
    .line 144
    nop

    #@74
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected removeSystemAudioActionInProgress()V
    .locals 1

    #@0
    .prologue
    .line 182
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    #@2
    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@5
    .line 183
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    #@7
    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@a
    .line 181
    return-void
.end method

.method protected sendSystemAudioModeRequest()V
    .locals 3

    #@0
    .prologue
    .line 76
    const-class v2, Lcom/android/server/hdmi/RoutingControlAction;

    #@2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 77
    .local v1, "routingActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/RoutingControlAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 78
    const/4 v2, 0x1

    #@d
    iput v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    #@f
    .line 80
    const/4 v2, 0x0

    #@10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/hdmi/RoutingControlAction;

    #@16
    .line 81
    .local v0, "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    new-instance v2, Lcom/android/server/hdmi/SystemAudioAction$1;

    #@18
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SystemAudioAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    #@1b
    invoke-virtual {v0, p0, v2}, Lcom/android/server/hdmi/RoutingControlAction;->addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V

    #@1e
    .line 87
    return-void

    #@1f
    .line 89
    .end local v0    # "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    #@22
    .line 75
    return-void
.end method

.method protected setSystemAudioMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@8
    .line 135
    return-void
.end method

.method protected startAudioStatusAction()V
    .locals 4

    #@0
    .prologue
    .line 177
    new-instance v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    #@2
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    #@8
    iget-object v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SystemAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@10
    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->finish()V

    #@13
    .line 176
    return-void
.end method
