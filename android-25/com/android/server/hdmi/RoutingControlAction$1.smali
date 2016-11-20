.class Lcom/android/server/hdmi/RoutingControlAction$1;
.super Ljava/lang/Object;
.source "RoutingControlAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/RoutingControlAction;->handleTimerEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/RoutingControlAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/RoutingControlAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/RoutingControlAction;

    #@0
    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/hdmi/RoutingControlAction$1;->this$0:Lcom/android/server/hdmi/RoutingControlAction;

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
    const/4 v0, 0x0

    #@1
    .line 169
    iget-object v1, p0, Lcom/android/server/hdmi/RoutingControlAction$1;->this$0:Lcom/android/server/hdmi/RoutingControlAction;

    #@3
    .line 170
    if-nez p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 169
    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/hdmi/RoutingControlAction;->-wrap0(Lcom/android/server/hdmi/RoutingControlAction;Z)V

    #@9
    .line 168
    return-void
.end method
