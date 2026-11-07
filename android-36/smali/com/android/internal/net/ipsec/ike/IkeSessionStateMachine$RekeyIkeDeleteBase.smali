.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RekeyIkeDeleteBase"
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

    .line 5261
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method protected blacklist finishRekey()V
    .registers 5

    .line 5326
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5327
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5328
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5330
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5332
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-eqz v0, :cond_2f

    .line 5333
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5334
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->close()V

    .line 5335
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5338
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-eqz v0, :cond_49

    .line 5339
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5340
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->close()V

    .line 5341
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5344
    :cond_49
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 5345
    :try_start_4e
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 5346
    .local v2, "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkD()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->setSkD([B)V

    .line 5347
    .end local v2    # "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    goto :goto_5a

    .line 5348
    :cond_72
    monitor-exit v0

    .line 5351
    return-void

    .line 5348
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_4e .. :try_end_76} :catchall_74

    throw v1
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 12
    .param p1, "message"    # Landroid/os/Message;

    .line 5264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 5319
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 5266
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;

    .line 5267
    .local v0, "receivedIkePacket":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 5270
    .local v5, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v4

    .line 5271
    .local v4, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    const/4 v8, 0x0

    .line 5272
    .local v8, "isMessageOnNewSa":Z
    const/4 v9, 0x1

    if-eqz v4, :cond_51

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-ne v1, v4, :cond_51

    .line 5275
    iget-boolean v1, v5, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz v1, :cond_27

    .line 5276
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v1

    goto :goto_2b

    .line 5277
    :cond_27
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getRemoteRequestMessageId()I

    move-result v1

    :goto_2b
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikePacketBytes:[B

    iget-boolean v7, v5, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    .line 5283
    invoke-virtual {v4, v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getCollectedFragments(Z)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    move-result-object v7

    .line 5274
    invoke-static/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v1

    .line 5284
    .local v1, "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4f

    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    if-eqz v2, :cond_4f

    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    if-ne v2, v9, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v2, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    move v2, v9

    :goto_50
    move v8, v2

    .line 5292
    .end local v1    # "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    :cond_51
    if-eqz v8, :cond_78

    .line 5293
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    .line 5299
    .local v1, "nextState":Lcom/android/internal/net/ipsec/ike/utils/State;
    iget-boolean v2, v5, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-nez v2, :cond_6b

    .line 5300
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getRemoteRequestMessageId()I

    move-result v2

    iget v3, v5, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    sub-int/2addr v2, v3

    if-eqz v2, :cond_65

    goto :goto_6b

    .line 5304
    :cond_65
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_6f

    .line 5302
    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeleteIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;

    .line 5311
    :goto_6f
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->finishRekey()V

    .line 5312
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5313
    .end local v1    # "nextState":Lcom/android/internal/net/ipsec/ike/utils/State;
    goto :goto_7b

    .line 5314
    :cond_78
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;->handleReceivedIkePacket(Landroid/os/Message;)V

    .line 5317
    :goto_7b
    return v9

    :pswitch_data_7c
    .packed-switch 0x12d
        :pswitch_a
    .end packed-switch
.end method
