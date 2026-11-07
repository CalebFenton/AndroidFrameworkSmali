.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RekeyIkeHandlerBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


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

    .line 4800
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private blacklist validateIkeRekeyCommon(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 10
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 4802
    const/4 v0, 0x0

    .line 4803
    .local v0, "hasSaPayload":Z
    const/4 v1, 0x0

    .line 4804
    .local v1, "hasKePayload":Z
    const/4 v2, 0x0

    .line 4805
    .local v2, "hasNoncePayload":Z
    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 4806
    .local v4, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v5, :sswitch_data_4e

    .line 4823
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unexpected payload in IKE REKEY request. Payload type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_3d

    .line 4818
    :sswitch_35
    goto :goto_3d

    .line 4821
    :sswitch_36
    goto :goto_3d

    .line 4814
    :sswitch_37
    const/4 v2, 0x1

    .line 4815
    goto :goto_3d

    .line 4811
    :sswitch_39
    const/4 v1, 0x1

    .line 4812
    goto :goto_3d

    .line 4808
    :sswitch_3b
    const/4 v0, 0x1

    .line 4809
    nop

    .line 4827
    .end local v4    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :goto_3d
    goto :goto_9

    .line 4829
    :cond_3e
    if-eqz v0, :cond_45

    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    .line 4832
    return-void

    .line 4830
    :cond_45
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v4, "SA, KE or Nonce payload missing."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_4e
    .sparse-switch
        0x21 -> :sswitch_3b
        0x22 -> :sswitch_39
        0x28 -> :sswitch_37
        0x29 -> :sswitch_36
        0x2b -> :sswitch_35
    .end sparse-switch
.end method


# virtual methods
.method protected blacklist handleErrorNotifyIfExists(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)Z
    .registers 11
    .param p1, "respMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "isSimulRekey"    # Z

    .line 4886
    const/4 v0, 0x0

    .line 4887
    .local v0, "invalidSyntaxNotifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    const/4 v1, 0x0

    .line 4888
    .local v1, "tempFailureNotifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    const/4 v2, 0x0

    .line 4890
    .local v2, "firstErrorNotifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    const-class v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4891
    const/16 v4, 0x29

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 4893
    .local v3, "notificationPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4894
    .local v5, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_f

    .line 4896
    :cond_22
    if-nez v2, :cond_25

    move-object v2, v5

    .line 4898
    :cond_25
    const/4 v6, 0x7

    iget v7, v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    if-ne v6, v7, :cond_2c

    .line 4899
    move-object v0, v5

    goto :goto_33

    .line 4900
    :cond_2c
    const/16 v6, 0x2b

    iget v7, v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    if-ne v6, v7, :cond_33

    .line 4901
    move-object v1, v5

    .line 4903
    .end local v5    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_33
    :goto_33
    goto :goto_f

    .line 4906
    :cond_34
    if-nez v2, :cond_38

    const/4 v4, 0x0

    return v4

    .line 4909
    :cond_38
    const/4 v4, 0x1

    if-eqz v0, :cond_4d

    .line 4911
    nop

    .line 4912
    :try_start_3c
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v5

    .line 4913
    .local v5, "exception":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V
    :try_end_45
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_3c .. :try_end_45} :catch_46

    .line 4917
    .end local v5    # "exception":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    goto :goto_4c

    .line 4914
    :catch_46
    move-exception v5

    .line 4916
    .local v5, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4918
    .end local v5    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_4c
    return v4

    .line 4921
    :cond_4d
    if-eqz v1, :cond_57

    .line 4923
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v6, "Received TEMPORARY_FAILURE for rekey IKE. Already handled during decoding."

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_82

    .line 4926
    :cond_57
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received error notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for rekey IKE. Schedule a retry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;)V

    .line 4930
    if-nez p2, :cond_82

    .line 4931
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    sget-wide v6, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->RETRY_INTERVAL_MS:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->rescheduleRekey(J)V

    .line 4935
    :cond_82
    :goto_82
    if-eqz p2, :cond_8e

    .line 4936
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    goto :goto_97

    .line 4938
    :cond_8e
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 4940
    :goto_97
    return v4
.end method

.method protected blacklist validateAndBuildIkeSa(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 31
    .param p1, "reqMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "respMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p3, "isLocalInit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4947
    move-object/from16 v1, p0

    if-eqz p3, :cond_f

    .line 4948
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_19

    .line 4949
    :cond_f
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_19
    move-object v2, v0

    .line 4951
    .local v2, "initAddr":Ljava/net/InetAddress;
    if-eqz p3, :cond_27

    .line 4952
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_31

    .line 4953
    :cond_27
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_31
    move-object v3, v0

    .line 4955
    .local v3, "respAddr":Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 4957
    .local v4, "negotiatedProposals":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;>;"
    :try_start_33
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 4958
    const/16 v5, 0x21

    move-object/from16 v8, p1

    invoke-virtual {v8, v5, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 4959
    .local v0, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    const-class v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 4960
    move-object/from16 v9, p2

    invoke-virtual {v9, v5, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 4964
    .local v5, "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v7

    .line 4969
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 4965
    invoke-static {v0, v5, v6, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getVerifiedNegotiatedIkeProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Landroid/util/Pair;

    move-result-object v6

    move-object v4, v6

    .line 4970
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    move-object/from16 v17, v6

    .line 4971
    .local v17, "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    .line 4975
    .local v6, "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    const/4 v7, 0x0

    .line 4977
    .local v7, "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    iget-object v10, v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v10}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v10}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-result-object v10

    .line 4978
    .local v10, "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    invoke-virtual {v10}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v12
    :try_end_7a
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_33 .. :try_end_7a} :catch_10b
    .catch Ljava/security/GeneralSecurityException; {:try_start_33 .. :try_end_7a} :catch_10b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_7a} :catch_10b

    if-nez v12, :cond_8f

    .line 4979
    :try_start_7c
    iget-object v12, v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 4981
    invoke-virtual {v12}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v12

    aget-object v12, v12, v11

    .line 4980
    invoke-static {v12}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    move-result-object v12
    :try_end_88
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_7c .. :try_end_88} :catch_8a
    .catch Ljava/security/GeneralSecurityException; {:try_start_7c .. :try_end_88} :catch_8a
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_88} :catch_8a

    move-object v7, v12

    goto :goto_8f

    .line 5010
    .end local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v5    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v6    # "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .end local v7    # "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v10    # "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v17    # "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    :catch_8a
    move-exception v0

    move-object/from16 v22, v2

    goto/16 :goto_10e

    .line 4983
    .restart local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v5    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v6    # "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .restart local v7    # "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local v10    # "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local v17    # "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    :cond_8f
    :goto_8f
    :try_start_8f
    iget-object v12, v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v12}, Landroid/net/ipsec/ike/IkeSaProposal;->getPrfTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-static {v12}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    move-result-object v12
    :try_end_9b
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_8f .. :try_end_9b} :catch_10b
    .catch Ljava/security/GeneralSecurityException; {:try_start_8f .. :try_end_9b} :catch_10b
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9b} :catch_10b

    .line 4987
    .local v12, "newPrf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    if-eqz p3, :cond_a6

    .line 4988
    :try_start_9d
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v13
    :try_end_a5
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_9d .. :try_end_a5} :catch_8a
    .catch Ljava/security/GeneralSecurityException; {:try_start_9d .. :try_end_a5} :catch_8a
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a5} :catch_8a

    goto :goto_ae

    .line 4989
    :cond_a6
    :try_start_a6
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v13

    :goto_ae
    nop

    .line 4990
    .local v13, "remoteSpi":J
    iget-object v15, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v15, v15, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v11, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 4996
    move-object/from16 v18, v10

    .end local v10    # "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v18, "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v10

    .line 4997
    move-object/from16 v19, v7

    move-object v7, v11

    .end local v7    # "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v19, "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v11

    .line 4999
    if-nez v19, :cond_c9

    const/16 v16, 0x0

    goto :goto_cd

    :cond_c9
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v16

    .line 5000
    :goto_cd
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getKeyLength()I

    move-result v20

    move-object/from16 v21, v0

    .end local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .local v21, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 5002
    invoke-virtual {v0, v13, v14}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildSaLifetimeAlarmScheduler(J)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object v0
    :try_end_d9
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_a6 .. :try_end_d9} :catch_10b
    .catch Ljava/security/GeneralSecurityException; {:try_start_a6 .. :try_end_d9} :catch_10b
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_d9} :catch_10b

    .line 4991
    move-object/from16 v22, v2

    move-object/from16 v2, v19

    move-object/from16 v23, v15

    move/from16 v15, p3

    move/from16 v24, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v23

    move-wide/from16 v25, v13

    move/from16 v13, v24

    move/from16 v14, v20

    move-wide/from16 v19, v25

    .end local v6    # "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .end local v13    # "remoteSpi":J
    .local v0, "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v2, "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v18, "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .local v19, "remoteSpi":J
    .local v22, "initAddr":Ljava/net/InetAddress;
    :try_start_f3
    invoke-static/range {v6 .. v16}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->makeRekeyedIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IIZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v6

    .line 5003
    .local v6, "newSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v7, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5005
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v0, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 5006
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v12, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 5007
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v2, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    :try_end_108
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_f3 .. :try_end_108} :catch_109
    .catch Ljava/security/GeneralSecurityException; {:try_start_f3 .. :try_end_108} :catch_109
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_108} :catch_109

    .line 5009
    return-object v6

    .line 5010
    .end local v0    # "newCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v2    # "newIntegrity":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v5    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v6    # "newSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local v12    # "newPrf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .end local v17    # "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .end local v18    # "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .end local v19    # "remoteSpi":J
    .end local v21    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :catch_109
    move-exception v0

    goto :goto_10e

    .end local v22    # "initAddr":Ljava/net/InetAddress;
    .local v2, "initAddr":Ljava/net/InetAddress;
    :catch_10b
    move-exception v0

    move-object/from16 v22, v2

    .line 5011
    .end local v2    # "initAddr":Ljava/net/InetAddress;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "initAddr":Ljava/net/InetAddress;
    :goto_10e
    if-eqz v4, :cond_126

    .line 5012
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 5013
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 5015
    :cond_126
    throw v0
.end method

.method blacklist validateIkeRekeyReq(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 4838
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4839
    const/16 v1, 0x29

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 4841
    .local v0, "notificationPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4842
    .local v2, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 4843
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error notifications invalid in request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 4845
    .end local v2    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_38
    goto :goto_c

    .line 4847
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->validateIkeRekeyCommon(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4848
    return-void
.end method

.method blacklist validateIkeRekeyResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 9
    .param p1, "reqMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "respMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 4853
    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    .line 4854
    .local v0, "exchangeType":I
    const/16 v1, 0x24

    if-eq v0, v1, :cond_26

    const/16 v1, 0x25

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 4856
    :cond_d
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Rekey response (CREATE_CHILD_SA or INFORMATIONAL) but received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4861
    :cond_26
    :goto_26
    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4862
    const/16 v2, 0x29

    invoke-virtual {p2, v2, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 4864
    .local v1, "notificationPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4865
    .local v3, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 4867
    return-void

    .line 4869
    .end local v3    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_45
    goto :goto_32

    .line 4871
    :cond_46
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->validateIkeRekeyCommon(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4874
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 4875
    const/16 v3, 0x22

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 4876
    .local v2, "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    const-class v4, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 4877
    invoke-virtual {p2, v3, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 4878
    .local v3, "respKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    iget v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget v5, v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    if-ne v4, v5, :cond_62

    .line 4881
    return-void

    .line 4879
    :cond_62
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Received KE payload with mismatched DH group."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
