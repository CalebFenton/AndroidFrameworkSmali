.class Lcom/android/server/hdmi/HdmiControlService$BinderService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$deviceId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p3, "val$deviceId"    # I

    #@0
    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1225
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1226
    const-string/jumbo v2, "HdmiControlService"

    #@8
    const-string/jumbo v3, "Callback cannot be null"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1227
    return-void

    #@f
    .line 1229
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@11
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@13
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@16
    move-result-object v1

    #@17
    .line 1230
    .local v1, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v1, :cond_1

    #@19
    .line 1231
    const-string/jumbo v2, "HdmiControlService"

    #@1c
    const-string/jumbo v3, "Local tv device not available"

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1232
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@24
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@26
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@28
    const/4 v4, 0x2

    #@29
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->-wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2c
    .line 1233
    return-void

    #@2d
    .line 1235
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2f
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@31
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@34
    move-result-object v2

    #@35
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    #@37
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@3a
    move-result-object v0

    #@3b
    .line 1236
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_3

    #@3d
    .line 1237
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    #@40
    move-result v2

    #@41
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@44
    move-result v3

    #@45
    if-ne v2, v3, :cond_2

    #@47
    .line 1238
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@49
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4b
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@4d
    const/4 v4, 0x0

    #@4e
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->-wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@51
    .line 1239
    return-void

    #@52
    .line 1244
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@54
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@57
    .line 1245
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    #@5a
    move-result v2

    #@5b
    invoke-virtual {v1, v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@5e
    .line 1246
    return-void

    #@5f
    .line 1248
    :cond_3
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    #@61
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@63
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@66
    .line 1224
    return-void
.end method
