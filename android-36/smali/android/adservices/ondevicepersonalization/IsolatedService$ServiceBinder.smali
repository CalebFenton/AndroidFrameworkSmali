.class Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;
.super Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub;
.source "IsolatedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/IsolatedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/IsolatedService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/IsolatedService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub;-><init>()V

    return-void
.end method

.method private static blacklist getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .registers 3
    .param p0, "params"    # Landroid/os/Bundle;

    .line 436
    nop

    .line 439
    const-string v0, "android.ondevicepersonalization.extra.data_access_service_binder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda0;-><init>()V

    .line 438
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 437
    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v0

    .line 444
    .local v0, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    const-string v1, "Failed to get IDataAccessService binder from the input params!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    return-object v0
.end method

.method private static blacklist getFederatedComputeService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    .registers 3
    .param p0, "params"    # Landroid/os/Bundle;

    .line 419
    nop

    .line 422
    const-string v0, "android.ondevicepersonalization.extra.federated_computation_service_binder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda5;-><init>()V

    .line 421
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 420
    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    move-result-object v0

    .line 429
    .local v0, "fcBinder":Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    const-string v1, "Failed to get IFederatedComputeService binder from the input params!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    return-object v0
.end method

.method private static blacklist getIsolatedModelService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
    .registers 3
    .param p0, "params"    # Landroid/os/Bundle;

    .line 404
    nop

    .line 407
    const-string v0, "android.ondevicepersonalization.extra.model_service_binder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda14;-><init>()V

    .line 406
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 405
    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    move-result-object v0

    .line 412
    .local v0, "modelServiceBinder":Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
    const-string v1, "Failed to get IIsolatedModelService binder from the input params!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    return-object v0
.end method

.method static synthetic blacklist lambda$getDataAccessService$12()Ljava/lang/String;
    .registers 2

    .line 441
    const-string v0, "android.ondevicepersonalization.extra.data_access_service_binder"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getFederatedComputeService$11()Ljava/lang/String;
    .registers 2

    .line 425
    const-string v0, "android.ondevicepersonalization.extra.federated_computation_service_binder"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getIsolatedModelService$10()Ljava/lang/String;
    .registers 2

    .line 409
    const-string v0, "android.ondevicepersonalization.extra.model_service_binder"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performDownload$8()Ljava/lang/String;
    .registers 2

    .line 372
    const-string v0, "android.ondevicepersonalization.extra.input"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performDownload$9(Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;)Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;
    .registers 2
    .param p0, "v"    # Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;

    .line 396
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$performExecute$13()Ljava/lang/String;
    .registers 2

    .line 457
    const-string v0, "android.ondevicepersonalization.extra.input"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performExecute$14(Landroid/adservices/ondevicepersonalization/ExecuteOutput;)Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;
    .registers 2
    .param p0, "v"    # Landroid/adservices/ondevicepersonalization/ExecuteOutput;

    .line 474
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/ExecuteOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/ExecuteOutput;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$performOnTrainingExample$2()Ljava/lang/String;
    .registers 2

    .line 286
    const-string v0, "android.ondevicepersonalization.extra.input"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performOnTrainingExample$3(Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;)Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
    .registers 4
    .param p0, "v"    # Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;

    .line 300
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;-><init>()V

    new-instance v1, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 304
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->getTrainingExampleRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;-><init>(Ljava/util/List;)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->setTrainingExampleRecords(Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;)Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->build()Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;

    move-result-object v0

    .line 300
    return-object v0
.end method

.method static synthetic blacklist lambda$performOnWebTrigger$0()Ljava/lang/String;
    .registers 2

    .line 260
    const-string v0, "android.ondevicepersonalization.extra.input"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performOnWebTrigger$1(Landroid/adservices/ondevicepersonalization/WebTriggerOutput;)Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;
    .registers 2
    .param p0, "v"    # Landroid/adservices/ondevicepersonalization/WebTriggerOutput;

    .line 271
    new-instance v0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/WebTriggerOutput;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$performOnWebViewEvent$4()Ljava/lang/String;
    .registers 2

    .line 320
    const-string v0, "android.ondevicepersonalization.extra.input"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performOnWebViewEvent$5(Landroid/adservices/ondevicepersonalization/EventOutput;)Landroid/adservices/ondevicepersonalization/EventOutputParcel;
    .registers 2
    .param p0, "v"    # Landroid/adservices/ondevicepersonalization/EventOutput;

    .line 331
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/EventOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/EventOutput;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$performRender$6()Ljava/lang/String;
    .registers 2

    .line 346
    const-string v0, "android.ondevicepersonalization.extra.input"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing \'%s\' from input params!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performRender$7(Landroid/adservices/ondevicepersonalization/RenderOutput;)Landroid/adservices/ondevicepersonalization/RenderOutputParcel;
    .registers 2
    .param p0, "v"    # Landroid/adservices/ondevicepersonalization/RenderOutput;

    .line 357
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/RenderOutput;)V

    return-object v0
.end method

.method private blacklist performDownload(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 13
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 367
    :try_start_0
    const-string v0, "android.ondevicepersonalization.extra.input"

    const-class v1, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda10;-><init>()V

    .line 368
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    .line 375
    .local v0, "inputParcel":Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    new-instance v1, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;

    .line 379
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->getDataAccessServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "Failed to get IDataAccessService binder from the input params!"

    .line 378
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 377
    invoke-static {v2}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V

    .line 382
    .local v1, "downloadedContents":Landroid/adservices/ondevicepersonalization/KeyValueStore;
    new-instance v2, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;

    invoke-direct {v2, v1}, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;-><init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;)V

    .line 385
    .local v2, "input":Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v3

    .line 387
    .local v3, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getFederatedComputeService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    move-result-object v4

    .line 388
    .local v4, "fcBinder":Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    const-string v5, "android.ondevicepersonalization.extra.user_data"

    const-class v6, Landroid/adservices/ondevicepersonalization/UserData;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/adservices/ondevicepersonalization/UserData;

    .line 389
    .local v5, "userData":Landroid/adservices/ondevicepersonalization/UserData;
    new-instance v6, Landroid/adservices/ondevicepersonalization/RequestToken;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v7, v5}, Landroid/adservices/ondevicepersonalization/RequestToken;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V

    .line 390
    .local v6, "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v7, v6}, Landroid/adservices/ondevicepersonalization/IsolatedService;->onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;

    move-result-object v7

    .line 391
    .local v7, "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    new-instance v8, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;

    new-instance v9, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda11;

    invoke-direct {v9}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v8, p2, v6, v9}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V

    invoke-interface {v7, v2, v8}, Landroid/adservices/ondevicepersonalization/IsolatedWorker;->onDownloadCompleted(Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;Landroid/os/OutcomeReceiver;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 400
    .end local v0    # "inputParcel":Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    .end local v1    # "downloadedContents":Landroid/adservices/ondevicepersonalization/KeyValueStore;
    .end local v2    # "input":Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    .end local v3    # "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .end local v4    # "fcBinder":Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    .end local v5    # "userData":Landroid/adservices/ondevicepersonalization/UserData;
    .end local v6    # "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    .end local v7    # "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    goto :goto_81

    .line 397
    :catch_5b
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Exception during Isolated Service download operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    const/16 v2, 0x64

    invoke-static {v1, p2, v2, v0}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_81
    return-void
.end method

.method private blacklist performExecute(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 13
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 452
    :try_start_0
    const-string v0, "android.ondevicepersonalization.extra.input"

    const-class v1, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;

    .line 454
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda1;-><init>()V

    .line 453
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;

    .line 460
    .local v0, "inputParcel":Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;
    new-instance v1, Landroid/adservices/ondevicepersonalization/ExecuteInput;

    invoke-direct {v1, v0}, Landroid/adservices/ondevicepersonalization/ExecuteInput;-><init>(Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;)V

    .line 461
    .local v1, "input":Landroid/adservices/ondevicepersonalization/ExecuteInput;
    nop

    .line 462
    invoke-virtual {v1}, Landroid/adservices/ondevicepersonalization/ExecuteInput;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get AppPackageName from the input params!"

    .line 461
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    .line 465
    .local v2, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getFederatedComputeService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    move-result-object v3

    .line 466
    .local v3, "fcBinder":Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getIsolatedModelService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    move-result-object v4

    .line 467
    .local v4, "modelServiceBinder":Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
    const-string v5, "android.ondevicepersonalization.extra.user_data"

    const-class v6, Landroid/adservices/ondevicepersonalization/UserData;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/adservices/ondevicepersonalization/UserData;

    .line 468
    .local v5, "userData":Landroid/adservices/ondevicepersonalization/UserData;
    new-instance v6, Landroid/adservices/ondevicepersonalization/RequestToken;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/adservices/ondevicepersonalization/RequestToken;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V

    .line 470
    .local v6, "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v7, v6}, Landroid/adservices/ondevicepersonalization/IsolatedService;->onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;

    move-result-object v7

    .line 471
    .local v7, "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    new-instance v8, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;

    new-instance v9, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v8, p2, v6, v9}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V

    invoke-interface {v7, v1, v8}, Landroid/adservices/ondevicepersonalization/IsolatedWorker;->onExecute(Landroid/adservices/ondevicepersonalization/ExecuteInput;Landroid/os/OutcomeReceiver;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 478
    .end local v0    # "inputParcel":Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;
    .end local v1    # "input":Landroid/adservices/ondevicepersonalization/ExecuteInput;
    .end local v2    # "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .end local v3    # "fcBinder":Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    .end local v4    # "modelServiceBinder":Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
    .end local v5    # "userData":Landroid/adservices/ondevicepersonalization/UserData;
    .end local v6    # "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    .end local v7    # "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    goto :goto_79

    .line 475
    :catch_53
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Exception during Isolated Service execute operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    const/16 v2, 0x64

    invoke-static {v1, p2, v2, v0}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    return-void
.end method

.method private blacklist performOnTrainingExample(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 11
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 281
    :try_start_0
    const-string v0, "android.ondevicepersonalization.extra.input"

    const-class v1, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;

    .line 283
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda12;-><init>()V

    .line 282
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;

    .line 289
    .local v0, "inputParcel":Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;
    new-instance v1, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;

    invoke-direct {v1, v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;-><init>(Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;)V

    .line 290
    .local v1, "input":Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    .line 291
    .local v2, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    const-string v3, "android.ondevicepersonalization.extra.user_data"

    const-class v4, Landroid/adservices/ondevicepersonalization/UserData;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/ondevicepersonalization/UserData;

    .line 292
    .local v3, "userData":Landroid/adservices/ondevicepersonalization/UserData;
    new-instance v4, Landroid/adservices/ondevicepersonalization/RequestToken;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5, v3}, Landroid/adservices/ondevicepersonalization/RequestToken;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V

    .line 293
    .local v4, "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v5, v4}, Landroid/adservices/ondevicepersonalization/IsolatedService;->onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;

    move-result-object v5

    .line 294
    .local v5, "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    new-instance v6, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;

    new-instance v7, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {v6, p2, v4, v7}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V

    invoke-interface {v5, v1, v6}, Landroid/adservices/ondevicepersonalization/IsolatedWorker;->onTrainingExamples(Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;Landroid/os/OutcomeReceiver;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 310
    .end local v0    # "inputParcel":Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;
    .end local v1    # "input":Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;
    .end local v2    # "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .end local v3    # "userData":Landroid/adservices/ondevicepersonalization/UserData;
    .end local v4    # "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    .end local v5    # "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    goto :goto_68

    .line 306
    :catch_42
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Exception during Isolated Service training example operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    const/16 v2, 0x64

    invoke-static {v1, p2, v2, v0}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method private blacklist performOnWebTrigger(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 11
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 255
    :try_start_0
    const-string v0, "android.ondevicepersonalization.extra.input"

    const-class v1, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda6;-><init>()V

    .line 256
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;

    .line 263
    .local v0, "inputParcel":Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;
    new-instance v1, Landroid/adservices/ondevicepersonalization/WebTriggerInput;

    invoke-direct {v1, v0}, Landroid/adservices/ondevicepersonalization/WebTriggerInput;-><init>(Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;)V

    .line 264
    .local v1, "input":Landroid/adservices/ondevicepersonalization/WebTriggerInput;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    .line 265
    .local v2, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    const-string v3, "android.ondevicepersonalization.extra.user_data"

    const-class v4, Landroid/adservices/ondevicepersonalization/UserData;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/ondevicepersonalization/UserData;

    .line 266
    .local v3, "userData":Landroid/adservices/ondevicepersonalization/UserData;
    new-instance v4, Landroid/adservices/ondevicepersonalization/RequestToken;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5, v3}, Landroid/adservices/ondevicepersonalization/RequestToken;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V

    .line 267
    .local v4, "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v5, v4}, Landroid/adservices/ondevicepersonalization/IsolatedService;->onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;

    move-result-object v5

    .line 268
    .local v5, "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    new-instance v6, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;

    new-instance v7, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {v6, p2, v4, v7}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V

    invoke-interface {v5, v1, v6}, Landroid/adservices/ondevicepersonalization/IsolatedWorker;->onWebTrigger(Landroid/adservices/ondevicepersonalization/WebTriggerInput;Landroid/os/OutcomeReceiver;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 275
    .end local v0    # "inputParcel":Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;
    .end local v1    # "input":Landroid/adservices/ondevicepersonalization/WebTriggerInput;
    .end local v2    # "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .end local v3    # "userData":Landroid/adservices/ondevicepersonalization/UserData;
    .end local v4    # "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    .end local v5    # "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    goto :goto_68

    .line 272
    :catch_42
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Exception during Isolated Service web trigger operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    const/16 v2, 0x64

    invoke-static {v1, p2, v2, v0}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method private blacklist performOnWebViewEvent(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 11
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 316
    :try_start_0
    const-string v0, "android.ondevicepersonalization.extra.input"

    const-class v1, Landroid/adservices/ondevicepersonalization/EventInputParcel;

    .line 318
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/EventInputParcel;

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda8;-><init>()V

    .line 317
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/EventInputParcel;

    .line 323
    .local v0, "inputParcel":Landroid/adservices/ondevicepersonalization/EventInputParcel;
    new-instance v1, Landroid/adservices/ondevicepersonalization/EventInput;

    invoke-direct {v1, v0}, Landroid/adservices/ondevicepersonalization/EventInput;-><init>(Landroid/adservices/ondevicepersonalization/EventInputParcel;)V

    .line 324
    .local v1, "input":Landroid/adservices/ondevicepersonalization/EventInput;
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    .line 325
    .local v2, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    const-string v3, "android.ondevicepersonalization.extra.user_data"

    const-class v4, Landroid/adservices/ondevicepersonalization/UserData;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/ondevicepersonalization/UserData;

    .line 326
    .local v3, "userData":Landroid/adservices/ondevicepersonalization/UserData;
    new-instance v4, Landroid/adservices/ondevicepersonalization/RequestToken;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5, v3}, Landroid/adservices/ondevicepersonalization/RequestToken;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V

    .line 327
    .local v4, "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v5, v4}, Landroid/adservices/ondevicepersonalization/IsolatedService;->onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;

    move-result-object v5

    .line 328
    .local v5, "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    new-instance v6, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;

    new-instance v7, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda9;

    invoke-direct {v7}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda9;-><init>()V

    invoke-direct {v6, p2, v4, v7}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V

    invoke-interface {v5, v1, v6}, Landroid/adservices/ondevicepersonalization/IsolatedWorker;->onEvent(Landroid/adservices/ondevicepersonalization/EventInput;Landroid/os/OutcomeReceiver;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 335
    .end local v0    # "inputParcel":Landroid/adservices/ondevicepersonalization/EventInputParcel;
    .end local v1    # "input":Landroid/adservices/ondevicepersonalization/EventInput;
    .end local v2    # "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .end local v3    # "userData":Landroid/adservices/ondevicepersonalization/UserData;
    .end local v4    # "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    .end local v5    # "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    goto :goto_68

    .line 332
    :catch_42
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Exception during Isolated Service web view event operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    const/16 v2, 0x64

    invoke-static {v1, p2, v2, v0}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method private blacklist performRender(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 10
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 341
    :try_start_0
    const-string v0, "android.ondevicepersonalization.extra.input"

    const-class v1, Landroid/adservices/ondevicepersonalization/RenderInputParcel;

    .line 343
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;

    new-instance v1, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda3;-><init>()V

    .line 342
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;

    .line 349
    .local v0, "inputParcel":Landroid/adservices/ondevicepersonalization/RenderInputParcel;
    new-instance v1, Landroid/adservices/ondevicepersonalization/RenderInput;

    invoke-direct {v1, v0}, Landroid/adservices/ondevicepersonalization/RenderInput;-><init>(Landroid/adservices/ondevicepersonalization/RenderInputParcel;)V

    .line 350
    .local v1, "input":Landroid/adservices/ondevicepersonalization/RenderInput;
    invoke-virtual {v1}, Landroid/adservices/ondevicepersonalization/RenderInput;->getRenderingConfig()Landroid/adservices/ondevicepersonalization/RenderingConfig;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->getDataAccessService(Landroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    .line 352
    .local v2, "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    new-instance v3, Landroid/adservices/ondevicepersonalization/RequestToken;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4, v4}, Landroid/adservices/ondevicepersonalization/RequestToken;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V

    .line 353
    .local v3, "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v4, v3}, Landroid/adservices/ondevicepersonalization/IsolatedService;->onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;

    move-result-object v4

    .line 354
    .local v4, "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    new-instance v5, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;

    new-instance v6, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v5, p2, v3, v6}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V

    invoke-interface {v4, v1, v5}, Landroid/adservices/ondevicepersonalization/IsolatedWorker;->onRender(Landroid/adservices/ondevicepersonalization/RenderInput;Landroid/os/OutcomeReceiver;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 361
    .end local v0    # "inputParcel":Landroid/adservices/ondevicepersonalization/RenderInputParcel;
    .end local v1    # "input":Landroid/adservices/ondevicepersonalization/RenderInput;
    .end local v2    # "binder":Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .end local v3    # "requestToken":Landroid/adservices/ondevicepersonalization/RequestToken;
    .end local v4    # "isolatedWorker":Landroid/adservices/ondevicepersonalization/IsolatedWorker;
    goto :goto_65

    .line 358
    :catch_3f
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Exception during Isolated Service render operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->this$0:Landroid/adservices/ondevicepersonalization/IsolatedService;

    const/16 v2, 0x64

    invoke-static {v1, p2, v2, v0}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method private blacklist performRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 7
    .param p1, "operationCode"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 235
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 236
    invoke-direct {p0, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performExecute(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V

    goto :goto_29

    .line 237
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 238
    invoke-direct {p0, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performDownload(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V

    goto :goto_29

    .line 239
    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    .line 240
    invoke-direct {p0, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performRender(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V

    goto :goto_29

    .line 241
    :cond_15
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    .line 242
    invoke-direct {p0, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performOnWebViewEvent(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V

    goto :goto_29

    .line 243
    :cond_1c
    const/4 v0, 0x5

    if-ne p1, v0, :cond_23

    .line 244
    invoke-direct {p0, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performOnTrainingExample(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V

    goto :goto_29

    .line 245
    :cond_23
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2a

    .line 246
    invoke-direct {p0, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performOnWebTrigger(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V

    .line 250
    :goto_29
    return-void

    .line 248
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 7
    .param p1, "operationCode"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 218
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 224
    .local v0, "token":J
    :try_start_a
    invoke-direct {p0, p1, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->performRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    nop

    .line 228
    return-void

    .line 226
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    throw v2
.end method
