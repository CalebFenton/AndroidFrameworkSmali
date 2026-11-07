.class public Landroid/os/ProfilingServiceManager;
.super Ljava/lang/Object;
.source "ProfilingServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProfilingServiceManager$ServiceRegisterer;,
        Landroid/os/ProfilingServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getProfilingServiceRegisterer()Landroid/os/ProfilingServiceManager$ServiceRegisterer;
    .registers 3

    .line 95
    new-instance v0, Landroid/os/ProfilingServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "profiling_service"

    invoke-direct {v0, v1}, Landroid/os/ProfilingServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
