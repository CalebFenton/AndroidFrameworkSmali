.class Lcom/android/server/hdmi/HdmiControlService$BinderService$8;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$mute:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$mute"    # Z

    #@0
    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$mute:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1450
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@7
    move-result-object v0

    #@8
    .line 1451
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    #@a
    .line 1452
    const-string/jumbo v1, "HdmiControlService"

    #@d
    const-string/jumbo v2, "Local tv device not available"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1453
    return-void

    #@14
    .line 1455
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$mute:Z

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeMute(Z)V

    #@19
    .line 1449
    return-void
.end method
