.class public Landroid/adservices/adselection/AdSelectionManager;
.super Ljava/lang/Object;
.source "AdSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;,
        Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;
    }
.end annotation


# static fields
.field private static final blacklist AD_ID_TIMEOUT_MS:J = 0x190L

.field public static final blacklist AD_SELECTION_SERVICE:Ljava/lang/String; = "ad_selection_service"

.field private static final blacklist DEBUG_API_WARNING_MESSAGE:Ljava/lang/String; = "To enable debug api, include ACCESS_ADSERVICES_AD_ID permission and enable advertising ID under device settings"

.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# instance fields
.field private final blacklist mAdIdExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mAdIdManager:Landroid/adservices/adid/AdIdManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/adselection/AdSelectionService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceProvider:Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAdSelectionData(Landroid/adservices/adselection/AdSelectionManager;Landroid/adservices/adselection/GetAdSelectionDataResponse;)[B
    .registers 2

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdSelectionManager;->getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataResponse;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    sget-object v0, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mAdIdExecutor:Ljava/util/concurrent/Executor;

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/adselection/AdSelectionManager;)V

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mServiceProvider:Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    .line 140
    invoke-virtual {p0, p1}, Landroid/adservices/adselection/AdSelectionManager;->initialize(Landroid/content/Context;)Landroid/adservices/adselection/AdSelectionManager;

    .line 141
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/adselection/AdSelectionManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 100
    const-class v0, Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionManager;

    goto :goto_14

    .line 101
    :cond_f
    new-instance v0, Landroid/adservices/adselection/AdSelectionManager;

    invoke-direct {v0, p0}, Landroid/adservices/adselection/AdSelectionManager;-><init>(Landroid/content/Context;)V

    .line 99
    :goto_14
    return-object v0
.end method

.method public static blacklist get(Landroid/content/Context;Landroid/adservices/adid/AdIdManager;Landroid/adservices/adselection/AdSelectionService;)Landroid/adservices/adselection/AdSelectionManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adIdManager"    # Landroid/adservices/adid/AdIdManager;
    .param p2, "adSelectionService"    # Landroid/adservices/adselection/AdSelectionService;

    .line 121
    invoke-static {p0}, Landroid/adservices/adselection/AdSelectionManager;->get(Landroid/content/Context;)Landroid/adservices/adselection/AdSelectionManager;

    move-result-object v0

    .line 122
    .local v0, "adSelectionManager":Landroid/adservices/adselection/AdSelectionManager;
    iput-object p1, v0, Landroid/adservices/adselection/AdSelectionManager;->mAdIdManager:Landroid/adservices/adid/AdIdManager;

    .line 123
    new-instance v1, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda3;-><init>(Landroid/adservices/adselection/AdSelectionService;)V

    iput-object v1, v0, Landroid/adservices/adselection/AdSelectionManager;->mServiceProvider:Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    .line 124
    return-object v0
.end method

.method private blacklist getAdId(Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;)V
    .registers 10
    .param p1, "adSelectionAdIdCallback"    # Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;

    .line 997
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 998
    .local v1, "timer":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 999
    .local v3, "adIdValue":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/adservices/adselection/AdSelectionManager;->mAdIdManager:Landroid/adservices/adid/AdIdManager;

    iget-object v5, p0, Landroid/adservices/adselection/AdSelectionManager;->mAdIdExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/adservices/adselection/AdSelectionManager$9;

    invoke-direct {v6, p0, v3, v1}, Landroid/adservices/adselection/AdSelectionManager$9;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Landroid/adservices/adid/AdIdManager;->getAdId(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_41

    .line 1022
    const/4 v4, 0x0

    .line 1024
    .local v4, "timedOut":Z
    :try_start_19
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x190

    invoke-virtual {v1, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_21} :catch_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_41

    xor-int/2addr v2, v5

    move v4, v2

    .line 1027
    goto :goto_2e

    .line 1025
    :catch_24
    move-exception v2

    .line 1026
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_25
    sget-object v5, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v6, "Interrupted while getting the AdId."

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/adservices/LoggerFactory$Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1028
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2e
    if-eqz v4, :cond_37

    .line 1029
    sget-object v2, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v5, "AdId call timed out."

    invoke-virtual {v2, v5}, Lcom/android/adservices/LoggerFactory$Logger;->w(Ljava/lang/String;)I

    .line 1031
    :cond_37
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;->onResult(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_40} :catch_41

    .line 1035
    .end local v1    # "timer":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "adIdValue":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .end local v4    # "timedOut":Z
    goto :goto_4f

    .line 1032
    :catch_41
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v3, "Could not get AdId."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/adservices/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1034
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;->onResult(Ljava/lang/String;)V

    .line 1036
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4f
    return-void
.end method

.method private blacklist getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataResponse;)[B
    .registers 4
    .param p1, "response"    # Landroid/adservices/adselection/GetAdSelectionDataResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataResponse;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_12

    .line 977
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataResponse;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 978
    .local v0, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0}, Landroid/adservices/common/AssetFileDescriptorUtil;->readAssetFileDescriptorIntoBuffer(Landroid/content/res/AssetFileDescriptor;)[B

    move-result-object v1

    return-object v1

    .line 980
    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_12
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataResponse;->getAdSelectionData()[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCallerPackageName()Ljava/lang/String;
    .registers 3

    .line 968
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mContext:Landroid/content/Context;

    .line 969
    invoke-static {v0}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v0

    .line 970
    .local v0, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-nez v0, :cond_f

    .line 971
    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 972
    :cond_f
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 970
    :goto_13
    return-object v1
.end method

.method private blacklist getCallerSdkName()Ljava/lang/String;
    .registers 3

    .line 985
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mContext:Landroid/content/Context;

    .line 986
    invoke-static {v0}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v0

    .line 987
    .local v0, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-nez v0, :cond_b

    const-string v1, ""

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_f
    return-object v1
.end method

.method static synthetic blacklist lambda$get$0(Landroid/adservices/adselection/AdSelectionService;)Landroid/adservices/adselection/AdSelectionService;
    .registers 1
    .param p0, "adSelectionService"    # Landroid/adservices/adselection/AdSelectionService;

    .line 123
    return-object p0
.end method

.method static synthetic blacklist lambda$reportEvent$1(Landroid/adservices/adselection/ReportInteractionInput$Builder;Ljava/lang/String;)V
    .registers 2
    .param p0, "inputBuilder"    # Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .param p1, "adIdValue"    # Ljava/lang/String;

    .line 787
    invoke-virtual {p0, p1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setAdId(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    return-void
.end method


# virtual methods
.method blacklist doGetService()Landroid/adservices/adselection/AdSelectionService;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionService;

    return-object v0
.end method

.method public whitelist getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/adservices/adselection/GetAdSelectionDataRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/GetAdSelectionDataRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/adselection/GetAdSelectionDataOutcome;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adselection/GetAdSelectionDataOutcome;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 236
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;-><init>()V

    .line 238
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataRequest;->getSeller()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;

    move-result-object v1

    .line 239
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataRequest;->getCoordinatorOriginUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->setCoordinatorOriginUri(Landroid/net/Uri;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataRequest;->getSellerConfiguration()Landroid/adservices/adselection/SellerConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->setSellerConfiguration(Landroid/adservices/adselection/SellerConfiguration;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->build()Landroid/adservices/adselection/GetAdSelectionDataInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v2}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v2

    new-instance v3, Landroid/adservices/adselection/AdSelectionManager$1;

    invoke-direct {v3, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$1;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 236
    invoke-interface {v0, v1, v2, v3}, Landroid/adservices/adselection/AdSelectionService;->getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/GetAdSelectionDataCallback;)V
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_53} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_53} :catch_54

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_75

    .line 283
    :catch_54
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Failure of AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 285
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_76

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_65
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 286
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_75
    nop

    .line 287
    :goto_76
    return-void
.end method

.method blacklist getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mServiceProvider:Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    return-object v0
.end method

.method public whitelist getTestAdSelectionManager()Landroid/adservices/adselection/TestAdSelectionManager;
    .registers 2

    .line 168
    new-instance v0, Landroid/adservices/adselection/TestAdSelectionManager;

    invoke-direct {v0, p0}, Landroid/adservices/adselection/TestAdSelectionManager;-><init>(Landroid/adservices/adselection/AdSelectionManager;)V

    return-object v0
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/adselection/AdSelectionManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionManager;->mContext:Landroid/content/Context;

    .line 157
    new-instance v0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda2;-><init>()V

    .line 158
    const-string v1, "android.adservices.adselection.AD_SELECTION_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 162
    invoke-static {p1}, Landroid/adservices/adid/AdIdManager;->get(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionManager;->mAdIdManager:Landroid/adservices/adid/AdIdManager;

    .line 163
    return-object p0
.end method

.method public whitelist persistAdSelectionResult(Landroid/adservices/adselection/PersistAdSelectionResultRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/adservices/adselection/PersistAdSelectionResultRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/PersistAdSelectionResultRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/adselection/AdSelectionOutcome;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adselection/AdSelectionOutcome;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 335
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;-><init>()V

    .line 337
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->getSeller()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->getAdSelectionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->setAdSelectionId(J)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->getAdSelectionResult()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->setAdSelectionResult([B)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;

    move-result-object v1

    .line 340
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->build()Landroid/adservices/adselection/PersistAdSelectionResultInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v2}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v2

    new-instance v3, Landroid/adservices/adselection/AdSelectionManager$2;

    invoke-direct {v3, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$2;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 335
    invoke-interface {v0, v1, v2, v3}, Landroid/adservices/adselection/AdSelectionService;->persistAdSelectionResult(Landroid/adservices/adselection/PersistAdSelectionResultInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/PersistAdSelectionResultCallback;)V
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_53} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_53} :catch_54

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_75

    .line 377
    :catch_54
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Failure of AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 379
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_76

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_65
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 375
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_75
    nop

    .line 381
    :goto_76
    return-void
.end method

.method public whitelist reportEvent(Landroid/adservices/adselection/ReportEventRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "request"    # Landroid/adservices/adselection/ReportEventRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/ReportEventRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :try_start_9
    new-instance v0, Landroid/adservices/adselection/ReportInteractionInput$Builder;

    invoke-direct {v0}, Landroid/adservices/adselection/ReportInteractionInput$Builder;-><init>()V

    .line 779
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportEventRequest;->getAdSelectionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setAdSelectionId(J)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 780
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportEventRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setInteractionKey(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportEventRequest;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setInteractionData(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 782
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportEventRequest;->getReportingDestinations()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setReportingDestinations(I)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 783
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 784
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerSdkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setCallerSdkName(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 785
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportEventRequest;->getInputEvent()Landroid/view/InputEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/adselection/ReportInteractionInput$Builder;

    move-result-object v0

    .line 787
    .local v0, "inputBuilder":Landroid/adservices/adselection/ReportInteractionInput$Builder;
    new-instance v1, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/adselection/ReportInteractionInput$Builder;)V

    invoke-direct {p0, v1}, Landroid/adservices/adselection/AdSelectionManager;->getAdId(Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;)V

    .line 789
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v1

    .line 790
    .local v1, "service":Landroid/adservices/adselection/AdSelectionService;
    nop

    .line 791
    invoke-virtual {v0}, Landroid/adservices/adselection/ReportInteractionInput$Builder;->build()Landroid/adservices/adselection/ReportInteractionInput;

    move-result-object v2

    new-instance v3, Landroid/adservices/adselection/AdSelectionManager$6;

    invoke-direct {v3, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$6;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 790
    invoke-interface {v1, v2, v3}, Landroid/adservices/adselection/AdSelectionService;->reportInteraction(Landroid/adservices/adselection/ReportInteractionInput;Landroid/adservices/adselection/ReportInteractionCallback;)V
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_63} :catch_77
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_63} :catch_64

    .end local v0    # "inputBuilder":Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .end local v1    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_87

    .line 811
    :catch_64
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 813
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_88

    .line 807
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_77
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 809
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 814
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_87
    nop

    .line 815
    :goto_88
    return-void
.end method

.method public whitelist reportImpression(Landroid/adservices/adselection/ReportImpressionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "request"    # Landroid/adservices/adselection/ReportImpressionRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/ReportImpressionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 694
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 700
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/ReportImpressionInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/ReportImpressionInput$Builder;-><init>()V

    .line 702
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportImpressionRequest;->getAdSelectionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/adservices/adselection/ReportImpressionInput$Builder;->setAdSelectionId(J)Landroid/adservices/adselection/ReportImpressionInput$Builder;

    move-result-object v1

    .line 703
    invoke-virtual {p1}, Landroid/adservices/adselection/ReportImpressionRequest;->getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/ReportImpressionInput$Builder;->setAdSelectionConfig(Landroid/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/ReportImpressionInput$Builder;

    move-result-object v1

    .line 704
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/ReportImpressionInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/ReportImpressionInput$Builder;

    move-result-object v1

    .line 705
    invoke-virtual {v1}, Landroid/adservices/adselection/ReportImpressionInput$Builder;->build()Landroid/adservices/adselection/ReportImpressionInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$5;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$5;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 700
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->reportImpression(Landroid/adservices/adselection/ReportImpressionInput;Landroid/adservices/adselection/ReportImpressionCallback;)V
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_3a} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3a} :catch_3b

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_5e

    .line 725
    :catch_3b
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 727
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 721
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4e
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 723
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 728
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_5e
    nop

    .line 729
    :goto_5f
    return-void
.end method

.method public whitelist selectAds(Landroid/adservices/adselection/AdSelectionConfig;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/AdSelectionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/adselection/AdSelectionOutcome;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 440
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adselection/AdSelectionOutcome;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 446
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/AdSelectionInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/AdSelectionInput$Builder;-><init>()V

    .line 448
    invoke-virtual {v1, p1}, Landroid/adservices/adselection/AdSelectionInput$Builder;->setAdSelectionConfig(Landroid/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/AdSelectionInput$Builder;

    move-result-object v1

    .line 449
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/AdSelectionInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/AdSelectionInput$Builder;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Landroid/adservices/adselection/AdSelectionInput$Builder;->build()Landroid/adservices/adselection/AdSelectionInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v2}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v2

    new-instance v3, Landroid/adservices/adselection/AdSelectionManager$3;

    invoke-direct {v3, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$3;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 446
    invoke-interface {v0, v1, v2, v3}, Landroid/adservices/adselection/AdSelectionService;->selectAds(Landroid/adservices/adselection/AdSelectionInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_3f} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3f} :catch_40

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_61

    .line 483
    :catch_40
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Failure of AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 485
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_62

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_51
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 481
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 486
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_61
    nop

    .line 487
    :goto_62
    return-void
.end method

.method public whitelist selectAds(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "adSelectionFromOutcomesConfig"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/adselection/AdSelectionOutcome;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adselection/AdSelectionOutcome;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 558
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;-><init>()V

    .line 560
    invoke-virtual {v1, p1}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->setAdSelectionFromOutcomesConfig(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;)Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;

    move-result-object v1

    .line 561
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;

    move-result-object v1

    .line 562
    invoke-virtual {v1}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->build()Landroid/adservices/adselection/AdSelectionFromOutcomesInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v2}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v2

    new-instance v3, Landroid/adservices/adselection/AdSelectionManager$4;

    invoke-direct {v3, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$4;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 558
    invoke-interface {v0, v1, v2, v3}, Landroid/adservices/adselection/AdSelectionService;->selectAdsFromOutcomes(Landroid/adservices/adselection/AdSelectionFromOutcomesInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_3f} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3f} :catch_40

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_61

    .line 600
    :catch_40
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Failure of AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 602
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_62

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_51
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 598
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 603
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_61
    nop

    .line 604
    :goto_62
    return-void
.end method

.method public whitelist setAppInstallAdvertisers(Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 853
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 859
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;-><init>()V

    .line 861
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;->getAdvertisers()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->setAdvertisers(Ljava/util/Set;)Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;

    move-result-object v1

    .line 862
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;

    move-result-object v1

    .line 863
    invoke-virtual {v1}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->build()Landroid/adservices/adselection/SetAppInstallAdvertisersInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$7;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$7;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 859
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->setAppInstallAdvertisers(Landroid/adservices/adselection/SetAppInstallAdvertisersInput;Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_32} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_32} :catch_33

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_56

    .line 883
    :catch_33
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 885
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_57

    .line 879
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_46
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 881
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 886
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_56
    nop

    .line 887
    :goto_57
    return-void
.end method

.method public whitelist updateAdCounterHistogram(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "updateAdCounterHistogramRequest"    # Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 928
    .local p3, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    const-string v0, "Request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 929
    const-string v0, "Executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 930
    const-string v0, "Outcome receiver must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    :try_start_f
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 934
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    new-instance v1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;

    .line 937
    invoke-virtual {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->getAdSelectionId()J

    move-result-wide v2

    .line 938
    invoke-virtual {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->getAdEventType()I

    move-result v4

    .line 939
    invoke-virtual {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->getCallerAdTech()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v5

    .line 940
    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;-><init>(JILandroid/adservices/common/AdTechIdentifier;Ljava/lang/String;)V

    .line 941
    invoke-virtual {v1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->build()Landroid/adservices/adselection/UpdateAdCounterHistogramInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$8;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/AdSelectionManager$8;-><init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 935
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->updateAdCounterHistogram(Landroid/adservices/adselection/UpdateAdCounterHistogramInput;Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;)V
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3b} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3b} :catch_3c

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_5f

    .line 961
    :catch_3c
    move-exception v0

    .line 962
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Remote exception encountered while updating ad counter histogram"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 963
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_60

    .line 957
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4f
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/AdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 959
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 964
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_5f
    nop

    .line 965
    :goto_60
    return-void
.end method
