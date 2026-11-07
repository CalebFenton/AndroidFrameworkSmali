.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SmsSenderCallback"
.end annotation


# instance fields
.field private blacklist mCallbackCalled:Z

.field private final blacklist mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V
    .registers 3
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

    .line 750
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 748
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mCallbackCalled:Z

    .line 751
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    return-void
.end method

.method private blacklist cleanupOnSendSmsComplete(Ljava/lang/String;)Z
    .registers 6

    .line 792
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mCallbackCalled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": unexpected call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 794
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$sfgetsAnomalyUnexpectedCallback()Ljava/util/UUID;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 795
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 794
    invoke-static {v0, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return v1

    .line 799
    :cond_3c
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mCallbackCalled:Z

    .line 800
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->removeTimeout()V

    .line 801
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-virtual {p0}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist onDownloadMmsComplete(I)V
    .registers 3

    .line 818
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onReceiveSmsComplete(I)V
    .registers 3

    .line 808
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected onReceiveSmsComplete call with result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onSendMmsComplete(I[B)V
    .registers 3

    .line 813
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onSendMultipartSmsComplete(I[I)V
    .registers 6

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendMultipartSmsComplete: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRefs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v0, "onSendMultipartSmsComplete"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->cleanupOnSendSmsComplete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    .line 783
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 785
    :try_start_2f
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->getSmsTrackers()[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object p0

    invoke-static {v2, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mprocessSendMultipartSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3e

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    throw p0
.end method

.method public whitelist onSendSmsComplete(II)V
    .registers 6

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSmsComplete: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v0, "onSendSmsComplete"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->cleanupOnSendSmsComplete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 764
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 766
    :try_start_2b
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object p0

    invoke-static {v2, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mprocessSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    .line 768
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    throw p0
.end method
