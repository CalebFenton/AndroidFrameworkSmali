.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultipartSmsSender"
.end annotation


# instance fields
.field private final blacklist mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$0jN38tV99rbVjgP3OzxdwYjq2N0(Ljava/lang/Runnable;)V
    .registers 1

    .line 977
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ")V"
        }
    .end annotation

    .line 947
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 948
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 949
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    .line 950
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-void
.end method


# virtual methods
.method public blacklist getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 2

    .line 992
    const-string p0, "SMSDispatcher"

    const-string v0, "getSmsTracker: Unexpected call for MultipartSmsSender"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSmsTrackers()[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 1

    .line 998
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-object p0
.end method

.method public blacklist onSendComplete(I)V
    .registers 3

    .line 987
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMultipartSmsComplete(I[I)V

    return-void
.end method

.method public declared-synchronized blacklist onServiceReady()V
    .registers 13

    monitor-enter p0

    .line 960
    :try_start_1
    const-string v0, "SMSDispatcher"

    const-string v1, "MultipartSmsSender::onServiceReady"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1d

    aget-object v5, v0, v3

    .line 963
    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    if-eqz v5, :cond_18

    move v9, v4

    goto :goto_1e

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :catchall_1b
    move-exception v0

    goto :goto_55

    :cond_1d
    move v9, v2

    .line 970
    :goto_1e
    :try_start_1e
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 972
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v0, v0, v2

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 976
    new-instance v10, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender$$ExternalSyntheticLambda0;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    .line 970
    invoke-virtual/range {v5 .. v11}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_38} :catch_39
    .catchall {:try_start_1e .. :try_end_38} :catchall_1b

    goto :goto_53

    :catch_39
    move-exception v0

    .line 980
    :try_start_3a
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultipartSmsSender::onServiceReady: Exception sending the SMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->onSendComplete(I)V
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_1b

    .line 983
    :goto_53
    monitor-exit p0

    return-void

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_1b

    throw v0
.end method

.method greylist-max-r sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V
    .registers 3

    .line 955
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    return-void
.end method
