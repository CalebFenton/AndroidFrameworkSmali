.class final Lcom/android/server/hdmi/SystemAudioActionFromTv;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromTv.java"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "sourceAddress"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@3
    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->getSourceAddress()I

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


# virtual methods
.method start()Z
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->removeSystemAudioActionInProgress()V

    #@3
    .line 46
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->sendSystemAudioModeRequest()V

    #@6
    .line 47
    const/4 v0, 0x1

    #@7
    return v0
.end method
