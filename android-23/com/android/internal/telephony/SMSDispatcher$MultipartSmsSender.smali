.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
.super Landroid/telephony/CarrierMessagingServiceManager;
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
.field private final mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

.field public final mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p3, "trackers"    # [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 519
    .local p2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    #@5
    .line 520
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    #@7
    .line 521
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@9
    .line 519
    return-void
.end method


# virtual methods
.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 7
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    #@0
    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    #@7
    move-result v2

    #@8
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@a
    const/4 v3, 0x0

    #@b
    aget-object v0, v0, v3

    #@d
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@f
    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@11
    const/4 v4, 0x0

    #@12
    aget-object v0, v0, v4

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@16
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap0(Landroid/app/PendingIntent;)I

    #@19
    move-result v4

    #@1a
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    #@1c
    move-object v0, p1

    #@1d
    .line 540
    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 538
    :goto_0
    return-void

    #@21
    .line 543
    :catch_0
    move-exception v6

    #@22
    .line 544
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SMSDispatcher"

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Exception sending the SMS: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    #@3e
    .line 546
    const/4 v1, 0x1

    #@3f
    .line 547
    const/4 v2, 0x0

    #@40
    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->onSendMultipartSmsComplete(I[I)V

    #@43
    goto :goto_0
.end method

.method sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V
    .locals 3
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "senderCallback"    # Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    #@0
    .prologue
    .line 526
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    #@2
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 528
    const-string/jumbo v0, "SMSDispatcher"

    #@f
    const-string/jumbo v1, "bindService() for carrier messaging service failed"

    #@12
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    #@17
    .line 530
    const/4 v1, 0x1

    #@18
    .line 531
    const/4 v2, 0x0

    #@19
    .line 529
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->onSendMultipartSmsComplete(I[I)V

    #@1c
    .line 525
    :goto_0
    return-void

    #@1d
    .line 533
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    #@20
    const-string/jumbo v1, "bindService() for carrier messaging service succeeded"

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method
