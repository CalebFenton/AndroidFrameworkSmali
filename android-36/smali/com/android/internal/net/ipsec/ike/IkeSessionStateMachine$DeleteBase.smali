.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeleteBase"
.end annotation


# direct methods
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

    .line 2503
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method protected blacklist validateIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .registers 6
    .param p1, "resp"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "expectedSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 2506
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v0

    if-ne p2, v0, :cond_3e

    .line 2510
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_21

    .line 2516
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2520
    return-void

    .line 2517
    :cond_19
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Unexpected payloads - IKE Delete response should be empty."

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2511
    :cond_21
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exchange type; expected INFORMATIONAL, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2507
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response received on incorrect SA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
