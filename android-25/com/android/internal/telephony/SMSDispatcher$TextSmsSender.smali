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
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@5
    .line 365
    return-void
.end method


# virtual methods
.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 10
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    #@7
    move-result-object v7

    #@8
    .line 372
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "text"

    #@b
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 374
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@13
    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    #@18
    move-result v2

    #@19
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@1b
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@1d
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@21
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap0(Landroid/app/PendingIntent;)I

    #@24
    move-result v4

    #@25
    .line 378
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@27
    move-object v0, p1

    #@28
    .line 376
    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 370
    :goto_0
    return-void

    #@2c
    .line 379
    :catch_0
    move-exception v6

    #@2d
    .line 380
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SMSDispatcher"

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "Exception sending the SMS: "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@49
    invoke-virtual {v0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@4c
    goto :goto_0

    #@4d
    .line 386
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@4f
    invoke-virtual {v0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@52
    goto :goto_0
.end method
