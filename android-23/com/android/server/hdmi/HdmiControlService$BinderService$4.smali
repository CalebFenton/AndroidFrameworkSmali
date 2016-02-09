.class Lcom/android/server/hdmi/HdmiControlService$BinderService$4;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 1300
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@6
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap21(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@9
    .line 1302
    return-void
.end method
