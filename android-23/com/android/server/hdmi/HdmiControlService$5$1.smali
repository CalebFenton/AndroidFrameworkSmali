.class Lcom/android/server/hdmi/HdmiControlService$5$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$5;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$5;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$5;

    #@0
    .prologue
    .line 2224
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2227
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    #@3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@d
    .line 2228
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    #@f
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@14
    move-result-object v0

    #@15
    const/16 v1, 0x67

    #@17
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    #@1a
    .line 2229
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    #@1c
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@1e
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap10(Lcom/android/server/hdmi/HdmiControlService;)V

    #@21
    .line 2226
    return-void
.end method
