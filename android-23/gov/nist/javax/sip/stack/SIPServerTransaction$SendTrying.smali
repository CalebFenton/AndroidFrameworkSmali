.class Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTrying"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 323
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 324
    iget-object v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 325
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
    const-string/jumbo v2, "scheduled timer for "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2a
    .line 323
    :cond_0
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 6

    #@0
    .prologue
    .line 330
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    .line 332
    .local v2, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->-wrap0(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;

    #@5
    move-result-object v1

    #@6
    .line 334
    .local v1, "realState":Ljavax/sip/TransactionState;
    if-eqz v1, :cond_0

    #@8
    sget-object v3, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@a
    if-ne v3, v1, :cond_2

    #@c
    .line 335
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@e
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 336
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@18
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1a
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1d
    move-result-object v3

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, " sending Trying current state = "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 337
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->-wrap0(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;

    #@2d
    move-result-object v5

    #@2e
    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@39
    .line 339
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3c
    move-result-object v3

    #@3d
    .line 340
    const-string/jumbo v4, "Trying"

    #@40
    const/16 v5, 0x64

    #@42
    .line 339
    invoke-virtual {v3, v5, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@49
    .line 341
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@4b
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 342
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@55
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@57
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5a
    move-result-object v3

    #@5b
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, " trying sent "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 343
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->-wrap0(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;

    #@6a
    move-result-object v5

    #@6b
    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    .line 329
    :cond_2
    :goto_0
    return-void

    #@77
    .line 344
    :catch_0
    move-exception v0

    #@78
    .line 345
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@7a
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7c
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@7f
    move-result v3

    #@80
    if-eqz v3, :cond_2

    #@82
    .line 346
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@84
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@86
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@89
    move-result-object v3

    #@8a
    const-string/jumbo v4, "IO error sending  TRYING"

    #@8d
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@90
    goto :goto_0
.end method
