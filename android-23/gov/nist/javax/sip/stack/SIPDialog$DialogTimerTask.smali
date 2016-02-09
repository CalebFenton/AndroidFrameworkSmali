.class Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogTimerTask"
.end annotation


# instance fields
.field nRetransmissions:I

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;

.field transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 392
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@7
    .line 393
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    #@a
    .line 391
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 399
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@4
    .line 400
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@6
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 401
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@12
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@19
    move-result-object v5

    #@1a
    const-string/jumbo v6, "Running dialog timer"

    #@1d
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@20
    .line 402
    :cond_0
    iget v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    #@22
    add-int/lit8 v5, v5, 0x1

    #@24
    iput v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    #@26
    .line 403
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@28
    .line 412
    .local v4, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    iget v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    #@2a
    const/16 v6, 0x40

    #@2c
    if-le v5, v6, :cond_5

    #@2e
    .line 413
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@30
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@37
    move-result-object v5

    #@38
    if-eqz v5, :cond_4

    #@3a
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@3c
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@43
    move-result-object v5

    #@44
    instance-of v5, v5, Lgov/nist/javax/sip/SipListenerExt;

    #@46
    if-eqz v5, :cond_4

    #@48
    .line 414
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@4a
    invoke-static {v5, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->-wrap1(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    #@4d
    .line 418
    :goto_0
    if-eqz v4, :cond_1

    #@4f
    .line 419
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@52
    move-result-object v5

    #@53
    sget-object v6, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@55
    if-eq v5, v6, :cond_1

    #@57
    .line 420
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    #@5a
    .line 455
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@5d
    move-result v5

    #@5e
    if-nez v5, :cond_2

    #@60
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-get0(Lgov/nist/javax/sip/stack/SIPDialog;)I

    #@63
    move-result v5

    #@64
    sget v6, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@66
    if-ne v5, v6, :cond_3

    #@68
    .line 456
    :cond_2
    iput-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@6a
    .line 457
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    #@6d
    .line 396
    :cond_3
    return-void

    #@6e
    .line 416
    :cond_4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@71
    goto :goto_0

    #@72
    .line 422
    :cond_5
    iget-boolean v5, v0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    #@74
    if-nez v5, :cond_1

    #@76
    if-eqz v4, :cond_1

    #@78
    .line 424
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@7b
    move-result-object v2

    #@7c
    .line 425
    .local v2, "response":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@7f
    move-result v5

    #@80
    const/16 v6, 0xc8

    #@82
    if-ne v5, v6, :cond_1

    #@84
    .line 429
    :try_start_0
    iget v5, v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;->T2:I

    #@86
    invoke-static {v0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-wrap0(Lgov/nist/javax/sip/stack/SIPDialog;I)Z

    #@89
    move-result v5

    #@8a
    if-eqz v5, :cond_6

    #@8c
    .line 430
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    .line 444
    :cond_6
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@92
    move-result-object v3

    #@93
    .line 445
    .local v3, "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@96
    move-result v5

    #@97
    if-eqz v5, :cond_7

    #@99
    .line 446
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9c
    move-result-object v5

    #@9d
    new-instance v6, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v7, "resend 200 response from "

    #@a5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b4
    .line 448
    :cond_7
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    #@b7
    goto :goto_1

    #@b8
    .line 432
    .end local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :catch_0
    move-exception v1

    #@b9
    .line 434
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@bb
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerAddress()Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerPort()I

    #@c2
    move-result v7

    #@c3
    .line 435
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerProtocol()Ljava/lang/String;

    #@c6
    move-result-object v8

    #@c7
    .line 434
    invoke-static {v5, v6, v7, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->-wrap2(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ca
    .line 444
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@cd
    move-result-object v3

    #@ce
    .line 445
    .restart local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@d1
    move-result v5

    #@d2
    if-eqz v5, :cond_8

    #@d4
    .line 446
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d7
    move-result-object v5

    #@d8
    new-instance v6, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v7, "resend 200 response from "

    #@e0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v6

    #@e4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v6

    #@e8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v6

    #@ec
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ef
    .line 448
    :cond_8
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    #@f2
    goto/16 :goto_1

    #@f4
    .line 437
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :catchall_0
    move-exception v5

    #@f5
    .line 444
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f8
    move-result-object v3

    #@f9
    .line 445
    .restart local v3    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@fc
    move-result v6

    #@fd
    if-eqz v6, :cond_9

    #@ff
    .line 446
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@102
    move-result-object v6

    #@103
    new-instance v7, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v8, "resend 200 response from "

    #@10b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v7

    #@10f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v7

    #@117
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@11a
    .line 448
    :cond_9
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    #@11d
    .line 437
    throw v5
.end method
