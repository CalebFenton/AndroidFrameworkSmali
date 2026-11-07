.class final Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1946
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v1

    .line 1950
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkDisconnectingTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x14

    .line 1949
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1951
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 1956
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x14

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->access$600(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1962
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_8b

    const/16 v1, 0xd

    if-eq v0, v1, :cond_85

    const/16 v1, 0x13

    if-eq v0, v1, :cond_7d

    const/16 p1, 0x14

    if-eq v0, p1, :cond_3d

    packed-switch v0, :pswitch_data_ae

    const/4 p0, 0x0

    return p0

    .line 1994
    :pswitch_32
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1995
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_ac

    .line 1980
    :cond_3d
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL did not send data call list changed event after deactivate data call request within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v2

    .line 1983
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkDisconnectingTimeoutMs()I

    move-result v2

    int-to-long v2, v2

    .line 1982
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d0e4fa1c-c57b-4ba5-b4b6-8955487012cc"

    .line 1980
    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v0, 0x10004

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1986
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_ac

    .line 1973
    :cond_7d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1974
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_ac

    .line 1989
    :cond_85
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_ac

    .line 1964
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1965
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p1, "Ignore tear down request because network is being torn down."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_ac

    .line 1968
    :cond_9b
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$700(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$800(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1970
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V

    :goto_ac
    const/4 p0, 0x1

    return p0

    :pswitch_data_ae
    .packed-switch 0x16
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method
