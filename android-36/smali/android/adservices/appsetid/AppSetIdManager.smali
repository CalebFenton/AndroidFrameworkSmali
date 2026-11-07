.class public Landroid/adservices/appsetid/AppSetIdManager;
.super Ljava/lang/Object;
.source "AppSetIdManager.java"


# static fields
.field public static final blacklist APPSETID_SERVICE:Ljava/lang/String; = "appsetid_service"

.field static final blacklist EMPTY_SDK:Ljava/lang/String; = ""


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/appsetid/IAppSetIdService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Landroid/adservices/appsetid/AppSetIdManager;->initialize(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;

    .line 83
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 70
    const-class v0, Landroid/adservices/appsetid/AppSetIdManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/appsetid/AppSetIdManager;

    goto :goto_14

    .line 71
    :cond_f
    new-instance v0, Landroid/adservices/appsetid/AppSetIdManager;

    invoke-direct {v0, p0}, Landroid/adservices/appsetid/AppSetIdManager;-><init>(Landroid/content/Context;)V

    .line 69
    :goto_14
    return-object v0
.end method

.method private blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetIdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist getService(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/appsetid/IAppSetIdService;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/appsetid/AppSetId;",
            "Ljava/lang/Exception;",
            ">;)",
            "Landroid/adservices/appsetid/IAppSetIdService;"
        }
    .end annotation

    .line 108
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/appsetid/AppSetId;Ljava/lang/Exception;>;"
    const/4 v0, 0x0

    .line 110
    .local v0, "service":Landroid/adservices/appsetid/IAppSetIdService;
    :try_start_1
    iget-object v1, p0, Landroid/adservices/appsetid/AppSetIdManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v1}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/appsetid/IAppSetIdService;

    move-object v0, v1

    .line 113
    if-eqz v0, :cond_d

    .line 119
    goto :goto_23

    .line 114
    :cond_d
    new-instance v1, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v2, "Service is not available."

    invoke-direct {v1, v2}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "service":Landroid/adservices/appsetid/IAppSetIdService;
    .end local p0    # "this":Landroid/adservices/appsetid/AppSetIdManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/appsetid/AppSetId;Ljava/lang/Exception;>;"
    throw v1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_15} :catch_15

    .line 116
    .restart local v0    # "service":Landroid/adservices/appsetid/IAppSetIdService;
    .restart local p0    # "this":Landroid/adservices/appsetid/AppSetIdManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/appsetid/AppSetId;Ljava/lang/Exception;>;"
    :catch_15
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Failed binding to AppSetId service"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 118
    new-instance v2, Landroid/adservices/appsetid/AppSetIdManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroid/adservices/appsetid/AppSetIdManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_23
    return-object v0
.end method

.method static synthetic blacklist lambda$getService$0(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 118
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public whitelist getAppSetId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/appsetid/AppSetId;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/appsetid/AppSetId;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v0

    .line 146
    .local v0, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    const-string v1, ""

    .line 147
    .local v1, "appPackageName":Ljava/lang/String;
    const-string v2, ""

    .line 149
    .local v2, "sdkPackageName":Ljava/lang/String;
    invoke-direct {p0}, Landroid/adservices/appsetid/AppSetIdManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 150
    .local v3, "getAppSetIdRequestContext":Landroid/content/Context;
    nop

    .line 151
    invoke-static {v3}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v4

    .line 152
    .local v4, "requestContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-eqz v4, :cond_2f

    .line 153
    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkPackageName()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    .line 156
    :cond_2f
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 159
    :goto_33
    :try_start_33
    invoke-direct {p0, p1, p2}, Landroid/adservices/appsetid/AppSetIdManager;->getService(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/appsetid/IAppSetIdService;

    move-result-object v5

    .line 160
    .local v5, "service":Landroid/adservices/appsetid/IAppSetIdService;
    if-nez v5, :cond_3f

    .line 161
    const-string v6, "Unable to find AppSetId service"

    invoke-static {v6}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_3f
    new-instance v6, Landroid/adservices/appsetid/GetAppSetIdParam$Builder;

    invoke-direct {v6}, Landroid/adservices/appsetid/GetAppSetIdParam$Builder;-><init>()V

    .line 167
    invoke-virtual {v6, v1}, Landroid/adservices/appsetid/GetAppSetIdParam$Builder;->setAppPackageName(Ljava/lang/String;)Landroid/adservices/appsetid/GetAppSetIdParam$Builder;

    move-result-object v6

    .line 168
    invoke-virtual {v6, v2}, Landroid/adservices/appsetid/GetAppSetIdParam$Builder;->setSdkPackageName(Ljava/lang/String;)Landroid/adservices/appsetid/GetAppSetIdParam$Builder;

    move-result-object v6

    .line 169
    invoke-virtual {v6}, Landroid/adservices/appsetid/GetAppSetIdParam$Builder;->build()Landroid/adservices/appsetid/GetAppSetIdParam;

    move-result-object v6

    new-instance v7, Landroid/adservices/appsetid/AppSetIdManager$1;

    invoke-direct {v7, p0, p1, p2}, Landroid/adservices/appsetid/AppSetIdManager$1;-><init>(Landroid/adservices/appsetid/AppSetIdManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 165
    invoke-interface {v5, v6, v0, v7}, Landroid/adservices/appsetid/IAppSetIdService;->getAppSetId(Landroid/adservices/appsetid/GetAppSetIdParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/appsetid/IGetAppSetIdCallback;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_58} :catch_59

    .line 200
    .end local v5    # "service":Landroid/adservices/appsetid/IAppSetIdService;
    goto :goto_62

    .line 197
    :catch_59
    move-exception v5

    .line 198
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteException"

    invoke-static {v6, v5}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-interface {p2, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 201
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    iput-object p1, p0, Landroid/adservices/appsetid/AppSetIdManager;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/adservices/appsetid/AppSetIdManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/adservices/appsetid/AppSetIdManager$$ExternalSyntheticLambda1;-><init>()V

    .line 98
    const-string v1, "android.adservices.APPSETID_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/appsetid/AppSetIdManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 102
    return-object p0
.end method

.method public blacklist unbindFromService()V
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetIdManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->unbindFromService()V

    .line 212
    return-void
.end method
