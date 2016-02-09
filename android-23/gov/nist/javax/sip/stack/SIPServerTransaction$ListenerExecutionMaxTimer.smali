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
.field serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 298
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 296
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@7
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@9
    .line 298
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 4

    #@0
    .prologue
    .line 303
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@5
    move-result-object v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 304
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@a
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->terminate()V

    #@d
    .line 305
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12
    move-result-object v1

    #@13
    .line 306
    .local v1, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@15
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@18
    .line 307
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1a
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 301
    .end local v1    # "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 310
    :catch_0
    move-exception v0

    #@1f
    .line 311
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@21
    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@23
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "unexpected exception"

    #@2a
    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@2d
    goto :goto_0
.end method
