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
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@5
    .line 401
    return-void
.end method


# virtual methods
.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 11
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@4
    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@6
    .line 408
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "data"

    #@9
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [B

    #@f
    .line 409
    .local v1, "data":[B
    const-string/jumbo v0, "destPort"

    #@12
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v4

    #@1c
    .line 411
    .local v4, "destPort":I
    if-eqz v1, :cond_0

    #@1e
    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    #@23
    move-result v2

    #@24
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@26
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@28
    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@2a
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@2c
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap0(Landroid/app/PendingIntent;)I

    #@2f
    move-result v5

    #@30
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@32
    move-object v0, p1

    #@33
    .line 413
    invoke-interface/range {v0 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 406
    :goto_0
    return-void

    #@37
    .line 416
    :catch_0
    move-exception v7

    #@38
    .line 417
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SMSDispatcher"

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "Exception sending the SMS: "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@54
    invoke-virtual {v0, v10, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@57
    goto :goto_0

    #@58
    .line 423
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@5a
    invoke-virtual {v0, v10, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@5d
    goto :goto_0
.end method
