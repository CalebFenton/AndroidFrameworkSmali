.class Lcom/android/server/hdmi/HdmiControlService$BinderService$16;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendMhlVendorCommand(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$data:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I

.field final synthetic val$portId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$portId"    # I
    .param p3, "val$offset"    # I
    .param p4, "val$length"    # I
    .param p5, "val$data"    # [B

    #@0
    .prologue
    .line 1608
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$portId:I

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$offset:I

    #@6
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$length:I

    #@8
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$data:[B

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
    .line 1611
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1612
    const-string/jumbo v1, "HdmiControlService"

    #@d
    const-string/jumbo v2, "Hdmi control is disabled."

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1613
    return-void

    #@14
    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@16
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@18
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$portId:I

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@21
    move-result-object v0

    #@22
    .line 1616
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-nez v0, :cond_1

    #@24
    .line 1617
    const-string/jumbo v1, "HdmiControlService"

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "Invalid port id:"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$portId:I

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1618
    return-void

    #@41
    .line 1620
    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@43
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@45
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@48
    move-result-object v1

    #@49
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$portId:I

    #@4b
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$offset:I

    #@4d
    iget v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$length:I

    #@4f
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;->val$data:[B

    #@51
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->sendVendorCommand(III[B)V

    #@54
    .line 1610
    return-void
.end method
