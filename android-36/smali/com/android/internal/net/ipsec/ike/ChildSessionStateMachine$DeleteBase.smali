.class abstract Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeleteBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1389
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method protected blacklist validateDeleteRespPayloadAndExchangeType(Ljava/util/List;I)V
    .registers 9
    .param p2, "exchangeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 1395
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/16 v0, 0x25

    if-ne p2, v0, :cond_60

    .line 1400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 1402
    .local v1, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v2, :pswitch_data_7a

    .line 1420
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected payload type in Delete Child response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_5e

    .line 1407
    :pswitch_34
    goto :goto_5e

    .line 1409
    :pswitch_35
    move-object v2, v1

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 1410
    .local v2, "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v3

    if-nez v3, :cond_59

    .line 1411
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected or unknown status notification in Delete Child response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 1415
    goto :goto_5e

    .line 1418
    :cond_59
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v0

    throw v0

    .line 1424
    .end local v1    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .end local v2    # "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :goto_5e
    goto :goto_8

    .line 1425
    :cond_5f
    return-void

    .line 1396
    :cond_60
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exchange type in Delete Child response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_7a
    .packed-switch 0x29
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method
