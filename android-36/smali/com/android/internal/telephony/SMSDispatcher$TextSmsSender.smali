.class public final Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "TextSmsSender"
.end annotation


# instance fields
.field private final blacklist mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$mVEAXEceyzv4E9n_NoMeablV0KE(Ljava/lang/Runnable;)V
    .registers 1

    .line 654
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
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

    .line 634
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 635
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 636
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-void
.end method


# virtual methods
.method public blacklist getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 1

    .line 674
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-object p0
.end method

.method public blacklist getSmsTrackers()[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 2

    .line 679
    const-string p0, "SMSDispatcher"

    const-string v0, "getSmsTrackers: Unexpected call for TextSmsSender"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist onSendComplete(I)V
    .registers 3

    .line 669
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendSmsComplete(II)V

    return-void
.end method

.method public declared-synchronized blacklist onServiceReady()V
    .registers 10

    monitor-enter p0

    .line 641
    :try_start_1
    const-string v0, "SMSDispatcher"

    const-string v1, "TextSmsSender::onServiceReady"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 643
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_39

    const/4 v8, 0x1

    if-eqz v2, :cond_5a

    .line 647
    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 649
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v3

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 651
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2c

    move v5, v8

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    move v5, v0

    .line 653
    :goto_2e
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender$$ExternalSyntheticLambda0;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    .line 647
    invoke-virtual/range {v1 .. v7}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_38} :catch_3b
    .catchall {:try_start_1a .. :try_end_38} :catchall_39

    goto :goto_64

    :catchall_39
    move-exception v0

    goto :goto_66

    :catch_3b
    move-exception v0

    .line 657
    :try_start_3c
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextSmsSender::onServiceReady: Exception sending the SMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->onSendComplete(I)V

    goto :goto_64

    .line 662
    :cond_5a
    const-string v0, "SMSDispatcher"

    const-string v1, "TextSmsSender::onServiceReady: text == null"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->onSendComplete(I)V
    :try_end_64
    .catchall {:try_start_3c .. :try_end_64} :catchall_39

    .line 665
    :goto_64
    monitor-exit p0

    return-void

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_39

    throw v0
.end method
