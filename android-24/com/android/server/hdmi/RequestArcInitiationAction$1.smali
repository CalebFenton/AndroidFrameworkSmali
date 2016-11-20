.class Lcom/android/server/hdmi/RequestArcInitiationAction$1;
.super Ljava/lang/Object;
.source "RequestArcInitiationAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/RequestArcInitiationAction;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/RequestArcInitiationAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@0
    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2
    .param p1, "error"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    if-eqz p1, :cond_0

    #@3
    .line 49
    iget-object v0, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/RequestArcInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    #@c
    .line 50
    iget-object v0, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@e
    invoke-virtual {v0}, Lcom/android/server/hdmi/RequestArcInitiationAction;->finish()V

    #@11
    .line 46
    :cond_0
    return-void
.end method
