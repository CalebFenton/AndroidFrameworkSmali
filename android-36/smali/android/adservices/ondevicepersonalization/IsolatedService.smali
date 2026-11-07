.class public abstract Landroid/adservices/ondevicepersonalization/IsolatedService;
.super Landroid/app/Service;
.source "IsolatedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;,
        Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;
    }
.end annotation


# static fields
.field private static final blacklist MAX_EXCEPTION_CHAIN_DEPTH:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendError(Landroid/adservices/ondevicepersonalization/IsolatedService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/adservices/ondevicepersonalization/IsolatedService;->sendError(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/adservices/ondevicepersonalization/IsolatedService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;
    .registers 1

    sget-object v0, Landroid/adservices/ondevicepersonalization/IsolatedService;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const-class v0, Landroid/adservices/ondevicepersonalization/IsolatedService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/IsolatedService;->TAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/IsolatedService;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist sendError(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;ILjava/lang/Throwable;)V
    .registers 8
    .param p1, "resultCallback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;
    .param p2, "errorCode"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 484
    nop

    .line 485
    const/4 v0, 0x3

    :try_start_2
    invoke-static {p3, v0}, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->toByteArray(Ljava/lang/Throwable;I)[B

    move-result-object v0

    .line 484
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;->onError(II[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 488
    goto :goto_26

    .line 486
    :catch_b
    move-exception v0

    .line 487
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/ondevicepersonalization/IsolatedService;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/adservices/ondevicepersonalization/IsolatedService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Isolated Service Callback failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 489
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method


# virtual methods
.method public final whitelist getEventUrlProvider(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/EventUrlProvider;
    .registers 4
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 164
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventUrlProvider;

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/EventUrlProvider;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V

    return-object v0
.end method

.method public final whitelist getFederatedComputeScheduler(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
    .registers 5
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 192
    new-instance v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;

    .line 193
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getFederatedComputeService()Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V

    .line 192
    return-object v0
.end method

.method public final whitelist getLocalData(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/MutableKeyValueStore;
    .registers 4
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 134
    new-instance v0, Landroid/adservices/ondevicepersonalization/LocalDataImpl;

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/LocalDataImpl;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V

    return-object v0
.end method

.method public final whitelist getLogReader(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/LogReader;
    .registers 4
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 149
    new-instance v0, Landroid/adservices/ondevicepersonalization/LogReader;

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/LogReader;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V

    return-object v0
.end method

.method public final whitelist getModelManager(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/ModelManager;
    .registers 5
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 206
    new-instance v0, Landroid/adservices/ondevicepersonalization/ModelManager;

    .line 207
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v1

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getModelService()Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/ModelManager;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;)V

    .line 206
    return-object v0
.end method

.method public final whitelist getRemoteData(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/KeyValueStore;
    .registers 4
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 117
    new-instance v0, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/RemoteDataImpl;-><init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V

    return-object v0
.end method

.method public final whitelist getUserData(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/UserData;
    .registers 3
    .param p1, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 176
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RequestToken;->getUserData()Landroid/adservices/ondevicepersonalization/UserData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 66
    new-instance v0, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;

    invoke-direct {v0, p0}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;-><init>(Landroid/adservices/ondevicepersonalization/IsolatedService;)V

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedService;->mBinder:Landroid/os/IBinder;

    .line 67
    return-void
.end method

.method public abstract whitelist onRequest(Landroid/adservices/ondevicepersonalization/RequestToken;)Landroid/adservices/ondevicepersonalization/IsolatedWorker;
.end method
