.class Lcom/android/server/hdmi/HdmiControlService$BinderService$3;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendKeyEvent(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceType:I

.field final synthetic val$isPressed:Z

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$keyCode"    # I
    .param p3, "val$isPressed"    # Z
    .param p4, "val$deviceType"    # I

    #@0
    .prologue
    .line 1277
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    #@4
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    #@6
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1280
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@a
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@c
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get2(Lcom/android/server/hdmi/HdmiControlService;)I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@13
    move-result-object v0

    #@14
    .line 1281
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    #@16
    .line 1282
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    #@18
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    #@1a
    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->sendKeyEvent(IZ)V

    #@1d
    .line 1283
    return-void

    #@1e
    .line 1285
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@20
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@22
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@25
    move-result-object v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1286
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2a
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2c
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@2f
    move-result-object v2

    #@30
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    #@32
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@35
    move-result-object v1

    #@36
    .line 1287
    .local v1, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v1, :cond_1

    #@38
    .line 1288
    const-string/jumbo v2, "HdmiControlService"

    #@3b
    const-string/jumbo v3, "Local device not available"

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1289
    return-void

    #@42
    .line 1291
    :cond_1
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    #@44
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    #@46
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendKeyEvent(IZ)V

    #@49
    .line 1279
    .end local v1    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_2
    return-void
.end method
