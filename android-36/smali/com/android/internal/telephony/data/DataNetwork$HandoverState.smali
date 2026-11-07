.class final Lcom/android/internal/telephony/data/DataNetwork$HandoverState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandoverState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$8deFhA609hzCUVz_8mruLWhDnlc(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;JI)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->lambda$processMessage$0(JI)V

    return-void
.end method

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

    .line 1842
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$processMessage$0(JI)V
    .registers 11

    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v3

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v1, 0xc

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$400(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v1

    .line 1847
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x14

    .line 1846
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1849
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v1, 0x14

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$500(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1855
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

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

    .line 1861
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "Defer message "

    if-eq v0, v1, :cond_13c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_11c

    const/16 v1, 0xf

    if-eq v0, v1, :cond_104

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_f7

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_11c

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_92

    packed-switch v0, :pswitch_data_192

    const/4 p0, 0x0

    return p0

    .line 1915
    :pswitch_40
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data service did not respond the handover request within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v3

    .line 1917
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result v3

    int-to-long v3, v3

    .line 1916
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1afe68cb-8b41-4964-a737-4f34372429ea"

    .line 1915
    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v0, 0xffff

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1925
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;

    const-wide/16 v3, -0x1

    const/4 v1, 0x3

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;JI)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1929
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_191

    .line 1867
    :cond_92
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1868
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1869
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1870
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    if-eq v1, v4, :cond_ce

    .line 1871
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropped unrelated "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data call list changed event. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1871
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_191

    .line 1875
    :cond_ce
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1876
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_191

    .line 1904
    :cond_f7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monStartHandover(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    goto/16 :goto_191

    .line 1907
    :cond_104
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1909
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "data_call_response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataCallResponse;

    .line 1910
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monHandoverResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    goto :goto_191

    .line 1887
    :cond_11c
    :pswitch_11c
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1888
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_191

    .line 1891
    :cond_13c
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-ne v0, v2, :cond_164

    .line 1893
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1894
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_191

    .line 1898
    :cond_164
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v1, 0x10001

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1899
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": transition to disconnected state"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 1900
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_191
    return v2

    :pswitch_data_192
    .packed-switch 0x14
        :pswitch_40
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
    .end packed-switch
.end method
