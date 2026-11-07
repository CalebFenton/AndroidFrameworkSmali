.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeleteResponderBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$ojTOTdEBRJxlUIn0LZQuFXeoTUo(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->lambda$handleDeleteSessionRequest$0()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2439
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleDeleteSessionRequest$0()V
    .registers 2

    .line 2479
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosed()V

    .line 2480
    return-void
.end method


# virtual methods
.method protected blacklist buildIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 7
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2442
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    .line 2443
    .local v0, "payloads":[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist handleDeleteSessionRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2474
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->validateIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 2475
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->buildIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    .line 2477
    .local v0, "resp":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 2482
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2484
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 2485
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->close()V

    .line 2486
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2488
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 2489
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V
    :try_end_41
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_0 .. :try_end_41} :catch_42

    .line 2493
    .end local v0    # "resp":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    goto :goto_4b

    .line 2490
    :catch_42
    move-exception v0

    .line 2492
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2494
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_4b
    return-void
.end method

.method protected blacklist validateIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .registers 5
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "expectedRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 2455
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v0

    if-ne p2, v0, :cond_9

    .line 2458
    return-void

    .line 2456
    :cond_9
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Delete request received in wrong SA"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
