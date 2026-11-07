.class Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LingerTimer"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 6
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 276
    move-object v0, p1

    .line 277
    .local v0, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 278
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LingerTimer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 282
    :cond_2e
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 7

    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 287
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    .line 289
    .local v1, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 290
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LingerTimer: run() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 291
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 294
    :cond_2c
    instance-of v2, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v2, :cond_37

    .line 295
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 296
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->close()V

    goto :goto_a2

    .line 298
    :cond_37
    instance-of v2, v0, Ljavax/sip/ServerTransaction;

    if-eqz v2, :cond_a2

    .line 300
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 301
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 302
    :cond_5b
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 303
    iget-boolean v2, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v2, :cond_72

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->-$$Nest$fgetencapsulatedChannel(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    iget v3, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    if-gtz v3, :cond_72

    .line 306
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->close()V

    goto :goto_a2

    .line 308
    :cond_72
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a2

    iget-boolean v2, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v2, :cond_a2

    .line 310
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isReliable()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 311
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->-$$Nest$fgetencapsulatedChannel(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    iget v2, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 312
    .local v2, "useCount":I
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 317
    .end local v2    # "useCount":I
    :cond_a2
    :goto_a2
    return-void
.end method
