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
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@0
    .prologue
    .line 212
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 10

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2
    .line 220
    .local v0, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v4, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4
    .line 223
    .local v4, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isTerminated()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_4

    #@a
    .line 225
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 226
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13
    move-result-object v6

    #@14
    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v8, "removing  = "

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    const-string/jumbo v8, " isReliable "

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    .line 228
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@2e
    move-result v8

    #@2f
    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    .line 226
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3a
    .line 231
    :cond_0
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@3d
    .line 234
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->cancel()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 245
    :cond_1
    iget-boolean v6, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@42
    if-nez v6, :cond_3

    #@44
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_3

    #@4a
    .line 247
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@4d
    move-result-object v6

    #@4e
    iget v7, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@50
    add-int/lit8 v3, v7, -0x1

    #@52
    iput v3, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@54
    .line 248
    .local v3, "newUseCount":I
    if-gtz v3, :cond_2

    #@56
    .line 251
    new-instance v2, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;

    #@58
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@5a
    invoke-direct {v2, v6}, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@5d
    .line 252
    .local v2, "myTimer":Ljava/util/TimerTask;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@60
    move-result-object v6

    #@61
    .line 253
    const-wide/16 v8, 0x1f40

    #@63
    .line 252
    invoke-virtual {v6, v2, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@66
    .line 216
    .end local v2    # "myTimer":Ljava/util/TimerTask;
    .end local v3    # "newUseCount":I
    :cond_2
    :goto_0
    return-void

    #@67
    .line 236
    :catch_0
    move-exception v1

    #@68
    .line 237
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAlive()Z

    #@6b
    move-result v6

    #@6c
    if-nez v6, :cond_1

    #@6e
    .line 238
    return-void

    #@6f
    .line 260
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_3
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_2

    #@75
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_2

    #@7b
    .line 261
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@7e
    move-result-object v6

    #@7f
    iget v5, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@81
    .line 262
    .local v5, "useCount":I
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_2

    #@87
    .line 263
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8a
    move-result-object v6

    #@8b
    new-instance v7, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v8, "Client Use Count = "

    #@93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a2
    goto :goto_0

    #@a3
    .line 271
    .end local v5    # "useCount":I
    :cond_4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimer()V

    #@a6
    goto :goto_0
.end method
