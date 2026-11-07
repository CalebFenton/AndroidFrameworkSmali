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
.field greylist nRetransmissions:I

.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPDialog;

.field greylist transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 4
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 392
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    .line 394
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 10

    .line 399
    const-string v0, "resend 200 response from "

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 400
    .local v1, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 401
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Running dialog timer"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 402
    :cond_1f
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    .line 403
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 412
    .local v2, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    const/16 v5, 0x40

    if-le v4, v5, :cond_5f

    .line 413
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v0, :cond_4d

    .line 414
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$mraiseErrorEvent(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    goto :goto_50

    .line 416
    :cond_4d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 418
    :goto_50
    if-eqz v2, :cond_f0

    .line 419
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v0, v4, :cond_f0

    .line 420
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto/16 :goto_f0

    .line 422
    :cond_5f
    iget-boolean v3, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    if-nez v3, :cond_f0

    if-eqz v2, :cond_f0

    .line 424
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 425
    .local v3, "response":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_f0

    .line 429
    :try_start_71
    iget v4, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->T2:I

    invoke-static {v1, v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$mtoRetransmitFinalResponse(Lgov/nist/javax/sip/stack/SIPDialog;I)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 430
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_a4
    .catchall {:try_start_71 .. :try_end_7c} :catchall_a2

    .line 444
    :cond_7c
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    .line 445
    .local v4, "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 446
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 448
    :cond_9e
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    .line 449
    .end local v4    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    goto :goto_f0

    .line 444
    :catchall_a2
    move-exception v4

    goto :goto_ca

    .line 432
    :catch_a4
    move-exception v4

    .line 434
    .local v4, "ex":Ljava/io/IOException;
    :try_start_a5
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerPort()I

    move-result v7

    .line 435
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPeerProtocol()Ljava/lang/String;

    move-result-object v8

    .line 434
    invoke-static {v5, v6, v7, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$mraiseIOException(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_a5 .. :try_end_b6} :catchall_a2

    .line 444
    .end local v4    # "ex":Ljava/io/IOException;
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    .line 445
    .local v4, "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 446
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8f

    .line 444
    .end local v4    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :goto_ca
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    .line 445
    .local v5, "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 446
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 448
    :cond_ec
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    .line 449
    .end local v5    # "stack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    throw v4

    .line 455
    .end local v3    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_f0
    :goto_f0
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v0

    if-nez v0, :cond_fe

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetdialogState(Lgov/nist/javax/sip/stack/SIPDialog;)I

    move-result v0

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne v0, v3, :cond_104

    .line 456
    :cond_fe
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 457
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 461
    :cond_104
    return-void
.end method
