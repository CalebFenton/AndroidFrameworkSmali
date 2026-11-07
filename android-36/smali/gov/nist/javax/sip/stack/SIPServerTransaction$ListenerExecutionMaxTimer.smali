.class Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerExecutionMaxTimer"
.end annotation


# instance fields
.field greylist serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 296
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 299
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 4

    .line 303
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 304
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->terminate()V

    .line 305
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    .line 306
    .local v0, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 307
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 312
    .end local v0    # "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_1d
    goto :goto_2c

    .line 310
    :catch_1e
    move-exception v0

    .line 311
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "unexpected exception"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 313
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method
