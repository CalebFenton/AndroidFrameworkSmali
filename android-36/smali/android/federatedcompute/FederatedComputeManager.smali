.class public final Landroid/federatedcompute/FederatedComputeManager;
.super Ljava/lang/Object;
.source "FederatedComputeManager.java"


# static fields
.field private static final blacklist ALT_FEDERATED_COMPUTATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.google.android.federatedcompute"

.field private static final blacklist FEDERATED_COMPUTATION_SERVICE_INTENT_FILTER_NAME:Ljava/lang/String; = "android.federatedcompute.FederatedComputeService"

.field private static final blacklist FEDERATED_COMPUTATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.federatedcompute.services"

.field public static final blacklist FEDERATED_COMPUTE_SERVICE:Ljava/lang/String; = "federated_compute_service"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "Landroid/federatedcompute/aidl/IFederatedComputeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/federatedcompute/FederatedComputeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/federatedcompute/FederatedComputeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/federatedcompute/FederatedComputeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/federatedcompute/FederatedComputeManager;->mContext:Landroid/content/Context;

    .line 65
    nop

    .line 69
    const-string v0, "com.android.federatedcompute.services"

    const-string v1, "com.google.android.federatedcompute"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/federatedcompute/FederatedComputeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/federatedcompute/FederatedComputeManager$$ExternalSyntheticLambda1;-><init>()V

    .line 66
    const-string v2, "android.federatedcompute.FederatedComputeService"

    invoke-static {p1, v2, v0, v1}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/federatedcompute/FederatedComputeManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 73
    return-void
.end method

.method static synthetic blacklist lambda$cancel$1(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 160
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$schedule$0(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 117
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "ownerComponent"    # Landroid/content/ComponentName;
    .param p2, "populationName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :try_start_3
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    invoke-virtual {v0, p3}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/federatedcompute/aidl/IFederatedComputeService;

    .line 135
    .local v0, "service":Landroid/federatedcompute/aidl/IFederatedComputeService;
    new-instance v1, Landroid/federatedcompute/FederatedComputeManager$2;

    invoke-direct {v1, p0, p3, p4}, Landroid/federatedcompute/FederatedComputeManager$2;-><init>(Landroid/federatedcompute/FederatedComputeManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 157
    .local v1, "federatedComputeCallback":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    invoke-interface {v0, p1, p2, v1}, Landroid/federatedcompute/aidl/IFederatedComputeService;->cancel(Landroid/content/ComponentName;Ljava/lang/String;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 162
    .end local v0    # "service":Landroid/federatedcompute/aidl/IFederatedComputeService;
    .end local v1    # "federatedComputeCallback":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    goto :goto_2b

    .line 158
    :catch_14
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/federatedcompute/FederatedComputeManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception when cancel federated job %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    new-instance v1, Landroid/federatedcompute/FederatedComputeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p4, v0}, Landroid/federatedcompute/FederatedComputeManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {p0}, Landroid/federatedcompute/FederatedComputeManager;->unbindFromService()V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public blacklist schedule(Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "request"    # Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :try_start_3
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    invoke-virtual {v0, p2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/federatedcompute/aidl/IFederatedComputeService;

    .line 87
    .local v0, "service":Landroid/federatedcompute/aidl/IFederatedComputeService;
    new-instance v1, Landroid/federatedcompute/FederatedComputeManager$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/federatedcompute/FederatedComputeManager$1;-><init>(Landroid/federatedcompute/FederatedComputeManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 109
    .local v1, "federatedComputeCallback":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    iget-object v2, p0, Landroid/federatedcompute/FederatedComputeManager;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "appPackageName":Ljava/lang/String;
    nop

    .line 113
    invoke-virtual {p1}, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->getTrainingOptions()Landroid/federatedcompute/common/TrainingOptions;

    move-result-object v3

    .line 111
    invoke-interface {v0, v2, v3, v1}, Landroid/federatedcompute/aidl/IFederatedComputeService;->schedule(Ljava/lang/String;Landroid/federatedcompute/common/TrainingOptions;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    .line 119
    .end local v0    # "service":Landroid/federatedcompute/aidl/IFederatedComputeService;
    .end local v1    # "federatedComputeCallback":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    .end local v2    # "appPackageName":Ljava/lang/String;
    goto :goto_3a

    .line 115
    :catch_27
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/federatedcompute/FederatedComputeManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception when schedule federated job"

    invoke-static {v1, v0, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 117
    new-instance v1, Landroid/federatedcompute/FederatedComputeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, v0}, Landroid/federatedcompute/FederatedComputeManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {p0}, Landroid/federatedcompute/FederatedComputeManager;->unbindFromService()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public blacklist unbindFromService()V
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    invoke-virtual {v0}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->unbindFromService()V

    .line 167
    return-void
.end method
