.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimulRekeyIkeLocalDeleteRemoteDelete"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5358
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist finishDeleteIkeSaAwaitingLocalDel()V
    .registers 3

    .line 5437
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5439
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5440
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->close()V

    .line 5441
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5443
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5444
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 6

    .line 5364
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->compareTo(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)I

    move-result v0

    if-lez v0, :cond_27

    .line 5365
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5366
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5367
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    goto :goto_3f

    .line 5369
    :cond_27
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5370
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5371
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5373
    :goto_3f
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5376
    invoke-virtual {p0, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5378
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 5448
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->finishRekey()V

    .line 5449
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5451
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5455
    const/16 v0, 0xc

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5388
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v0

    .line 5389
    .local v0, "ikeSaRecordForPacket":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    packed-switch p2, :pswitch_data_36

    .line 5408
    return-void

    .line 5392
    :pswitch_a
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->validateIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5393
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5394
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->buildIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    .line 5395
    .local v1, "respMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5399
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_2b
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_a .. :try_end_2b} :catch_2c

    .line 5403
    .end local v1    # "respMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    goto :goto_34

    .line 5400
    :catch_2c
    move-exception v1

    .line 5401
    .local v1, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v3, "Validation failed for delete request"

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5404
    .end local v1    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "exception"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 5427
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-ne v0, p1, :cond_11

    .line 5428
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Invalid syntax on IKE Delete response. Shutting down anyways"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5429
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->finishDeleteIkeSaAwaitingLocalDel()V

    goto :goto_1b

    .line 5431
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delete response received on incorrect SA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 5434
    :goto_1b
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5413
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->validateIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5414
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->finishDeleteIkeSaAwaitingLocalDel()V
    :try_end_a
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_0 .. :try_end_a} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_1b

    .line 5418
    :catch_b
    move-exception v0

    .line 5420
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_1c

    .line 5415
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_10
    move-exception v0

    .line 5416
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "Invalid syntax on IKE Delete response. Shutting down anyways"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5417
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->finishDeleteIkeSaAwaitingLocalDel()V

    .line 5421
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_1b
    nop

    .line 5422
    :goto_1c
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 5382
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 5383
    return-void
.end method
