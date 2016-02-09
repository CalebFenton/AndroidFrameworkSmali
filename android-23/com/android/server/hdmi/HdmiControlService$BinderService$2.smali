.class Lcom/android/server/hdmi/HdmiControlService$BinderService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$portId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p3, "val$portId"    # I

    #@0
    .prologue
    .line 1256
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

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
    .line 1259
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1260
    const-string/jumbo v1, "HdmiControlService"

    #@7
    const-string/jumbo v2, "Callback cannot be null"

    #@a
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1261
    return-void

    #@e
    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@10
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@12
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@15
    move-result-object v0

    #@16
    .line 1264
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_1

    #@18
    .line 1265
    const-string/jumbo v1, "HdmiControlService"

    #@1b
    const-string/jumbo v2, "Local tv device not available"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1266
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@23
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@25
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@27
    const/4 v3, 0x2

    #@28
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->-wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2b
    .line 1267
    return-void

    #@2c
    .line 1269
    :cond_1
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    #@2e
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@33
    .line 1258
    return-void
.end method
