.class Landroid/net/nsd/NsdManager$OffloadEngineProxy;
.super Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Stub;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffloadEngineProxy"
.end annotation


# instance fields
.field private final blacklist mEngine:Landroid/net/nsd/OffloadEngine;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$96pkk9KY4ImuEFKGmF0SQNVRVDk(Landroid/net/nsd/NsdManager$OffloadEngineProxy;Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->lambda$onOffloadServiceRemoved$1(Landroid/net/nsd/OffloadServiceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fapxzshW-8-vP46mKLPnogyVZvo(Landroid/net/nsd/NsdManager$OffloadEngineProxy;Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->lambda$onOffloadServiceUpdated$0(Landroid/net/nsd/OffloadServiceInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEngine(Landroid/net/nsd/NsdManager$OffloadEngineProxy;)Landroid/net/nsd/OffloadEngine;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mEngine:Landroid/net/nsd/OffloadEngine;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/nsd/OffloadEngine;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "appCb"    # Landroid/net/nsd/OffloadEngine;

    .line 412
    invoke-direct {p0}, Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Stub;-><init>()V

    .line 413
    iput-object p1, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 414
    iput-object p2, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mEngine:Landroid/net/nsd/OffloadEngine;

    .line 415
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/nsd/OffloadEngine;Landroid/net/nsd/NsdManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/nsd/OffloadEngine;)V

    return-void
.end method

.method private synthetic blacklist lambda$onOffloadServiceRemoved$1(Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/nsd/OffloadServiceInfo;

    .line 424
    iget-object v0, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mEngine:Landroid/net/nsd/OffloadEngine;

    invoke-interface {v0, p1}, Landroid/net/nsd/OffloadEngine;->onOffloadServiceRemoved(Landroid/net/nsd/OffloadServiceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onOffloadServiceUpdated$0(Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/nsd/OffloadServiceInfo;

    .line 419
    iget-object v0, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mEngine:Landroid/net/nsd/OffloadEngine;

    invoke-interface {v0, p1}, Landroid/net/nsd/OffloadEngine;->onOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist onOffloadServiceRemoved(Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/net/nsd/OffloadServiceInfo;

    .line 424
    iget-object v0, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/nsd/NsdManager$OffloadEngineProxy;Landroid/net/nsd/OffloadServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public blacklist onOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/net/nsd/OffloadServiceInfo;

    .line 419
    iget-object v0, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/nsd/NsdManager$OffloadEngineProxy;Landroid/net/nsd/OffloadServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method
