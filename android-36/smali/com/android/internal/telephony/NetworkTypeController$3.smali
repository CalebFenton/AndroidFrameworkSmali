.class Lcom/android/internal/telephony/NetworkTypeController$3;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onNrAdvancedCapableByPcoChanged(Z)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNrAdvancedAllowedByPco="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public blacklist onPhysicalLinkStatusChanged(I)V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 193
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist onQosSessionsChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$3;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
