.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "HdmiCecLocalDeviceTv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@2
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@2
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    #@b
    move-result-object v1

    #@c
    .line 141
    .local v1, "tvInfo":Landroid/media/tv/TvInputInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@f
    move-result-object v0

    #@10
    .line 142
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    #@12
    return-void

    #@13
    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@15
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@18
    move-result v3

    #@19
    invoke-static {v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-wrap0(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V

    #@1c
    .line 144
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 145
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@24
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@27
    move-result v3

    #@28
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedActiveSource(I)V

    #@2b
    .line 139
    :cond_1
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-wrap1(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V

    #@5
    .line 150
    return-void
.end method
