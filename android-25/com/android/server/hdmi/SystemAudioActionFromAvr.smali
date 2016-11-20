.class final Lcom/android/server/hdmi/SystemAudioActionFromAvr;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromAvr.java"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@3
    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->getSourceAddress()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    #@b
    .line 38
    return-void
.end method

.method private handleSystemAudioActionFromAvr()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 51
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mTargetAudioStatus:Z

    #@3
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@a
    move-result v1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 52
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->finishWithCallback(I)V

    #@10
    .line 53
    return-void

    #@11
    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->getSourceAddress()I

    #@1e
    move-result v0

    #@1f
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mAvrLogicalAddress:I

    #@21
    .line 58
    const/16 v2, 0x72

    #@23
    const/4 v3, 0x4

    #@24
    .line 56
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@2b
    .line 59
    iput-boolean v4, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mTargetAudioStatus:Z

    #@2d
    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->sendSystemAudioModeRequest()V

    #@30
    .line 61
    return-void

    #@31
    .line 64
    :cond_1
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    #@33
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->removeAction(Ljava/lang/Class;)V

    #@36
    .line 66
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mTargetAudioStatus:Z

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 67
    const/4 v0, 0x1

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->setSystemAudioMode(Z)V

    #@3e
    .line 68
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->startAudioStatusAction()V

    #@41
    .line 50
    :goto_0
    return-void

    #@42
    .line 70
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->setSystemAudioMode(Z)V

    #@45
    .line 71
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->finishWithCallback(I)V

    #@48
    goto :goto_0
.end method


# virtual methods
.method start()Z
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->removeSystemAudioActionInProgress()V

    #@3
    .line 46
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->handleSystemAudioActionFromAvr()V

    #@6
    .line 47
    const/4 v0, 0x1

    #@7
    return v0
.end method
