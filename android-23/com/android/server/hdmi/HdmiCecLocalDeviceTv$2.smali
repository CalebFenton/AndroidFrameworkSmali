.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V
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
    .line 766
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDeviceDiscoveryDone(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 769
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v4

    #@4
    .local v4, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@10
    .line 770
    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@12
    invoke-virtual {v5, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@15
    goto :goto_0

    #@16
    .line 776
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@18
    iget-object v5, v5, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1a
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2e
    .line 777
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@30
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@37
    goto :goto_1

    #@38
    .line 780
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3a
    new-instance v6, Lcom/android/server/hdmi/HotplugDetectionAction;

    #@3c
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3e
    invoke-direct {v6, v7}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@41
    invoke-virtual {v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@44
    .line 781
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@46
    new-instance v6, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    #@48
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@4a
    invoke-direct {v6, v7}, Lcom/android/server/hdmi/PowerStatusMonitorAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@4d
    invoke-virtual {v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@50
    .line 786
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@52
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@55
    move-result-object v0

    #@56
    .line 787
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_2

    #@58
    .line 788
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@5a
    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@5d
    .line 768
    :goto_2
    return-void

    #@5e
    .line 790
    :cond_2
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@60
    const/4 v6, 0x0

    #@61
    const/4 v7, 0x1

    #@62
    invoke-virtual {v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@65
    goto :goto_2
.end method
