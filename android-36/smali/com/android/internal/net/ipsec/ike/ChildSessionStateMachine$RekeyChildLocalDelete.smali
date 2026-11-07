.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyChildLocalDelete"
.end annotation


# instance fields
.field private blacklist mSimulDeleteDetected:Z

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2072
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 4

    .line 2077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->mSimulDeleteDetected:Z

    .line 2078
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2079
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->sendDeleteChild(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 2080
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 2135
    const/16 v0, 0x70

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 2084
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2085
    return v1

    .line 2088
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6e

    .line 2129
    const/4 v0, 0x0

    return v0

    .line 2107
    :pswitch_f
    :try_start_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;

    .line 2108
    .local v0, "resp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->responsePayloads:Ljava/util/List;

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->exchangeType:I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->validateDeleteRespPayloadAndExchangeType(Ljava/util/List;I)V

    .line 2111
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->responsePayloads:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2112
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v2

    .line 2114
    .local v2, "currentSaSpiFound":Z
    iget-boolean v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->mSimulDeleteDetected:Z

    if-nez v3, :cond_31

    if-nez v2, :cond_31

    .line 2115
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v4, "Found no remote SPI for current SA in received Delete response. Shutting down old SA and finishing rekey."

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_f .. :try_end_31} :catch_32

    .line 2124
    .end local v0    # "resp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;
    .end local v2    # "currentSaSpiFound":Z
    :cond_31
    goto :goto_3a

    .line 2119
    :catch_32
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v3, "Received Delete response with invalid syntax or error notifications. Shutting down old SA and finishing rekey."

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2125
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_3a
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->finishRekey()V

    .line 2126
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2127
    return v1

    .line 2090
    :pswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 2092
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_65

    .line 2095
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v5, 0x25

    invoke-interface {v2, v5, v1, v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 2100
    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->mSimulDeleteDetected:Z

    goto :goto_6c

    .line 2102
    :cond_65
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mreplyErrorNotification(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V

    .line 2104
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x12e
        :pswitch_47
        :pswitch_f
    .end packed-switch
.end method
