.class Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->processMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field final synthetic val$message:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .param p2, "val$message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

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
    .line 330
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@2
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@9
    .line 329
    return-void
.end method
