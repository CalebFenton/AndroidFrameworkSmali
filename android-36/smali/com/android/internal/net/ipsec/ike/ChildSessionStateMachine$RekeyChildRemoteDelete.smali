.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyChildRemoteDelete"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$0WT-YZP_yzEgTDEhhphiug0Nr20(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;Landroid/net/IpSecTransform;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->lambda$finishRekey$0(Landroid/net/IpSecTransform;)V

    return-void
.end method

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

    .line 2143
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method private blacklist handleDeleteRequest(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 2188
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Found no remote SPI for current SA in received Delete response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_29

    .line 2195
    :cond_15
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->sendDeleteChild(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 2196
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->finishRekey()V

    .line 2197
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2199
    :goto_29
    return-void
.end method

.method private synthetic blacklist lambda$finishRekey$0(Landroid/net/IpSecTransform;)V
    .registers 4
    .param p1, "outTransform"    # Landroid/net/IpSecTransform;

    .line 2206
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/ipsec/ike/ChildSessionCallback;->onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V

    .line 2208
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 5

    .line 2146
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2147
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v1, 0x65

    sget-wide v2, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->REKEY_DELETE_TIMEOUT_MS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessageDelayed(IJ)V

    .line 2148
    return-void
.end method

.method public blacklist exitState()V
    .registers 3

    .line 2215
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v1, 0x65

    # invokes: Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->access$000(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V

    .line 2216
    return-void
.end method

.method protected blacklist finishRekey()V
    .registers 4

    .line 2203
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getOutboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v0

    .line 2204
    .local v0, "outTransform":Landroid/net/IpSecTransform;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;Landroid/net/IpSecTransform;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 2210
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->finishRekey()V

    .line 2211
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 2220
    const/16 v0, 0x71

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 2152
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2153
    return v1

    .line 2156
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_34

    .line 2183
    const/4 v0, 0x0

    return v0

    .line 2158
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 2160
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    .line 2161
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->handleDeleteRequest(Ljava/util/List;)V

    goto :goto_25

    .line 2164
    :cond_1e
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mreplyErrorNotification(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V

    .line 2166
    :goto_25
    return v1

    .line 2179
    .end local v0    # "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    :sswitch_26
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->finishRekey()V

    .line 2180
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2181
    return v1

    nop

    :sswitch_data_34
    .sparse-switch
        0x65 -> :sswitch_26
        0x12e -> :sswitch_f
    .end sparse-switch
.end method
