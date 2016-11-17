.class public Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReInviteSender"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe2571ebeadfbf2bL


# instance fields
.field ctx:Ljavax/sip/ClientTransaction;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "ctx"    # Ljavax/sip/ClientTransaction;

    #@0
    .prologue
    .line 300
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 301
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@7
    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 306
    const-wide/16 v8, 0x0

    #@3
    .line 307
    .local v8, "timeToWait":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v6

    #@7
    .line 309
    .local v6, "startTime":J
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@9
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_1

    #@f
    .line 313
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@11
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 314
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@1d
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@24
    move-result-object v5

    #@25
    .line 315
    const-string/jumbo v10, "Could not send re-INVITE time out ClientTransaction"

    #@28
    .line 314
    invoke-interface {v5, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@2b
    .line 316
    :cond_0
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@2d
    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2f
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimeoutTimer()V

    #@32
    .line 320
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@34
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@3b
    move-result-object v5

    #@3c
    if-eqz v5, :cond_6

    #@3e
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@40
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@47
    move-result-object v5

    #@48
    instance-of v5, v5, Lgov/nist/javax/sip/SipListenerExt;

    #@4a
    if-eqz v5, :cond_6

    #@4c
    .line 321
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@4e
    const/4 v10, 0x3

    #@4f
    invoke-static {v5, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->-wrap1(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    #@52
    .line 336
    :cond_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@54
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@57
    move-result-object v5

    #@58
    sget-object v10, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@5a
    if-eq v5, v10, :cond_2

    #@5c
    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result-wide v10

    #@60
    sub-long v8, v10, v6

    #@62
    .line 348
    :cond_2
    const-wide/16 v10, 0x0

    #@64
    cmp-long v5, v8, v10

    #@66
    if-eqz v5, :cond_3

    #@68
    .line 349
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@6a
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get4(Lgov/nist/javax/sip/stack/SIPDialog;)I

    #@6d
    move-result v5

    #@6e
    int-to-long v10, v5

    #@6f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    .line 356
    :cond_3
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@74
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@77
    move-result-object v5

    #@78
    sget-object v10, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@7a
    if-eq v5, v10, :cond_4

    #@7c
    .line 357
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@7e
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@80
    const/4 v11, 0x1

    #@81
    invoke-virtual {v5, v10, v11}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    #@84
    .line 359
    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@86
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_5

    #@90
    .line 360
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@92
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@99
    move-result-object v5

    #@9a
    const-string/jumbo v10, "re-INVITE successfully sent"

    #@9d
    invoke-interface {v5, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    .line 364
    .end local v6    # "startTime":J
    :cond_5
    :goto_0
    iput-object v12, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@a2
    .line 304
    return-void

    #@a3
    .line 323
    .restart local v6    # "startTime":J
    :cond_6
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@a5
    const-string/jumbo v10, "BYE"

    #@a8
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    #@ab
    move-result-object v1

    #@ac
    .line 324
    .local v1, "byeRequest":Ljavax/sip/message/Request;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@af
    move-result-object v5

    #@b0
    if-eqz v5, :cond_7

    #@b2
    .line 325
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@b5
    move-result-object v5

    #@b6
    invoke-interface {v1, v5}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@b9
    .line 327
    :cond_7
    new-instance v4, Lgov/nist/javax/sip/header/Reason;

    #@bb
    invoke-direct {v4}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    #@be
    .line 328
    .local v4, "reasonHeader":Ljavax/sip/header/ReasonHeader;
    const/16 v5, 0x400

    #@c0
    invoke-interface {v4, v5}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    #@c3
    .line 329
    const-string/jumbo v5, "Timed out waiting to re-INVITE"

    #@c6
    invoke-interface {v4, v5}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    #@c9
    .line 330
    invoke-interface {v1, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@cc
    .line 331
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@ce
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@d5
    move-result-object v0

    #@d6
    .line 332
    .local v0, "byeCtx":Ljavax/sip/ClientTransaction;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@d8
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@db
    .line 364
    iput-object v12, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@dd
    .line 333
    return-void

    #@de
    .line 351
    .end local v0    # "byeCtx":Ljavax/sip/ClientTransaction;
    .end local v1    # "byeRequest":Ljavax/sip/message/Request;
    .end local v4    # "reasonHeader":Ljavax/sip/header/ReasonHeader;
    :catch_0
    move-exception v3

    #@df
    .line 352
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@e1
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e4
    move-result-object v5

    #@e5
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@e8
    move-result v5

    #@e9
    if-eqz v5, :cond_8

    #@eb
    .line 353
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@ed
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f4
    move-result-object v5

    #@f5
    const-string/jumbo v10, "Interrupted sleep"

    #@f8
    invoke-interface {v5, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@fb
    .line 364
    :cond_8
    iput-object v12, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@fd
    .line 354
    return-void

    #@fe
    .line 361
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .end local v6    # "startTime":J
    :catch_1
    move-exception v2

    #@ff
    .line 362
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@101
    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@104
    move-result-object v5

    #@105
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@108
    move-result-object v5

    #@109
    const-string/jumbo v10, "Error sending re-INVITE"

    #@10c
    invoke-interface {v5, v10, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10f
    goto :goto_0

    #@110
    .line 363
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@111
    .line 364
    iput-object v12, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@113
    .line 363
    throw v5
.end method

.method public terminate()V
    .locals 3

    #@0
    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    #@2
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->terminate()V

    #@5
    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 291
    :goto_0
    return-void

    #@d
    .line 295
    :catch_0
    move-exception v0

    #@e
    .line 296
    .local v0, "e":Ljavax/sip/ObjectInUseException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@10
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "unexpected error"

    #@1b
    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@1e
    goto :goto_0
.end method
