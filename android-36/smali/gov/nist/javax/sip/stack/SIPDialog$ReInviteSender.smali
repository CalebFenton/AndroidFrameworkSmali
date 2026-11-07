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
.field private static final whitelist serialVersionUID:J = 0xe2571ebeadfbf2bL


# instance fields
.field greylist ctx:Ljavax/sip/ClientTransaction;

.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V
    .registers 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "ctx"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 302
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 306
    const-wide/16 v0, 0x0

    .line 307
    .local v0, "timeToWait":J
    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 309
    .local v3, "startTime":J
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v5

    if-nez v5, :cond_8b

    .line 313
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 314
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Could not send re-INVITE time out ClientTransaction"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 316
    :cond_2a
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimeoutTimer()V

    .line 320
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v5

    instance-of v5, v5, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v5, :cond_52

    .line 321
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$mraiseErrorEvent(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    goto :goto_8b

    .line 323
    :cond_52
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const-string v6, "BYE"

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v5

    .line 324
    .local v5, "byeRequest":Ljavax/sip/message/Request;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 325
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 327
    :cond_67
    new-instance v6, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 328
    .local v6, "reasonHeader":Ljavax/sip/header/ReasonHeader;
    const/16 v7, 0x400

    invoke-interface {v6, v7}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    .line 329
    const-string v7, "Timed out waiting to re-INVITE"

    invoke-interface {v6, v7}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    .line 330
    invoke-interface {v5, v6}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 331
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v7

    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v7

    .line 332
    .local v7, "byeCtx":Ljavax/sip/ClientTransaction;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_88} :catch_fc
    .catchall {:try_start_3 .. :try_end_88} :catchall_fa

    .line 364
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 333
    return-void

    .line 336
    .end local v5    # "byeRequest":Ljavax/sip/message/Request;
    .end local v6    # "reasonHeader":Ljavax/sip/header/ReasonHeader;
    .end local v7    # "byeCtx":Ljavax/sip/ClientTransaction;
    :cond_8b
    :goto_8b
    :try_start_8b
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v5

    sget-object v6, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v5, v6, :cond_9b

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_99} :catch_fc
    .catchall {:try_start_8b .. :try_end_99} :catchall_fa

    sub-long v0, v5, v3

    .line 348
    :cond_9b
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_cb

    .line 349
    :try_start_a1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetreInviteWaitTime(Lgov/nist/javax/sip/stack/SIPDialog;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ab} :catch_fc
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_fa

    goto :goto_cb

    .line 351
    :catch_ac
    move-exception v5

    .line 352
    .local v5, "ex":Ljava/lang/InterruptedException;
    :try_start_ad
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 353
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Interrupted sleep"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c8} :catch_fc
    .catchall {:try_start_ad .. :try_end_c8} :catchall_fa

    .line 364
    :cond_c8
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 354
    return-void

    .line 355
    .end local v5    # "ex":Ljava/lang/InterruptedException;
    :cond_cb
    :goto_cb
    nop

    .line 356
    :try_start_cc
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v5

    sget-object v6, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v5, v6, :cond_de

    .line 357
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    .line 359
    :cond_de
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 360
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "re-INVITE successfully sent"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f9} :catch_fc
    .catchall {:try_start_cc .. :try_end_f9} :catchall_fa

    goto :goto_10c

    .line 364
    .end local v0    # "timeToWait":J
    .end local v3    # "startTime":J
    :catchall_fa
    move-exception v0

    goto :goto_110

    .line 361
    :catch_fc
    move-exception v0

    .line 362
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_fd
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v3, "Error sending re-INVITE"

    invoke-interface {v1, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_10c
    .catchall {:try_start_fd .. :try_end_10c} :catchall_fa

    .line 364
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_10c
    :goto_10c
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :goto_110
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 365
    throw v0
.end method

.method public greylist terminate()V
    .registers 4

    .line 293
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->terminate()V

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_c
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 297
    goto :goto_1d

    .line 295
    :catch_d
    move-exception v0

    .line 296
    .local v0, "e":Ljavax/sip/ObjectInUseException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "unexpected error"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    .end local v0    # "e":Ljavax/sip/ObjectInUseException;
    :goto_1d
    return-void
.end method
