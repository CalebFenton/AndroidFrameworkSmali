.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimulRekeyIkeRemoteDelete"
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

    .line 5531
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5565
    const/16 v0, 0xe

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5539
    packed-switch p2, :pswitch_data_42

    .line 5556
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 5561
    return-void

    .line 5542
    :pswitch_13
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->validateIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5544
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5545
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->buildIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    .line 5546
    .local v0, "respMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5548
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->finishRekey()V

    .line 5549
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_37
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_13 .. :try_end_37} :catch_38

    .line 5553
    .end local v0    # "respMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    goto :goto_41

    .line 5550
    :catch_38
    move-exception v0

    .line 5552
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 5554
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x4
        :pswitch_13
    .end packed-switch
.end method
