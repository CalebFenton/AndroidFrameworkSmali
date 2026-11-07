.class public final Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$ResponseParams;,
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$InferenceParams;,
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$StateParams;,
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$RequestType;
    }
.end annotation


# static fields
.field public static final blacklist API_VERSION_BUNDLE_KEY:Ljava/lang/String; = "ApiVersionBundleKey"

.field public static final blacklist AUGMENT_REQUEST_CONTENT_BUNDLE_KEY:Ljava/lang/String; = "AugmentRequestContentBundleKey"

.field public static final whitelist REQUEST_TYPE_EMBEDDINGS:I = 0x2

.field public static final whitelist REQUEST_TYPE_INFERENCE:I = 0x0

.field public static final whitelist REQUEST_TYPE_PREPARE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OnDeviceIntelligence"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    .line 92
    return-void
.end method

.method private static blacklist configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .param p0, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 607
    if-nez p0, :cond_4

    .line 608
    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_4
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 611
    .local v0, "cancellationFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 620
    return-object v0
.end method

.method private static blacklist configureRemoteProcessingSignalFuture(Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .param p0, "processingSignal"    # Landroid/app/ondeviceintelligence/ProcessingSignal;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/ProcessingSignal;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 626
    if-nez p0, :cond_4

    .line 627
    const/4 v0, 0x0

    return-object v0

    .line 629
    :cond_4
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 630
    .local v0, "processingSignalFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 638
    return-object v0
.end method

.method static synthetic blacklist lambda$configureRemoteCancellationFuture$5(Landroid/os/CancellationSignal;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p1, "cancellationTransport"    # Landroid/os/IBinder;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 613
    if-nez p2, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 616
    :cond_5
    nop

    .line 617
    invoke-static {p1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 616
    invoke-virtual {p0, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_15

    .line 614
    :cond_e
    :goto_e
    const-string v0, "OnDeviceIntelligence"

    const-string v1, "Unable to receive the remote cancellation signal."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    :goto_15
    return-void
.end method

.method static synthetic blacklist lambda$configureRemoteProcessingSignalFuture$6(Landroid/app/ondeviceintelligence/ProcessingSignal;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "processingSignal"    # Landroid/app/ondeviceintelligence/ProcessingSignal;
    .param p1, "transport"    # Landroid/os/IBinder;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 632
    if-nez p2, :cond_d

    if-nez p1, :cond_5

    goto :goto_d

    .line 635
    :cond_5
    invoke-static {p1}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ondeviceintelligence/ProcessingSignal;->setRemote(Landroid/app/ondeviceintelligence/IProcessingSignal;)V

    goto :goto_14

    .line 633
    :cond_d
    :goto_d
    const-string v0, "OnDeviceIntelligence"

    const-string v1, "Unable to receive the remote processing signal."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    :goto_14
    return-void
.end method

.method static synthetic blacklist lambda$getVersion$0(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p0, "versionConsumer"    # Ljava/util/function/LongConsumer;

    .line 108
    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$1(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "versionConsumer"    # Ljava/util/function/LongConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/LongConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$2(Ljava/util/function/LongConsumer;J)V
    .registers 3
    .param p0, "versionConsumer"    # Ljava/util/function/LongConsumer;
    .param p1, "version"    # J

    .line 112
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$3(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;J)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "versionConsumer"    # Ljava/util/function/LongConsumer;
    .param p2, "version"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/LongConsumer;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$4(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "versionConsumer"    # Ljava/util/function/LongConsumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 106
    if-nez p2, :cond_a

    .line 107
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 110
    :cond_a
    const-string v0, "ApiVersionBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 111
    .local v0, "version":J
    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;J)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist getFeature(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p3, "featureReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;>;"
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$1;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 166
    .local v0, "callback":Landroid/app/ondeviceintelligence/IFeatureCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, p1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 169
    .end local v0    # "callback":Landroid/app/ondeviceintelligence/IFeatureCallback;
    nop

    .line 170
    return-void

    .line 167
    :catch_c
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p3, "featureDetailsReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/ondeviceintelligence/FeatureDetails;Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;>;"
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 238
    .local v0, "callback":Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, p1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 241
    .end local v0    # "callback":Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    nop

    .line 242
    return-void

    .line 239
    :catch_c
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLatestInferenceInfo(J)Ljava/util/List;
    .registers 5
    .param p1, "startTimeEpochMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/InferenceInfo;",
            ">;"
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getLatestInferenceInfo(J)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 512
    :catch_7
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRemoteServicePackageName()Ljava/lang/String;
    .registers 3

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getRemoteServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 132
    .local v0, "result":Ljava/lang/String;
    nop

    .line 133
    return-object v0

    .line 130
    .end local v0    # "result":Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getVersion(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V
    .registers 5
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "versionConsumer"    # Ljava/util/function/LongConsumer;

    .line 105
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 114
    .local v0, "callback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getVersion(Landroid/os/RemoteCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 117
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    nop

    .line 118
    return-void

    .line 115
    :catch_11
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist listFeatures(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p2, "featureListReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/app/ondeviceintelligence/Feature;>;Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;>;"
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 200
    .local v0, "callback":Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 203
    .end local v0    # "callback":Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    nop

    .line 204
    return-void

    .line 201
    :catch_c
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;)V
    .registers 16
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "request"    # Landroid/os/Bundle;
    .param p3, "requestType"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "processingSignal"    # Landroid/app/ondeviceintelligence/ProcessingSignal;
    .param p6, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;

    .line 376
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;

    invoke-direct {v0, p0, p6, p7}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;)V

    move-object v7, v0

    .line 406
    .local v7, "callback":Landroid/app/ondeviceintelligence/IResponseCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    .line 407
    invoke-static {p4, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    .line 408
    invoke-static {p5, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteProcessingSignalFuture(Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v6
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_1b

    .line 406
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .end local p2    # "request":Landroid/os/Bundle;
    .end local p3    # "requestType":I
    .local v2, "feature":Landroid/app/ondeviceintelligence/Feature;
    .local v3, "request":Landroid/os/Bundle;
    .local v4, "requestType":I
    :try_start_13
    invoke-interface/range {v1 .. v7}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18

    .line 413
    .end local v7    # "callback":Landroid/app/ondeviceintelligence/IResponseCallback;
    nop

    .line 414
    return-void

    .line 411
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v2    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .end local v3    # "request":Landroid/os/Bundle;
    .end local v4    # "requestType":I
    .restart local p1    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .restart local p2    # "request":Landroid/os/Bundle;
    .restart local p3    # "requestType":I
    :catch_1b
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 412
    .end local p2    # "request":Landroid/os/Bundle;
    .end local p3    # "requestType":I
    .restart local v2    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .restart local v3    # "request":Landroid/os/Bundle;
    .restart local v4    # "requestType":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V
    .registers 16
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "request"    # Landroid/os/Bundle;
    .param p3, "requestType"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "processingSignal"    # Landroid/app/ondeviceintelligence/ProcessingSignal;
    .param p6, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    .line 446
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;

    invoke-direct {v0, p0, p6, p7}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V

    move-object v7, v0

    .line 490
    .local v7, "callback":Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    .line 492
    invoke-static {p4, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    .line 493
    invoke-static {p5, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteProcessingSignalFuture(Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v6
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_1b

    .line 490
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .end local p2    # "request":Landroid/os/Bundle;
    .end local p3    # "requestType":I
    .local v2, "feature":Landroid/app/ondeviceintelligence/Feature;
    .local v3, "request":Landroid/os/Bundle;
    .local v4, "requestType":I
    :try_start_13
    invoke-interface/range {v1 .. v7}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18

    .line 497
    .end local v7    # "callback":Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    nop

    .line 498
    return-void

    .line 495
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v2    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .end local v3    # "request":Landroid/os/Bundle;
    .end local v4    # "requestType":I
    .restart local p1    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .restart local p2    # "request":Landroid/os/Bundle;
    .restart local p3    # "requestType":I
    :catch_1b
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 496
    .end local p2    # "request":Landroid/os/Bundle;
    .end local p3    # "requestType":I
    .restart local v2    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .restart local v3    # "request":Landroid/os/Bundle;
    .restart local v4    # "requestType":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V
    .registers 8
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/app/ondeviceintelligence/DownloadCallback;

    .line 266
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;

    invoke-direct {v0, p0, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V

    .line 295
    .local v0, "downloadCallback":Landroid/app/ondeviceintelligence/IDownloadCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    .line 296
    invoke-static {p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 295
    invoke-interface {v1, p1, v2, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 300
    .end local v0    # "downloadCallback":Landroid/app/ondeviceintelligence/IDownloadCallback;
    nop

    .line 301
    return-void

    .line 298
    :catch_10
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "request"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/TokenInfo;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p5, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/ondeviceintelligence/TokenInfo;Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;>;"
    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$5;

    invoke-direct {v0, p0, p4, p5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$5;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 341
    .local v0, "callback":Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    .line 342
    invoke-static {p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 341
    invoke-interface {v1, p1, p2, v2, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 346
    .end local v0    # "callback":Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    nop

    .line 347
    return-void

    .line 344
    :catch_10
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
