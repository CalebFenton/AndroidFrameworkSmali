.class final Lcom/android/server/hdmi/SetArcTransmissionStateAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SetArcTransmissionStateAction.java"


# static fields
.field private static final STATE_WAITING_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetArcTransmissionStateAction"


# instance fields
.field private final mAvrAddress:I

.field private final mEnabled:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/SetArcTransmissionStateAction;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "enabled"    # Z

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 47
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    #@b
    .line 48
    const/4 v0, 0x5

    #@c
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    #@f
    .line 49
    iput p2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    #@11
    .line 50
    iput-boolean p3, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    #@13
    .line 45
    return-void
.end method

.method private sendReportArcInitiated()V
    .locals 3

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    #@6
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    .line 80
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    #@f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@12
    .line 77
    return-void
.end method

.method private setArcStatus(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    #@7
    move-result v0

    #@8
    .line 105
    .local v0, "wasEnabled":Z
    const-string/jumbo v1, "SetArcTransmissionStateAction"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Change arc status [old:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, ", new:"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "]"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 109
    if-nez p1, :cond_0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 110
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    #@3b
    move-result v1

    #@3c
    .line 111
    iget v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    #@3e
    .line 110
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@45
    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 136
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    #@6
    const/4 v1, 0x1

    #@7
    if-eq v0, v1, :cond_1

    #@9
    .line 137
    :cond_0
    return-void

    #@a
    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    #@d
    .line 135
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 117
    iget v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    #@4
    if-eq v2, v5, :cond_0

    #@6
    .line 118
    return v4

    #@7
    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@a
    move-result v0

    #@b
    .line 122
    .local v0, "opcode":I
    if-nez v0, :cond_1

    #@d
    .line 123
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@10
    move-result-object v2

    #@11
    aget-byte v2, v2, v4

    #@13
    and-int/lit16 v1, v2, 0xff

    #@15
    .line 124
    .local v1, "originalOpcode":I
    const/16 v2, 0xc1

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 125
    const-string/jumbo v2, "Feature aborted for <Report Arc Initiated>"

    #@1c
    new-array v3, v4, [Ljava/lang/Object;

    #@1e
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@21
    .line 126
    invoke-direct {p0, v4}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    #@24
    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    #@27
    .line 128
    return v5

    #@28
    .line 131
    .end local v1    # "originalOpcode":I
    :cond_1
    return v4
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 56
    iget-boolean v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 64
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    #@8
    .line 67
    iput v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    #@a
    .line 68
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    #@c
    const/16 v1, 0x7d0

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->addTimer(II)V

    #@11
    .line 69
    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V

    #@14
    .line 74
    :goto_0
    return v2

    #@15
    .line 71
    :cond_0
    const/4 v0, 0x0

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    #@19
    .line 72
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    #@1c
    goto :goto_0
.end method
