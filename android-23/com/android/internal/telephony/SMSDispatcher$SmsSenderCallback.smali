.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SmsSenderCallback"
.end annotation


# instance fields
.field private final mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "smsSender"    # Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    #@0
    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    #@5
    .line 438
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    #@7
    .line 437
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    #@0
    .prologue
    .line 473
    const-string/jumbo v0, "SMSDispatcher"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Unexpected onDownloadMmsComplete call with result: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 472
    return-void
.end method

.method public onFilterComplete(Z)V
    .locals 3
    .param p1, "keepMessage"    # Z

    #@0
    .prologue
    .line 463
    const-string/jumbo v0, "SMSDispatcher"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Unexpected onFilterComplete call with result: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 462
    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    #@0
    .prologue
    .line 468
    const-string/jumbo v0, "SMSDispatcher"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Unexpected onSendMmsComplete call with result: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 467
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    #@0
    .prologue
    .line 458
    const-string/jumbo v0, "SMSDispatcher"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Unexpected onSendMultipartSmsComplete call with result: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 457
    return-void
.end method

.method public onSendSmsComplete(II)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    #@0
    .prologue
    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap1(Lcom/android/internal/telephony/SMSDispatcher;)V

    #@5
    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 449
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    #@b
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@d
    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->disposeConnection(Landroid/content/Context;)V

    #@12
    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@14
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    #@16
    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@18
    invoke-static {v2, v3, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap2(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 452
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 445
    return-void

    #@1f
    .line 451
    :catchall_0
    move-exception v2

    #@20
    .line 452
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 451
    throw v2
.end method
