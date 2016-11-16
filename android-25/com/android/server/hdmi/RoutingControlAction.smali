.class final Lcom/android/server/hdmi/RoutingControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RoutingControlAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x2

.field private static final STATE_WAIT_FOR_ROUTING_INFORMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoutingControlAction"

.field private static final TIMEOUT_REPORT_POWER_STATUS_MS:I = 0x3e8

.field private static final TIMEOUT_ROUTING_INFORMATION_MS:I = 0x3e8


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mCurrentRoutingPath:I

.field private final mNotifyInputChange:Z

.field private final mQueryDevicePowerStatus:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/RoutingControlAction;Z)V
    .locals 0
    .param p1, "acked"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->handlDevicePowerStatusAckResult(Z)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "path"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 77
    iput-object p4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@5
    .line 78
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    #@7
    .line 79
    iput-boolean p3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    #@9
    .line 84
    if-nez p4, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    #@e
    .line 75
    return-void

    #@f
    .line 84
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private finishWithCallback(I)V
    .locals 0
    .param p1, "result"    # I

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->invokeCallback(I)V

    #@3
    .line 152
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->finish()V

    #@6
    .line 150
    return-void
.end method

.method private getTvPowerStatus()I
    .locals 1

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPowerStatus()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private handlDevicePowerStatusAckResult(Z)V
    .locals 2
    .param p1, "acked"    # Z

    #@0
    .prologue
    .line 194
    if-eqz p1, :cond_0

    #@2
    .line 195
    const/4 v0, 0x2

    #@3
    iput v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@5
    .line 196
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@7
    const/16 v1, 0x3e8

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    #@c
    .line 193
    :goto_0
    return-void

    #@d
    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    #@10
    .line 199
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    #@13
    .line 200
    const/4 v0, 0x0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    #@17
    goto :goto_0
.end method

.method private handleReportPowerStatus(I)V
    .locals 1
    .param p1, "devicePowerStatus"    # I

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 122
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    #@d
    .line 123
    invoke-static {p1}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 124
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    #@16
    .line 127
    :cond_0
    const/4 v0, 0x0

    #@17
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    #@1a
    .line 120
    return-void
.end method

.method private invokeCallback(I)V
    .locals 2
    .param p1, "result"    # I

    #@0
    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 206
    return-void

    #@5
    .line 209
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@7
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 204
    :goto_0
    return-void

    #@b
    .line 210
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static isPowerOnOrTransient(I)Z
    .locals 3
    .param p0, "status"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 141
    if-eqz p0, :cond_0

    #@4
    .line 142
    const/4 v2, 0x2

    #@5
    if-ne p0, v2, :cond_1

    #@7
    .line 141
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    move v0, v1

    #@9
    .line 142
    goto :goto_0
.end method

.method private queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 1
    .param p1, "address"    # I
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@b
    .line 188
    return-void
.end method

.method private sendSetStreamPath()V
    .locals 2

    #@0
    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 147
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    #@6
    .line 146
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 145
    return-void
.end method

.method private updateActiveInput()V
    .locals 3

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    .line 132
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    #@b
    .line 133
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    #@d
    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    #@f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    #@12
    .line 130
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 5
    .param p1, "timeoutState"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 157
    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@3
    if-ne v2, p1, :cond_0

    #@5
    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@7
    if-nez v2, :cond_1

    #@9
    .line 158
    :cond_0
    const-string/jumbo v2, "CEC"

    #@c
    const-string/jumbo v3, "Timer in a wrong state. Ignored."

    #@f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 159
    return-void

    #@13
    .line 161
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@16
    .line 156
    return-void

    #@17
    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@1a
    move-result-object v2

    #@1b
    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@20
    move-result-object v0

    #@21
    .line 164
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_2

    #@23
    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 165
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@2a
    move-result v1

    #@2b
    .line 166
    .local v1, "deviceLogicalAddress":I
    new-instance v2, Lcom/android/server/hdmi/RoutingControlAction$1;

    #@2d
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/RoutingControlAction$1;-><init>(Lcom/android/server/hdmi/RoutingControlAction;)V

    #@30
    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/RoutingControlAction;->queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@33
    .line 177
    .end local v1    # "deviceLogicalAddress":I
    :goto_0
    return-void

    #@34
    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    #@37
    .line 175
    invoke-direct {p0, v4}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    #@3a
    goto :goto_0

    #@3b
    .line 179
    .end local v0    # "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    #@3e
    move-result v2

    #@3f
    invoke-static {v2}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_3

    #@45
    .line 180
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    #@48
    .line 181
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    #@4b
    .line 183
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    #@4e
    .line 184
    return-void

    #@4f
    .line 161
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@5
    move-result v0

    #@6
    .line 97
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@9
    move-result-object v1

    #@a
    .line 98
    .local v1, "params":[B
    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@c
    if-ne v3, v5, :cond_1

    #@e
    .line 99
    const/16 v3, 0x81

    #@10
    if-ne v0, v3, :cond_1

    #@12
    .line 103
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@15
    move-result v2

    #@16
    .line 104
    .local v2, "routingPath":I
    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    #@18
    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 105
    return v5

    #@1f
    .line 107
    :cond_0
    iput v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    #@21
    .line 109
    const-class v3, Lcom/android/server/hdmi/RoutingControlAction;

    #@23
    invoke-virtual {p0, v3, p0}, Lcom/android/server/hdmi/RoutingControlAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@26
    .line 110
    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@28
    const/16 v4, 0x3e8

    #@2a
    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    #@2d
    .line 111
    return v5

    #@2e
    .line 112
    .end local v2    # "routingPath":I
    :cond_1
    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@30
    const/4 v4, 0x2

    #@31
    if-ne v3, v4, :cond_2

    #@33
    .line 113
    const/16 v3, 0x90

    #@35
    if-ne v0, v3, :cond_2

    #@37
    .line 114
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@3a
    move-result-object v3

    #@3b
    aget-byte v3, v3, v6

    #@3d
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/RoutingControlAction;->handleReportPowerStatus(I)V

    #@40
    .line 115
    return v5

    #@41
    .line 117
    :cond_2
    return v6
.end method

.method public start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 89
    iput v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@3
    .line 90
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    #@5
    const/16 v1, 0x3e8

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    #@a
    .line 91
    return v2
.end method
