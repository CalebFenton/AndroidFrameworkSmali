.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultipartSmsSenderCallback"
.end annotation


# instance fields
.field private final mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "smsSender"    # Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@0
    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    #@5
    .line 560
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@7
    .line 559
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    #@0
    .prologue
    .line 607
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
    .line 606
    return-void
.end method

.method public onFilterComplete(Z)V
    .locals 3
    .param p1, "keepMessage"    # Z

    #@0
    .prologue
    .line 597
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
    .line 596
    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    #@0
    .prologue
    .line 602
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
    .line 601
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    #@0
    .prologue
    .line 573
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@2
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@4
    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->disposeConnection(Landroid/content/Context;)V

    #@9
    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@b
    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@d
    if-nez v4, :cond_0

    #@f
    .line 576
    const-string/jumbo v4, "SMSDispatcher"

    #@12
    const-string/jumbo v5, "Unexpected onSendMultipartSmsComplete call with null trackers."

    #@15
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 577
    return-void

    #@19
    .line 580
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@1b
    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap1(Lcom/android/internal/telephony/SMSDispatcher;)V

    #@1e
    .line 581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@21
    move-result-wide v2

    #@22
    .line 583
    .local v2, "identity":J
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@25
    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@27
    array-length v4, v4

    #@28
    if-ge v0, v4, :cond_2

    #@2a
    .line 584
    const/4 v1, 0x0

    #@2b
    .line 585
    .local v1, "messageRef":I
    if-eqz p2, :cond_1

    #@2d
    array-length v4, p2

    #@2e
    if-le v4, v0, :cond_1

    #@30
    .line 586
    aget v1, p2, v0

    #@32
    .line 588
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@34
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@36
    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@38
    aget-object v5, v5, v0

    #@3a
    invoke-static {v4, v5, p1, v1}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap2(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 583
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 591
    .end local v1    # "messageRef":I
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 572
    return-void

    #@44
    .line 590
    :catchall_0
    move-exception v4

    #@45
    .line 591
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 590
    throw v4
.end method

.method public onSendSmsComplete(II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    #@0
    .prologue
    .line 565
    const-string/jumbo v0, "SMSDispatcher"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Unexpected onSendSmsComplete call with result: "

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
    .line 564
    return-void
.end method
