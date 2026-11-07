.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilter"
.end annotation


# instance fields
.field protected final blacklist mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

.field private final blacklist mDestPort:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPdus:[[B

.field private volatile blacklist mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

.field private final blacklist mSmsFormat:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method public static synthetic blacklist $r8$lambda$911sRYV0iRgUyUypszORjlNRUEM(Ljava/lang/Runnable;)V
    .registers 1

    .line 272
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YVyd9qFFMef6X6tWIjMVchvK3qU(Ljava/lang/Runnable;)V
    .registers 1

    .line 253
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nqPX6f14Ga1edqBjfwVarn5BQkY(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->lambda$filterSms$1()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance p1, Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    .line 240
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPdus:[[B

    .line 241
    iput p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mDestPort:I

    .line 242
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    .line 243
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private synthetic blacklist lambda$filterSms$1()V
    .registers 1

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->onServiceReady()V

    return-void
.end method

.method private blacklist onServiceReady()V
    .registers 10

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceReady: calling filterSms on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    new-instance v3, Landroid/service/carrier/MessagePdu;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPdus:[[B

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mDestPort:I

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    new-instance v7, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter$$ExternalSyntheticLambda2;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 270
    invoke-virtual/range {v2 .. v8}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->receiveSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception v0

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception filtering the SMS with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onReceiveSmsComplete(I)V

    return-void
.end method


# virtual methods
.method blacklist filterSms(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .registers 7

    .line 251
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierSmsFilter::filterSms: bindService() failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 255
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onReceiveSmsComplete(I)V

    return-void

    .line 258
    :cond_39
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierSmsFilter::filterSms: bindService() succeeded for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlogv(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method
