.class public final Landroid/se/omapi/SeServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "SeServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/SeServiceManager;
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/os/IBinder;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOrThrow()Landroid/os/IBinder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/se/omapi/SeServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 97
    :catch_7
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Landroid/se/omapi/SeServiceManager$ServiceNotFoundException;

    iget-object v2, p0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/se/omapi/SeServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist register(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 71
    iget-object v0, p0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    return-void
.end method

.method public blacklist tryGet()Landroid/os/IBinder;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/se/omapi/SeServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
