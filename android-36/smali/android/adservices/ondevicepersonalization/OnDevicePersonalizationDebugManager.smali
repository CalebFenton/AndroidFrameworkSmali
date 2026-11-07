.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationDebugManager;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationDebugManager.java"


# static fields
.field private static final blacklist ALT_ODP_MANAGING_SERVICE_PACKAGE_SUFFIX:Ljava/lang/String; = "com.google.android.ondevicepersonalization.services"

.field private static final blacklist INTENT_FILTER_ACTION:Ljava/lang/String; = "android.OnDevicePersonalizationDebugService"

.field private static final blacklist ODP_MANAGING_SERVICE_PACKAGE_SUFFIX:Ljava/lang/String; = "com.android.ondevicepersonalization.services"


# instance fields
.field private final blacklist mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 50
    const-string v0, "com.android.ondevicepersonalization.services"

    const-string v1, "com.google.android.ondevicepersonalization.services"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationDebugManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationDebugManager$$ExternalSyntheticLambda0;-><init>()V

    .line 47
    const-string v2, "android.OnDevicePersonalizationDebugService"

    invoke-static {p1, v2, v0, v1}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationDebugManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist isEnabled()Ljava/lang/Boolean;
    .registers 4

    .line 59
    :try_start_0
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationDebugManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;

    .line 61
    .local v0, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;
    invoke-interface {v0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;->isEnabled()Z

    move-result v1

    .line 62
    .local v1, "result":Z
    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationDebugManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    invoke-virtual {v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->unbindFromService()V

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v2

    .line 64
    .end local v0    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;
    .end local v1    # "result":Z
    :catch_20
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
