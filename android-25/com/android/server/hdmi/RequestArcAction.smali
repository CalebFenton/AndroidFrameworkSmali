.class abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field protected static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field protected final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->getSourceAddress()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    #@b
    .line 44
    const/4 v0, 0x5

    #@c
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    #@f
    .line 45
    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    #@11
    .line 41
    return-void
.end method


# virtual methods
.method protected final disableArcTransmission()V
    .locals 4

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    #@2
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@5
    move-result-object v1

    #@6
    .line 78
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    #@8
    const/4 v3, 0x0

    #@9
    .line 77
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    #@c
    .line 79
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RequestArcAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@f
    .line 75
    return-void
.end method

.method final handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    if-eq p1, v0, :cond_1

    #@7
    .line 85
    :cond_0
    return-void

    #@8
    .line 87
    :cond_1
    const-string/jumbo v0, "[T] RequestArcAction."

    #@b
    const/4 v1, 0x0

    #@c
    new-array v1, v1, [Ljava/lang/Object;

    #@e
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@11
    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    #@14
    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    #@17
    .line 83
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
    .line 50
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    #@4
    if-ne v2, v5, :cond_0

    #@6
    .line 51
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    #@8
    const-string/jumbo v3, "RequestArcAction"

    #@b
    invoke-static {p1, v2, v3}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 54
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@14
    move-result v0

    #@15
    .line 55
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    #@18
    .line 72
    return v4

    #@19
    .line 52
    .end local v0    # "opcode":I
    :cond_0
    return v4

    #@1a
    .line 60
    .restart local v0    # "opcode":I
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@1d
    move-result-object v2

    #@1e
    aget-byte v2, v2, v4

    #@20
    and-int/lit16 v1, v2, 0xff

    #@22
    .line 61
    .local v1, "originalOpcode":I
    const/16 v2, 0xc4

    #@24
    if-ne v1, v2, :cond_1

    #@26
    .line 62
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    #@29
    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    #@2c
    .line 64
    return v5

    #@2d
    .line 65
    :cond_1
    const/16 v2, 0xc3

    #@2f
    if-ne v1, v2, :cond_2

    #@31
    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    #@38
    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    #@3b
    .line 68
    return v5

    #@3c
    .line 70
    :cond_2
    return v4

    #@3d
    .line 55
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
