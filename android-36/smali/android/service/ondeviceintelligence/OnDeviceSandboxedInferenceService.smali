.class public abstract Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;
.super Landroid/app/Service;
.source "OnDeviceSandboxedInferenceService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist DEVICE_CONFIG_UPDATE_BUNDLE_KEY:Ljava/lang/String; = "device_config_update"

.field public static final blacklist INFERENCE_INFO_BUNDLE_KEY:Ljava/lang/String; = "inference_info"

.field public static final blacklist MODEL_LOADED_BROADCAST_INTENT:Ljava/lang/String; = "android.service.ondeviceintelligence.MODEL_LOADED"

.field public static final blacklist MODEL_LOADED_BUNDLE_KEY:Ljava/lang/String; = "model_loaded"

.field public static final blacklist MODEL_UNLOADED_BROADCAST_INTENT:Ljava/lang/String; = "android.service.ondeviceintelligence.MODEL_UNLOADED"

.field public static final blacklist MODEL_UNLOADED_BUNDLE_KEY:Ljava/lang/String; = "model_unloaded"

.field public static final blacklist REGISTER_MODEL_UPDATE_CALLBACK_BUNDLE_KEY:Ljava/lang/String; = "register_model_update_callback"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.ondeviceintelligence.OnDeviceSandboxedInferenceService"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRemoteStorageService:Landroid/service/ondeviceintelligence/IRemoteStorageService;


# direct methods
.method public static synthetic blacklist $r8$lambda$UbZvuBF7YPXIW-P0gLGlxdxRYbw(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->lambda$wrapRemoteCallback$9(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteStorageService(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/service/ondeviceintelligence/IRemoteStorageService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->mRemoteStorageService:Landroid/service/ondeviceintelligence/IRemoteStorageService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapRemoteCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapRemoteCallback(Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapResponseCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IResponseCallback;)Landroid/app/ondeviceintelligence/ProcessingCallback;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapResponseCallback(Landroid/app/ondeviceintelligence/IResponseCallback;)Landroid/app/ondeviceintelligence/ProcessingCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapStreamingResponseCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapStreamingResponseCallback(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapTokenInfoCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)Landroid/os/OutcomeReceiver;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapTokenInfoCallback(Landroid/app/ondeviceintelligence/ITokenInfoCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smwrapOutcomeReceiver(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)Landroid/os/OutcomeReceiver;
    .registers 1

    invoke-static {p0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapOutcomeReceiver(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    const-class v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getReadOnlyFileDescriptor$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultConsumer"    # Ljava/util/function/Consumer;

    .line 406
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getReadOnlyFileDescriptor$1(Ljava/util/function/Consumer;Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p0, "resultConsumer"    # Ljava/util/function/Consumer;
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 409
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getReadOnlyFileDescriptor$2(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "resultConsumer"    # Ljava/util/function/Consumer;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "err"    # Ljava/lang/Throwable;

    .line 404
    if-eqz p4, :cond_27

    .line 405
    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure when reading file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 408
    :cond_27
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 411
    :goto_2f
    return-void
.end method

.method static synthetic blacklist lambda$wrapAsRemoteCallback$3(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultConsumer"    # Ljava/util/function/Consumer;

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrapAsRemoteCallback$4(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p0, "pfdMap"    # Ljava/util/Map;
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 463
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$wrapAsRemoteCallback$5(Ljava/util/function/Consumer;Ljava/util/Map;)V
    .registers 2
    .param p0, "resultConsumer"    # Ljava/util/function/Consumer;
    .param p1, "pfdMap"    # Ljava/util/Map;

    .line 465
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrapAsRemoteCallback$6(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "resultConsumer"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 458
    if-nez p2, :cond_b

    .line 459
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 461
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v0, "pfdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 465
    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 467
    .end local v0    # "pfdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    :goto_24
    return-void
.end method

.method static synthetic blacklist lambda$wrapRemoteCallback$7(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "contentCallback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 556
    const-class v0, Landroid/os/Bundle;

    .line 557
    const-string v1, "AugmentRequestContentBundleKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 556
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrapRemoteCallback$8(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "contentCallback"    # Ljava/util/function/Consumer;

    .line 561
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$wrapRemoteCallback$9(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "contentCallback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 555
    if-eqz p2, :cond_f

    .line 556
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 560
    :cond_f
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 563
    :goto_1b
    return-void
.end method

.method private blacklist wrapAsRemoteCallback(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Landroid/os/RemoteCallback;
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    .line 457
    .local p1, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;>;"
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private static blacklist wrapOutcomeReceiver(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)Landroid/os/OutcomeReceiver;
    .registers 2
    .param p0, "callback"    # Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PersistableBundle;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;

    invoke-direct {v0, p0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;-><init>(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    return-object v0
.end method

.method private blacklist wrapRemoteCallback(Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    .line 553
    .local p1, "contentCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;-><init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private blacklist wrapResponseCallback(Landroid/app/ondeviceintelligence/IResponseCallback;)Landroid/app/ondeviceintelligence/ProcessingCallback;
    .registers 3
    .param p1, "callback"    # Landroid/app/ondeviceintelligence/IResponseCallback;

    .line 472
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$2;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$2;-><init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    return-object v0
.end method

.method private blacklist wrapStreamingResponseCallback(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .registers 3
    .param p1, "callback"    # Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 508
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;-><init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    return-object v0
.end method

.method private blacklist wrapTokenInfoCallback(Landroid/app/ondeviceintelligence/ITokenInfoCallback;)Landroid/os/OutcomeReceiver;
    .registers 3
    .param p1, "tokenInfoCallback"    # Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/ITokenInfoCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/TokenInfo;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$4;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$4;-><init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist fetchFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .line 427
    .local p3, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->mRemoteStorageService:Landroid/service/ondeviceintelligence/IRemoteStorageService;

    .line 428
    invoke-direct {p0, p3, p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapAsRemoteCallback(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Landroid/os/RemoteCallback;

    move-result-object v1

    .line 427
    invoke-interface {v0, p1, v1}, Landroid/service/ondeviceintelligence/IRemoteStorageService;->getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 431
    nop

    .line 432
    return-void

    .line 429
    :catch_b
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getCallbackExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .line 450
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public final whitelist getReadOnlyFileDescriptor(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 396
    .local p3, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 398
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    :try_start_5
    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->mRemoteStorageService:Landroid/service/ondeviceintelligence/IRemoteStorageService;

    invoke-interface {v1, p1, v0}, Landroid/service/ondeviceintelligence/IRemoteStorageService;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_14

    .line 402
    nop

    .line 403
    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 412
    return-void

    .line 399
    :catch_14
    move-exception v1

    .line 400
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot open file due to remote service failure"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 164
    const-string v0, "android.service.ondeviceintelligence.OnDeviceSandboxedInferenceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 165
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;

    invoke-direct {v0, p0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;-><init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)V

    return-object v0

    .line 271
    :cond_12
    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->TAG:Ljava/lang/String;

    const-string v1, "Incorrect service interface, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->mHandler:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method public abstract whitelist onProcessRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Landroid/app/ondeviceintelligence/ProcessingCallback;)V
.end method

.method public abstract whitelist onProcessRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V
.end method

.method public abstract whitelist onTokenInfoRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/TokenInfo;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onUpdateProcessingState(Landroid/os/Bundle;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PersistableBundle;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public final whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 375
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 376
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->mRemoteStorageService:Landroid/service/ondeviceintelligence/IRemoteStorageService;

    invoke-interface {v1, p1, v0}, Landroid/service/ondeviceintelligence/IRemoteStorageService;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 377
    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 378
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v2

    .line 379
    .end local v0    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1a
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot open file due to remote service failure"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
