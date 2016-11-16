.class final Lcom/android/server/hdmi/DeviceSelectAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0x14

.field private static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field private static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceSelect"

.field private static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field private static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field private mPowerStatusCounter:I

.field private final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/DeviceSelectAction;I)V
    .locals 0
    .param p1, "result"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p2, "target"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    #@6
    .line 77
    iput-object p3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@8
    .line 78
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@a
    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    #@11
    move-result v1

    #@12
    .line 79
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    #@18
    .line 75
    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .locals 4
    .param p1, "powerStatus"    # I

    #@0
    .prologue
    const/16 v3, 0x1388

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    .line 130
    packed-switch p1, :pswitch_data_0

    #@7
    .line 158
    return v0

    #@8
    .line 132
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    #@b
    .line 133
    return v2

    #@c
    .line 135
    :pswitch_1
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    #@e
    const/4 v1, 0x4

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 136
    const/4 v0, 0x2

    #@12
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@14
    .line 137
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@16
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    #@19
    .line 141
    :goto_0
    return v2

    #@1a
    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    #@1d
    goto :goto_0

    #@1e
    .line 143
    :pswitch_2
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    #@20
    if-nez v0, :cond_1

    #@22
    .line 144
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->turnOnDevice()V

    #@25
    .line 148
    :goto_1
    return v2

    #@26
    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    #@29
    goto :goto_1

    #@2a
    .line 150
    :pswitch_3
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    #@2c
    const/16 v1, 0x14

    #@2e
    if-ge v0, v1, :cond_2

    #@30
    .line 151
    const/4 v0, 0x3

    #@31
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@33
    .line 152
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@35
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    #@38
    .line 156
    :goto_2
    return v2

    #@39
    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    #@3c
    goto :goto_2

    #@3d
    .line 130
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1, "result"    # I

    #@0
    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 206
    return-void

    #@5
    .line 209
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

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
    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceSelect"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Callback failed:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    #@2
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectAction$1;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectAction$1;-><init>(Lcom/android/server/hdmi/DeviceSelectAction;)V

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@a
    .line 105
    const/4 v0, 0x1

    #@b
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@d
    .line 106
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@f
    const/16 v1, 0x7d0

    #@11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    #@14
    .line 94
    return-void
.end method

.method private sendSetStreamPath()V
    .locals 2

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    #@b
    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@11
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@18
    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    #@1b
    move-result v0

    #@1c
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1e
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@21
    move-result v1

    #@22
    .line 175
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@29
    .line 177
    const/4 v0, 0x0

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    #@2d
    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    #@30
    .line 170
    return-void
.end method

.method private turnOnDevice()V
    .locals 2

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@5
    move-result v0

    #@6
    .line 163
    const/16 v1, 0x40

    #@8
    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    #@b
    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@10
    move-result v0

    #@11
    .line 165
    const/16 v1, 0x6d

    #@13
    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    #@16
    .line 166
    const/4 v0, 0x3

    #@17
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@19
    .line 167
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@1b
    const/16 v1, 0x1388

    #@1d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    #@20
    .line 161
    return-void
.end method


# virtual methods
.method getTargetAddress()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public handleTimerEvent(I)V
    .locals 2
    .param p1, "timeoutState"    # I

    #@0
    .prologue
    .line 183
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 184
    const-string/jumbo v0, "DeviceSelect"

    #@7
    const-string/jumbo v1, "Timer in a wrong state. Ignored."

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 185
    return-void

    #@e
    .line 187
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@10
    packed-switch v0, :pswitch_data_0

    #@13
    .line 182
    :goto_0
    return-void

    #@14
    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 190
    const/4 v0, 0x6

    #@1f
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    #@22
    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    #@25
    .line 192
    return-void

    #@26
    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    #@29
    goto :goto_0

    #@2a
    .line 198
    :pswitch_1
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    #@30
    .line 199
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    #@33
    goto :goto_0

    #@34
    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 111
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@4
    move-result v2

    #@5
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    #@8
    move-result v3

    #@9
    if-eq v2, v3, :cond_0

    #@b
    .line 112
    return v4

    #@c
    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@f
    move-result v0

    #@10
    .line 115
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@13
    move-result-object v1

    #@14
    .line 117
    .local v1, "params":[B
    iget v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    #@16
    packed-switch v2, :pswitch_data_0

    #@19
    .line 126
    return v4

    #@1a
    .line 119
    :pswitch_0
    const/16 v2, 0x90

    #@1c
    if-ne v0, v2, :cond_1

    #@1e
    .line 120
    aget-byte v2, v1, v4

    #@20
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceSelectAction;->handleReportPowerStatus(I)Z

    #@23
    move-result v2

    #@24
    return v2

    #@25
    .line 122
    :cond_1
    return v4

    #@26
    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public start()Z
    .locals 1

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    #@3
    .line 91
    const/4 v0, 0x1

    #@4
    return v0
.end method
