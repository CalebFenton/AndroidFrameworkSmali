.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimulRekeyIkeLocalDelete"
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

    .line 5463
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 5

    .line 5466
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5468
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5523
    const/16 v0, 0xd

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5480
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 5484
    return-void
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "exception"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 5508
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-ne v0, p1, :cond_1a

    .line 5509
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Invalid syntax on IKE Delete response. Shutting down old IKE SA and finishing rekey"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5513
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->finishRekey()V

    .line 5514
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    goto :goto_24

    .line 5516
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delete response received on incorrect SA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 5519
    :goto_24
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5489
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->validateIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5490
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->finishRekey()V

    .line 5491
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_13
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_0 .. :try_end_13} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_2d

    .line 5499
    :catch_14
    move-exception v0

    .line 5501
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_2e

    .line 5492
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_19
    move-exception v0

    .line 5493
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "Invalid syntax on IKE Delete response. Shutting down old IKE SA and finishing rekey"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5497
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->finishRekey()V

    .line 5498
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5502
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_2d
    nop

    .line 5503
    :goto_2e
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 5472
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 5473
    return-void
.end method
