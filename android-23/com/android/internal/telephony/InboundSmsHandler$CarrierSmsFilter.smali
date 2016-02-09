.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilter"
.end annotation


# instance fields
.field private final mDestPort:I

.field private final mPdus:[[B

.field private final mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private volatile mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

.field private final mSmsFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)[[B
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "smsFormat"    # Ljava/lang/String;
    .param p5, "smsBroadcastReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@0
    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    #@5
    .line 1152
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B

    #@7
    .line 1153
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I

    #@9
    .line 1154
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    #@b
    .line 1155
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@d
    .line 1151
    return-void
.end method


# virtual methods
.method filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V
    .locals 2
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "smsFilterCallback"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@0
    .prologue
    .line 1163
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@2
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@e
    const-string/jumbo v1, "bindService() for carrier messaging service failed"

    #@11
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@14
    .line 1166
    const/4 v0, 0x1

    #@15
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->onFilterComplete(Z)V

    #@18
    .line 1162
    :goto_0
    return-void

    #@19
    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@1b
    const-string/jumbo v1, "bindService() for carrier messaging service succeeded"

    #@1e
    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method

.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 7
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    #@0
    .prologue
    .line 1180
    :try_start_0
    new-instance v1, Landroid/service/carrier/MessagePdu;

    #@2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B

    #@4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-direct {v1, v0}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    #@b
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    #@d
    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I

    #@f
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@11
    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@16
    move-result v4

    #@17
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@19
    move-object v0, p1

    #@1a
    .line 1179
    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1177
    :goto_0
    return-void

    #@1e
    .line 1182
    :catch_0
    move-exception v6

    #@1f
    .line 1183
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Exception filtering the SMS: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@38
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@3a
    const/4 v1, 0x1

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->onFilterComplete(Z)V

    #@3e
    goto :goto_0
.end method
