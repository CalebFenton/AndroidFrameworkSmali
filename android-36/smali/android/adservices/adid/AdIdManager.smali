.class public Landroid/adservices/adid/AdIdManager;
.super Ljava/lang/Object;
.source "AdIdManager.java"


# static fields
.field public static final blacklist ADID_SERVICE:Ljava/lang/String; = "adid_service"

.field static final blacklist EMPTY_SDK:Ljava/lang/String; = ""


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/adid/IAdIdService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Landroid/adservices/adid/AdIdManager;->initialize(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;

    .line 92
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 79
    const-class v0, Landroid/adservices/adid/AdIdManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adid/AdIdManager;

    goto :goto_14

    .line 80
    :cond_f
    new-instance v0, Landroid/adservices/adid/AdIdManager;

    invoke-direct {v0, p0}, Landroid/adservices/adid/AdIdManager;-><init>(Landroid/content/Context;)V

    .line 78
    :goto_14
    return-object v0
.end method

.method private blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/adservices/adid/AdIdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist getService(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/adid/IAdIdService;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/adid/AdId;",
            "Ljava/lang/Exception;",
            ">;)",
            "Landroid/adservices/adid/IAdIdService;"
        }
    .end annotation

    .line 117
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adid/AdId;Ljava/lang/Exception;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "service":Landroid/adservices/adid/IAdIdService;
    :try_start_1
    iget-object v1, p0, Landroid/adservices/adid/AdIdManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v1}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/adid/IAdIdService;

    move-object v0, v1

    .line 122
    if-eqz v0, :cond_d

    .line 128
    goto :goto_23

    .line 123
    :cond_d
    new-instance v1, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v2, "Service is not available."

    invoke-direct {v1, v2}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "service":Landroid/adservices/adid/IAdIdService;
    .end local p0    # "this":Landroid/adservices/adid/AdIdManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adid/AdId;Ljava/lang/Exception;>;"
    throw v1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_15} :catch_15

    .line 125
    .restart local v0    # "service":Landroid/adservices/adid/IAdIdService;
    .restart local p0    # "this":Landroid/adservices/adid/AdIdManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adid/AdId;Ljava/lang/Exception;>;"
    :catch_15
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Failed binding to AdId service"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 127
    new-instance v2, Landroid/adservices/adid/AdIdManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroid/adservices/adid/AdIdManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_23
    return-object v0
.end method

.method static synthetic blacklist lambda$getService$0(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 127
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public whitelist getAdId(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Landroid/adservices/adid/AdId;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    .local p2, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Landroid/adservices/adid/AdId;Ljava/lang/Exception;>;"
    invoke-static {p2}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    return-void

    .line 233
    :cond_7
    invoke-static {p2}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/adservices/adid/AdIdManager;->getAdId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 234
    return-void
.end method

.method public whitelist getAdId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/adid/AdId;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/adid/AdId;Ljava/lang/Exception;>;"
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    new-instance v0, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v0

    .line 155
    .local v0, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    const-string v1, ""

    .line 156
    .local v1, "appPackageName":Ljava/lang/String;
    const-string v2, ""

    .line 158
    .local v2, "sdkPackageName":Ljava/lang/String;
    invoke-direct {p0}, Landroid/adservices/adid/AdIdManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 159
    .local v3, "getAdIdRequestContext":Landroid/content/Context;
    nop

    .line 160
    invoke-static {v3}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v4

    .line 161
    .local v4, "requestContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-eqz v4, :cond_33

    .line 162
    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkPackageName()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 165
    :cond_33
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_37
    :try_start_37
    invoke-direct {p0, p1, p2}, Landroid/adservices/adid/AdIdManager;->getService(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/adid/IAdIdService;

    move-result-object v5

    .line 170
    .local v5, "service":Landroid/adservices/adid/IAdIdService;
    if-nez v5, :cond_43

    .line 171
    const-string v6, "Unable to find AdId service"

    invoke-static {v6}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    :cond_43
    new-instance v6, Landroid/adservices/adid/GetAdIdParam$Builder;

    invoke-direct {v6}, Landroid/adservices/adid/GetAdIdParam$Builder;-><init>()V

    .line 177
    invoke-virtual {v6, v1}, Landroid/adservices/adid/GetAdIdParam$Builder;->setAppPackageName(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdParam$Builder;

    move-result-object v6

    .line 178
    invoke-virtual {v6, v2}, Landroid/adservices/adid/GetAdIdParam$Builder;->setSdkPackageName(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdParam$Builder;

    move-result-object v6

    .line 179
    invoke-virtual {v6}, Landroid/adservices/adid/GetAdIdParam$Builder;->build()Landroid/adservices/adid/GetAdIdParam;

    move-result-object v6

    new-instance v7, Landroid/adservices/adid/AdIdManager$1;

    invoke-direct {v7, p0, p1, p2}, Landroid/adservices/adid/AdIdManager$1;-><init>(Landroid/adservices/adid/AdIdManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 175
    invoke-interface {v5, v6, v0, v7}, Landroid/adservices/adid/IAdIdService;->getAdId(Landroid/adservices/adid/GetAdIdParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adid/IGetAdIdCallback;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5c} :catch_5d

    .line 210
    .end local v5    # "service":Landroid/adservices/adid/IAdIdService;
    goto :goto_66

    .line 207
    :catch_5d
    move-exception v5

    .line 208
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 209
    invoke-interface {p2, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 211
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_66
    return-void
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    iput-object p1, p0, Landroid/adservices/adid/AdIdManager;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/adservices/adid/AdIdManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/adservices/adid/AdIdManager$$ExternalSyntheticLambda1;-><init>()V

    .line 107
    const-string v1, "android.adservices.ADID_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adid/AdIdManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 111
    return-object p0
.end method

.method public blacklist unbindFromService()V
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/adservices/adid/AdIdManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->unbindFromService()V

    .line 245
    return-void
.end method
