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
    .line 369
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@5
    .line 369
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
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@4
    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@6
    .line 376
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "text"

    #@9
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .line 378
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@11
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    #@16
    move-result v2

    #@17
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@19
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@1b
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@1d
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@1f
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap0(Landroid/app/PendingIntent;)I

    #@22
    move-result v4

    #@23
    .line 382
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@25
    move-object v0, p1

    #@26
    .line 380
    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 374
    :goto_0
    return-void

    #@2a
    .line 383
    :catch_0
    move-exception v6

    #@2b
    .line 384
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SMSDispatcher"

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Exception sending the SMS: "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@47
    invoke-virtual {v0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@4a
    goto :goto_0

    #@4b
    .line 390
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@4d
    invoke-virtual {v0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@50
    goto :goto_0
.end method
