.class public Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPClientTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPClientTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionTimer"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 2
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 8

    .line 219
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 220
    .local v0, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 223
    .local v1, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 225
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 226
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isReliable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 228
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_38
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 234
    :try_start_3b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->cancel()Z
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 239
    goto :goto_47

    .line 236
    :catch_3f
    move-exception v2

    .line 237
    .local v2, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAlive()Z

    move-result v3

    if-nez v3, :cond_47

    .line 238
    return-void

    .line 245
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :cond_47
    :goto_47
    iget-boolean v2, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v2, :cond_6e

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 247
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    iget v3, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 248
    .local v3, "newUseCount":I
    if-gtz v3, :cond_6d

    .line 251
    new-instance v2, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {v2, v4}, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 252
    .local v2, "myTimer":Ljava/util/TimerTask;
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v4

    const-wide/16 v5, 0x1f40

    invoke-virtual {v4, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 256
    .end local v2    # "myTimer":Ljava/util/TimerTask;
    .end local v3    # "newUseCount":I
    :cond_6d
    goto :goto_a4

    .line 260
    :cond_6e
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 261
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    iget v2, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 262
    .local v2, "useCount":I
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 263
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client Use Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 264
    .end local v2    # "useCount":I
    :cond_a0
    goto :goto_a4

    .line 271
    :cond_a1
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimer()V

    .line 275
    :cond_a4
    :goto_a4
    return-void
.end method
