.class public abstract Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.super Landroid/telephony/CarrierMessagingServiceManager;
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
.field protected volatile mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

.field protected final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    #@5
    .line 341
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@7
    .line 340
    return-void
.end method


# virtual methods
.method public sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V
    .locals 3
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "senderCallback"    # Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@0
    .prologue
    .line 346
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@2
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 348
    const-string/jumbo v0, "SMSDispatcher"

    #@f
    const-string/jumbo v1, "bindService() for carrier messaging service failed"

    #@12
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@17
    .line 350
    const/4 v1, 0x1

    #@18
    .line 351
    const/4 v2, 0x0

    #@19
    .line 349
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    #@1c
    .line 345
    :goto_0
    return-void

    #@1d
    .line 353
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    #@20
    const-string/jumbo v1, "bindService() for carrier messaging service succeeded"

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method
