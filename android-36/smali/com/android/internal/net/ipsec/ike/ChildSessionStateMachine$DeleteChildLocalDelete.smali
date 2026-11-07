.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteChildLocalDelete"
.end annotation


# instance fields
.field private blacklist mSimulDeleteDetected:Z

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1432
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->mSimulDeleteDetected:Z

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 3

    .line 1437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->mSimulDeleteDetected:Z

    .line 1438
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->sendDeleteChild(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 1439
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1512
    const/16 v0, 0x6b

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 1443
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_a0

    .line 1506
    const/4 v0, 0x0

    return v0

    .line 1446
    :pswitch_8
    :try_start_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;

    .line 1447
    .local v0, "resp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->responsePayloads:Ljava/util/List;

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->exchangeType:I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->validateDeleteRespPayloadAndExchangeType(Ljava/util/List;I)V

    .line 1450
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->responsePayloads:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1451
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v2

    .line 1453
    .local v2, "currentSaSpiFound":Z
    if-nez v2, :cond_2c

    iget-boolean v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->mSimulDeleteDetected:Z

    if-eqz v3, :cond_24

    goto :goto_2c

    .line 1454
    :cond_24
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v4, "Found no remote SPI in received Delete response."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;
    .end local p1    # "message":Landroid/os/Message;
    throw v3

    .line 1456
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;
    .restart local p1    # "message":Landroid/os/Message;
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_39

    iget-boolean v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->mSimulDeleteDetected:Z

    if-eqz v3, :cond_39

    .line 1461
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v4, "Found remote SPI in the Delete response in a simultaneous deletion case"

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 1466
    :cond_39
    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->closeSessionAndNotifyUser(Z)V
    :try_end_3c
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_8 .. :try_end_3c} :catch_3d

    .line 1470
    .end local v0    # "resp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;
    .end local v2    # "currentSaSpiFound":Z
    goto :goto_43

    .line 1467
    :catch_3d
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v2, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mhandleChildFatalError(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/lang/Exception;)V

    .line 1471
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_43
    return v1

    .line 1473
    :pswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 1474
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    packed-switch v2, :pswitch_data_a8

    .line 1499
    :pswitch_4d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exchange subtype for Child Session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 1503
    return v1

    .line 1496
    :pswitch_6b
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mreplyErrorNotification(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V

    .line 1497
    return v1

    .line 1478
    :pswitch_73
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 1481
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Found no remote SPI for mCurrentChildSaRecord in a Delete request"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_9e

    .line 1487
    :cond_8a
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v5, 0x25

    invoke-interface {v2, v5, v1, v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1492
    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;->mSimulDeleteDetected:Z

    .line 1494
    :goto_9e
    return v1

    nop

    :pswitch_data_a0
    .packed-switch 0x12e
        :pswitch_44
        :pswitch_8
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x5
        :pswitch_73
        :pswitch_4d
        :pswitch_6b
    .end packed-switch
.end method
