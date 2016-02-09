.class Lcom/android/server/hdmi/HdmiControlService$BinderService$10;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendVendorCommand(II[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceType:I

.field final synthetic val$hasVendorId:Z

.field final synthetic val$params:[B

.field final synthetic val$targetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$deviceType"    # I
    .param p3, "val$hasVendorId"    # Z
    .param p4, "val$targetAddress"    # I
    .param p5, "val$params"    # [B

    #@0
    .prologue
    .line 1495
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$deviceType:I

    #@4
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$hasVendorId:Z

    #@6
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$targetAddress:I

    #@8
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$params:[B

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1498
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$deviceType:I

    #@a
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@d
    move-result-object v0

    #@e
    .line 1499
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_0

    #@10
    .line 1500
    const-string/jumbo v1, "HdmiControlService"

    #@13
    const-string/jumbo v2, "Local device not available"

    #@16
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 1501
    return-void

    #@1a
    .line 1503
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$hasVendorId:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1504
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@20
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@22
    .line 1505
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@29
    move-result v2

    #@2a
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$targetAddress:I

    #@2c
    .line 1506
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2e
    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@30
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    #@33
    move-result v4

    #@34
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$params:[B

    #@36
    .line 1504
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@3d
    .line 1497
    :goto_0
    return-void

    #@3e
    .line 1508
    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@40
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@42
    .line 1509
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@49
    move-result v2

    #@4a
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$targetAddress:I

    #@4c
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$params:[B

    #@4e
    .line 1508
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@55
    goto :goto_0
.end method
