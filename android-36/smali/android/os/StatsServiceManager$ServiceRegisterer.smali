.class public final Landroid/os/StatsServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "StatsServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/os/StatsServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private blacklist tryGet()Landroid/os/IBinder;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/os/StatsServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist get()Landroid/os/IBinder;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/os/StatsServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOrThrow()Landroid/os/IBinder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/StatsServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/os/StatsServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 71
    :catch_7
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Landroid/os/StatsServiceManager$ServiceNotFoundException;

    iget-object v2, p0, Landroid/os/StatsServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatsServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
