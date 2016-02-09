.class Lcom/android/server/hdmi/HdmiControlService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field final synthetic val$finished:[I

.field final synthetic val$initiatedBy:I

.field final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "val$localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p5, "val$finished"    # [I
    .param p6, "val$initiatedBy"    # I

    #@0
    .prologue
    .line 587
    .local p3, "val$allocatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    .local p4, "val$allocatingDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@4
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    #@6
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatingDevices:Ljava/util/ArrayList;

    #@8
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$finished:[I

    #@a
    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .locals 5
    .param p1, "deviceType"    # I
    .param p2, "logicalAddress"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 590
    const/16 v1, 0xf

    #@3
    if-ne p2, v1, :cond_2

    #@5
    .line 591
    const-string/jumbo v1, "HdmiControlService"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Failed to allocate address:[device_type:"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "]"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatingDevices:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v1

    #@2c
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$finished:[I

    #@2e
    aget v3, v2, v4

    #@30
    add-int/lit8 v3, v3, 0x1

    #@32
    aput v3, v2, v4

    #@34
    if-ne v1, v3, :cond_1

    #@36
    .line 605
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@38
    const/4 v2, 0x1

    #@39
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-set0(Lcom/android/server/hdmi/HdmiControlService;Z)Z

    #@3c
    .line 606
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    #@3e
    const/4 v2, 0x4

    #@3f
    if-eq v1, v2, :cond_0

    #@41
    .line 609
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@43
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    #@45
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap16(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@48
    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4a
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    #@4c
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    #@4e
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->-wrap15(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V

    #@51
    .line 612
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@53
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get4(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->processMessages()V

    #@5a
    .line 589
    :cond_1
    return-void

    #@5b
    .line 595
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@5d
    invoke-static {v1, p2, p1, v4}, Lcom/android/server/hdmi/HdmiControlService;->-wrap0(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@60
    move-result-object v0

    #@61
    .line 597
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@63
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@66
    .line 598
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@68
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@6b
    move-result-object v1

    #@6c
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@6e
    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecController;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@71
    .line 599
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@73
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    #@7a
    .line 600
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    #@7c
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@7e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@81
    goto :goto_0
.end method
