.class public abstract Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;
.super Landroid/app/Service;
.source "OnDeviceIntelligenceService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.ondeviceintelligence.OnDeviceIntelligenceService"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;


# direct methods
.method public static synthetic blacklist $r8$lambda$WGhlx7Qy9NmPTt2WmxjyjgGi1Ko(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->lambda$onGetReadOnlyFileDescriptor$1(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteProcessingService(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetReadOnlyFileDescriptor(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->onGetReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapDownloadCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapDownloadCallback(Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapFeatureCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapFeatureCallback(Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapFeatureDetailsCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapFeatureDetailsCallback(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapListFeaturesCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapListFeaturesCallback(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smtryClosePfds(Ljava/util/Collection;)V
    .registers 1

    invoke-static {p0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->tryClosePfds(Ljava/util/Collection;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    const-class v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onGetReadOnlyFileDescriptor$1(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetReadOnlyFileDescriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " under internal app storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 463
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 465
    :cond_37
    const/4 v1, 0x0

    .line 467
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v2, 0x10000000

    :try_start_3a
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 468
    sget-object v2, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v3, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_46} :catch_51
    .catchall {:try_start_3a .. :try_end_46} :catchall_4f

    .line 473
    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 474
    if-eqz v1, :cond_63

    .line 475
    :goto_4b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_63

    .line 473
    :catchall_4f
    move-exception v2

    goto :goto_64

    .line 469
    :catch_51
    move-exception v2

    .line 470
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_52
    sget-object v3, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot open file. No ParcelFileDescriptor returned."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_4f

    .line 473
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 474
    if-eqz v1, :cond_63

    .line 475
    goto :goto_4b

    .line 478
    :cond_63
    :goto_63
    return-void

    .line 473
    :goto_64
    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 474
    if-eqz v1, :cond_6c

    .line 475
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 477
    :cond_6c
    throw v2
.end method

.method static synthetic blacklist lambda$tryClosePfds$0(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 448
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 451
    goto :goto_c

    .line 449
    :catch_4
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v2, "Error closing FD"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private blacklist onGetReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetReadOnlyFileDescriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 479
    return-void
.end method

.method private static blacklist tryClosePfds(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p0, "pfds":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 453
    return-void
.end method

.method private blacklist wrapDownloadCallback(Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;
    .registers 3
    .param p1, "downloadCallback"    # Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 405
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    return-object v0
.end method

.method private blacklist wrapFeatureCallback(Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;
    .registers 3
    .param p1, "featureCallback"    # Landroid/app/ondeviceintelligence/IFeatureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/IFeatureCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureCallback;)V

    return-object v0
.end method

.method private blacklist wrapFeatureDetailsCallback(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;
    .registers 3
    .param p1, "featureStatusCallback"    # Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    return-object v0
.end method

.method private blacklist wrapListFeaturesCallback(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;
    .registers 3
    .param p1, "listFeaturesCallback"    # Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/IListFeaturesCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    .line 354
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 123
    const-string v0, "android.service.ondeviceintelligence.OnDeviceIntelligenceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 124
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;

    invoke-direct {v0, p0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)V

    return-object v0

    .line 254
    :cond_12
    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v1, "Incorrect service interface, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method public abstract whitelist onDownloadFeature(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/DownloadCallback;)V
.end method

.method public abstract whitelist onGetFeature(IILandroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetVersion(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract whitelist onInferenceServiceConnected()V
.end method

.method public abstract whitelist onInferenceServiceDisconnected()V
.end method

.method public abstract whitelist onListFeatures(ILandroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onReady()V
    .registers 1

    .line 264
    return-void
.end method

.method public final whitelist updateProcessingState(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "processingState"    # Landroid/os/Bundle;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PersistableBundle;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p3, "statusReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    if-eqz v0, :cond_32

    .line 301
    :try_start_7
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/service/ondeviceintelligence/IRemoteProcessingService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    .line 322
    nop

    .line 323
    return-void

    .line 319
    :catch_13
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateProcessingState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Remote processing service is unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
