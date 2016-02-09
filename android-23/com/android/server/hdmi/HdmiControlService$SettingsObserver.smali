.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    .line 501
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 500
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 507
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 508
    .local v2, "option":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v5, v2, v7}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@a
    move-result v0

    #@b
    .line 509
    .local v0, "enabled":Z
    const-string/jumbo v5, "hdmi_control_enabled"

    #@e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 511
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@16
    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    #@19
    .line 506
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 509
    :cond_1
    const-string/jumbo v5, "hdmi_control_auto_wakeup_enabled"

    #@1d
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 514
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@25
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_2

    #@2b
    .line 515
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2d
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    #@34
    .line 517
    :cond_2
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@36
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap2(Z)I

    #@39
    move-result v6

    #@3a
    invoke-virtual {v5, v7, v6}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(II)V

    #@3d
    goto :goto_0

    #@3e
    .line 509
    :cond_3
    const-string/jumbo v5, "hdmi_control_auto_device_off_enabled"

    #@41
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_4

    #@47
    .line 520
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@49
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->-get9(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v4

    #@51
    .local v4, "type$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_0

    #@57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v5

    #@5b
    check-cast v5, Ljava/lang/Integer;

    #@5d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@60
    move-result v3

    #@61
    .line 521
    .local v3, "type":I
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@63
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@6a
    move-result-object v1

    #@6b
    .line 522
    .local v1, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setAutoDeviceOff(Z)V

    #@6e
    goto :goto_1

    #@6f
    .line 509
    .end local v1    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v3    # "type":I
    .end local v4    # "type$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v5, "mhl_input_switching_enabled"

    #@72
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v5

    #@76
    if-eqz v5, :cond_5

    #@78
    .line 527
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@7a
    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    #@7d
    goto :goto_0

    #@7e
    .line 509
    :cond_5
    const-string/jumbo v5, "mhl_power_charge_enabled"

    #@81
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v5

    #@85
    if-eqz v5, :cond_0

    #@87
    .line 530
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@89
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@8c
    move-result-object v5

    #@8d
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap2(Z)I

    #@90
    move-result v6

    #@91
    const/16 v7, 0x66

    #@93
    invoke-virtual {v5, v7, v6}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    #@96
    goto :goto_0
.end method
