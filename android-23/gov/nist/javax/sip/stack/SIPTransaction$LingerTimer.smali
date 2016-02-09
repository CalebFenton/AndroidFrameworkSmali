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
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 276
    move-object v0, p1

    #@6
    .line 277
    .local v0, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 278
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13
    move-result-object v1

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "LingerTimer : "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 279
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2f
    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 6

    #@0
    .prologue
    .line 285
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2
    .line 287
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5
    move-result-object v0

    #@6
    .line 289
    .local v0, "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 290
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f
    move-result-object v3

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "LingerTimer: run() : "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 291
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2d
    .line 294
    :cond_0
    instance-of v3, v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 295
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@34
    .line 296
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->close()V

    #@37
    .line 284
    :cond_1
    :goto_0
    return-void

    #@38
    .line 298
    :cond_2
    instance-of v3, v1, Ljavax/sip/ServerTransaction;

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 300
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_3

    #@42
    .line 301
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@45
    move-result-object v3

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "removing"

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5d
    .line 302
    :cond_3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@60
    .line 303
    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    #@62
    if-nez v3, :cond_4

    #@64
    .line 304
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->-get0(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@67
    move-result-object v3

    #@68
    iget v4, v3, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@6a
    add-int/lit8 v4, v4, -0x1

    #@6c
    iput v4, v3, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@6e
    if-gtz v4, :cond_4

    #@70
    .line 306
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->close()V

    #@73
    goto :goto_0

    #@74
    .line 308
    :cond_4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@77
    move-result v3

    #@78
    if-eqz v3, :cond_1

    #@7a
    .line 309
    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    #@7c
    if-nez v3, :cond_1

    #@7e
    .line 310
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isReliable()Z

    #@81
    move-result v3

    #@82
    .line 308
    if-eqz v3, :cond_1

    #@84
    .line 311
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->-get0(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@87
    move-result-object v3

    #@88
    iget v2, v3, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@8a
    .line 312
    .local v2, "useCount":I
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8d
    move-result-object v3

    #@8e
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v5, "Use Count = "

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a5
    goto :goto_0
.end method
