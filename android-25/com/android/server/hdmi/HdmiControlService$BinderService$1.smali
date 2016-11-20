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
    .line 1244
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
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1247
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1248
    const-string/jumbo v2, "HdmiControlService"

    #@8
    const-string/jumbo v3, "Callback cannot be null"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1249
    return-void

    #@f
    .line 1251
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@11
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@13
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@16
    move-result-object v1

    #@17
    .line 1252
    .local v1, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v1, :cond_2

    #@19
    .line 1253
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@1b
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@1d
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_1

    #@23
    .line 1254
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@25
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@27
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get19(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;

    #@2a
    move-result-object v2

    #@2b
    .line 1255
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2d
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2f
    iget v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    #@31
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@33
    .line 1254
    invoke-static {v3, v4, v5}, Lcom/android/server/hdmi/SelectRequestBuffer;->newDeviceSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/SelectRequestBuffer;->set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V

    #@3a
    .line 1256
    return-void

    #@3b
    .line 1258
    :cond_1
    const-string/jumbo v2, "HdmiControlService"

    #@3e
    const-string/jumbo v3, "Local tv device not available"

    #@41
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 1259
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@46
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@48
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@4a
    const/4 v4, 0x2

    #@4b
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@4e
    .line 1260
    return-void

    #@4f
    .line 1262
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@51
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@53
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-get13(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@56
    move-result-object v2

    #@57
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    #@59
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@5c
    move-result-object v0

    #@5d
    .line 1263
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_4

    #@5f
    .line 1264
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    #@62
    move-result v2

    #@63
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@66
    move-result v3

    #@67
    if-ne v2, v3, :cond_3

    #@69
    .line 1265
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@6b
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@6d
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@6f
    const/4 v4, 0x0

    #@70
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@73
    .line 1266
    return-void

    #@74
    .line 1271
    :cond_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@76
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@79
    .line 1272
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    #@7c
    move-result v2

    #@7d
    invoke-virtual {v1, v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@80
    .line 1273
    return-void

    #@81
    .line 1275
    :cond_4
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    #@83
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@85
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@88
    .line 1246
    return-void
.end method
