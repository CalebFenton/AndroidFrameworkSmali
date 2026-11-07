.class public abstract Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SmsSender"
.end annotation


# instance fields
.field protected final blacklist mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

.field private blacklist mCarrierPackageName:Ljava/lang/String;

.field protected volatile blacklist mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$gxt2Fc2S1nnU2BmwLpe5YwbDHz8(Ljava/lang/Runnable;)V
    .registers 1

    .line 573
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yIeCF_sg1PEtI04KNP7RYkP4_HM(Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->lambda$sendSmsByCarrierApp$1()V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 561
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 562
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    new-instance p1, Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    return-void
.end method

.method private synthetic blacklist lambda$sendSmsByCarrierApp$1()V
    .registers 1

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->onServiceReady()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.end method

.method public abstract blacklist getSmsTrackers()[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 608
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 609
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: No response from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mCarrierMessagingTimeout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$sfgetsAnomalyNoResponseFromCarrierMessagingService()Ljava/util/UUID;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 612
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v2

    .line 611
    invoke-static {p1, v0, v2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->onSendComplete(I)V

    return-void

    .line 615
    :cond_54
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: received unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    return-void
.end method

.method public abstract blacklist onSendComplete(I)V
.end method

.method public abstract blacklist onServiceReady()V
.end method

.method public blacklist removeTimeout()V
    .registers 2

    const/4 v0, 0x1

    .line 620
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public declared-synchronized blacklist sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 6

    monitor-enter p0

    .line 570
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierPackageName:Ljava/lang/String;

    .line 571
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    .line 572
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsSender$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_29

    .line 575
    const-string p1, "SMSDispatcher"

    const-string v0, "bindService() for carrier messaging service failed"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->onSendComplete(I)V

    goto :goto_3c

    :catchall_27
    move-exception p1

    goto :goto_3e

    .line 578
    :cond_29
    const-string p1, "SMSDispatcher"

    const-string v0, "bindService() for carrier messaging service succeeded"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget p2, p2, Lcom/android/internal/telephony/SMSDispatcher;->mCarrierMessagingTimeout:I

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_27

    .line 581
    :goto_3c
    monitor-exit p0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_27

    throw p1
.end method
