.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyChildLocalCreate"
.end annotation


# instance fields
.field private blacklist mRequestPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

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

    .line 1549
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 10

    .line 1555
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1556
    .local v0, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-boolean v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIsFirstChild:Z

    if-eqz v1, :cond_13

    .line 1557
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$maddDhGroupsFromChildSessionParamsIfAbsent(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v1

    move-object v0, v1

    move-object v4, v0

    goto :goto_14

    .line 1556
    :cond_13
    move-object v4, v0

    .line 1561
    .end local v0    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .local v4, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :goto_14
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1563
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1569
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getLocalSpi()I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1570
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v8

    .line 1562
    invoke-static/range {v1 .. v8}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getRekeyChildCreateReqPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;IZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    .line 1571
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v3, 0x24

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    :try_end_54
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_54} :catch_55
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_0 .. :try_end_54} :catch_55

    .line 1580
    .end local v4    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    goto :goto_6f

    .line 1576
    :catch_55
    move-exception v0

    .line 1577
    .local v0, "e":Landroid/util/AndroidException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v2, "Fail to assign Child SPI. Schedule a retry for rekey Child"

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    sget-wide v2, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->RETRY_INTERVAL_MS:J

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->rescheduleRekey(J)V

    .line 1579
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1581
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_6f
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 1716
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 1717
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1721
    const/16 v0, 0x6d

    return v0
.end method

.method protected blacklist handleErrorNotify(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1710
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v1, "Received error notification for rekey Child. Schedule a retry"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    sget-wide v1, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->RETRY_INTERVAL_MS:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->rescheduleRekey(J)V

    .line 1712
    return-void
.end method

.method protected blacklist handleProcessRespOrSaCreationFailAndQuit(ILjava/lang/Exception;)V
    .registers 4
    .param p1, "registeredSpi"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1703
    if-eqz p1, :cond_b

    .line 1704
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaDeleted(I)V

    .line 1706
    :cond_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mhandleChildFatalError(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/lang/Exception;)V

    .line 1707
    return-void
.end method

.method protected blacklist notifyCallerForLocalChildSaRekey()V
    .registers 4

    .line 1690
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)V

    .line 1692
    .local v0, "createRunnable":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1693
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 27
    .param p1, "message"    # Landroid/os/Message;

    .line 1585
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18c

    .line 1685
    const/16 v24, 0x0

    return v24

    .line 1600
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;

    .line 1601
    .local v5, "resp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;
    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    iget-object v7, v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->responsePayloads:Ljava/util/List;

    iget v8, v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->exchangeType:I

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1607
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v10

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v12

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v13, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1602
    const/16 v9, 0x24

    invoke-static/range {v6 .. v13}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateRekeyChildResp(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object v6

    .line 1612
    .local v6, "createChildResult":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    iget v0, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    packed-switch v0, :pswitch_data_194

    .line 1679
    const/16 v23, 0x1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_15f

    .line 1675
    :pswitch_59
    iget-object v0, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->handleErrorNotify(Ljava/lang/Exception;)V

    .line 1676
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1677
    const/16 v23, 0x1

    goto/16 :goto_15f

    .line 1671
    :pswitch_6b
    iget v0, v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->registeredSpi:I

    iget-object v4, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->handleProcessRespOrSaCreationFailAndQuit(ILjava/lang/Exception;)V

    .line 1673
    const/16 v23, 0x1

    goto/16 :goto_15f

    .line 1616
    :pswitch_76
    :try_start_76
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->negotiatedProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    iput-object v7, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1618
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1620
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    iget-object v10, v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->responsePayloads:Ljava/util/List;

    iget-object v11, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v12, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v13, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v14, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v15, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    :try_end_9e
    .catch Ljava/security/GeneralSecurityException; {:try_start_76 .. :try_end_9e} :catch_140
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_76 .. :try_end_9e} :catch_140
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_76 .. :try_end_9e} :catch_140
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_9e} :catch_140
    .catchall {:try_start_76 .. :try_end_9e} :catchall_13e

    const/16 v23, 0x1

    :try_start_a0
    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSkD:[B

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1632
    invoke-virtual {v3}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v20

    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    move-object/from16 v18, v4

    iget-object v4, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 1635
    invoke-virtual {v4}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v4

    .line 1634
    invoke-static {v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mbuildSaLifetimeAlarmSched(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object v22

    .line 1619
    const/16 v21, 0x1

    move-object/from16 v16, v7

    invoke-static/range {v8 .. v22}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->makeChildSaRecord(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[BZZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1637
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1638
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v0

    .line 1639
    .local v0, "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v3}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v3

    .line 1641
    .local v3, "dhGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1642
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 1643
    const/4 v8, 0x0

    goto :goto_f6

    .line 1644
    :cond_ea
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v8, v4

    :goto_f6
    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1645
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v4

    const/16 v24, 0x0

    aget-object v4, v4, v24

    iget v9, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1646
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v4

    const/16 v24, 0x0

    aget-object v4, v4, v24

    .line 1647
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v10

    .line 1648
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 1649
    move/from16 v11, v23

    goto :goto_129

    .line 1650
    :cond_11d
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    :goto_129
    nop

    .line 1641
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1654
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->notifyCallerForLocalChildSaRekey()V

    .line 1656
    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v4, v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_13b
    .catch Ljava/security/GeneralSecurityException; {:try_start_a0 .. :try_end_13b} :catch_13c
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_a0 .. :try_end_13b} :catch_13c
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_a0 .. :try_end_13b} :catch_13c
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_13b} :catch_13c
    .catchall {:try_start_a0 .. :try_end_13b} :catchall_13e

    .end local v0    # "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "dhGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_148

    .line 1657
    :catch_13c
    move-exception v0

    goto :goto_143

    .line 1666
    :catchall_13e
    move-exception v0

    goto :goto_154

    .line 1657
    :catch_140
    move-exception v0

    const/16 v23, 0x1

    .line 1662
    .local v0, "e":Ljava/lang/Exception;
    :goto_143
    :try_start_143
    iget v3, v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->registeredSpi:I

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->handleProcessRespOrSaCreationFailAndQuit(ILjava/lang/Exception;)V
    :try_end_148
    .catchall {:try_start_143 .. :try_end_148} :catchall_13e

    .line 1666
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_148
    iget-object v0, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1667
    iget-object v0, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1668
    nop

    .line 1669
    goto :goto_15f

    .line 1666
    :goto_154
    iget-object v3, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v3}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1667
    iget-object v3, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v3}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1668
    throw v0

    .line 1683
    :goto_15f
    return v23

    .line 1587
    .end local v5    # "resp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;
    .end local v6    # "createChildResult":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    :pswitch_160
    const/16 v23, 0x1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 1589
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_182

    .line 1592
    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    move/from16 v4, v23

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->sendDeleteChild(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 1593
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->closeSessionAndNotifyUser(Z)V

    .line 1594
    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mClosedAndAwaitResponse:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    goto :goto_189

    .line 1596
    :cond_182
    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v4, 0x2b

    invoke-static {v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mreplyErrorNotification(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V

    .line 1598
    :goto_189
    const/16 v23, 0x1

    return v23

    :pswitch_data_18c
    .packed-switch 0x12e
        :pswitch_160
        :pswitch_c
    .end packed-switch

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_76
        :pswitch_6b
        :pswitch_59
    .end packed-switch
.end method
