.class Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 355
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 356
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 357
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@12
    move-result-object v0

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "TransactionTimer() : "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2e
    .line 355
    :cond_0
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 6

    #@0
    .prologue
    .line 364
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 370
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->cancel()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 381
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;

    #@d
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@f
    invoke-direct {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@12
    .line 383
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@14
    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@16
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@19
    move-result-object v2

    #@1a
    .line 384
    const-wide/16 v4, 0x1f40

    #@1c
    .line 383
    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@1f
    .line 362
    .end local v1    # "myTimer":Ljava/util/TimerTask;
    :goto_0
    return-void

    #@20
    .line 371
    :catch_0
    move-exception v0

    #@21
    .line 372
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@23
    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@25
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAlive()Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_0

    #@2b
    .line 373
    return-void

    #@2c
    .line 390
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2e
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    #@31
    goto :goto_0
.end method
