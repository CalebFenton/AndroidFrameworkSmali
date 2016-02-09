.class Lcom/android/server/hdmi/HdmiControlService$BinderService$11;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendStandby(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceId:I

.field final synthetic val$deviceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$deviceId"    # I
    .param p3, "val$deviceType"    # I

    #@0
    .prologue
    .line 1518
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$deviceId:I

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$deviceType:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1521
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@7
    move-result-object v2

    #@8
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$deviceId:I

    #@a
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@d
    move-result-object v1

    #@e
    .line 1522
    .local v1, "mhlDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v1, :cond_0

    #@10
    .line 1523
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->sendStandby()V

    #@13
    .line 1524
    return-void

    #@14
    .line 1526
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@16
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@18
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@1b
    move-result-object v2

    #@1c
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$deviceType:I

    #@1e
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@21
    move-result-object v0

    #@22
    .line 1527
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_1

    #@24
    .line 1528
    const-string/jumbo v2, "HdmiControlService"

    #@27
    const-string/jumbo v3, "Local device not available"

    #@2a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1529
    return-void

    #@2e
    .line 1531
    :cond_1
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$deviceId:I

    #@30
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendStandby(I)V

    #@33
    .line 1520
    return-void
.end method
