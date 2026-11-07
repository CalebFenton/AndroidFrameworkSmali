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
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 356
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 357
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionTimer() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 360
    :cond_2d
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 5

    .line 364
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 370
    :try_start_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->cancel()Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_b} :catch_c

    .line 374
    goto :goto_18

    .line 371
    :catch_c
    move-exception v0

    .line 372
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAlive()Z

    move-result v1

    if-nez v1, :cond_18

    .line 373
    return-void

    .line 381
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_18
    :goto_18
    new-instance v0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 383
    .local v0, "myTimer":Ljava/util/TimerTask;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 386
    .end local v0    # "myTimer":Ljava/util/TimerTask;
    goto :goto_32

    .line 390
    :cond_2d
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimer()V

    .line 393
    :goto_32
    return-void
.end method
