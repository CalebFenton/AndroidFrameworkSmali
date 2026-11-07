.class public final Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DataSmsSender"
.end annotation


# instance fields
.field private final blacklist mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$35PnpT8qPVILvaDI5Go1GLAx74E(Ljava/lang/Runnable;)V
    .registers 1

    .line 711
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

    .line 689
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 690
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 691
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-void
.end method


# virtual methods
.method public blacklist getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 1

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-object p0
.end method

.method public blacklist getSmsTrackers()[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 2

    .line 737
    const-string p0, "SMSDispatcher"

    const-string v0, "getSmsTrackers: Unexpected call for DataSmsSender"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist onSendComplete(I)V
    .registers 3

    .line 727
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendSmsComplete(II)V

    return-void
.end method

.method public declared-synchronized blacklist onServiceReady()V
    .registers 11

    monitor-enter p0

    .line 696
    :try_start_1
    const-string v0, "SMSDispatcher"

    const-string v1, "DataSmsSender::onServiceReady"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 698
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [B

    .line 699
    const-string v1, "destPort"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_45

    const/4 v1, 0x1

    if-eqz v3, :cond_72

    .line 703
    :try_start_26
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 705
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 708
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_38

    move v7, v1

    goto :goto_3a

    :cond_38
    const/4 v0, 0x0

    move v7, v0

    .line 710
    :goto_3a
    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender$$ExternalSyntheticLambda0;-><init>()V

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    .line 703
    invoke-virtual/range {v2 .. v9}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->sendDataSms([BILjava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_44} :catch_47
    .catchall {:try_start_26 .. :try_end_44} :catchall_45

    goto :goto_7c

    :catchall_45
    move-exception v0

    goto :goto_7e

    :catch_47
    move-exception v0

    .line 714
    :try_start_48
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataSmsSender::onServiceReady: Exception sending the SMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-wide v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 716
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->onSendComplete(I)V

    goto :goto_7c

    .line 720
    :cond_72
    const-string v0, "SMSDispatcher"

    const-string v2, "DataSmsSender::onServiceReady: data == null"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->onSendComplete(I)V
    :try_end_7c
    .catchall {:try_start_48 .. :try_end_7c} :catchall_45

    .line 723
    :goto_7c
    monitor-exit p0

    return-void

    :goto_7e
    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_45

    throw v0
.end method
