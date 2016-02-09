.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceManager:Landroid/os/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 72
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 70
    :goto_0
    return-void

    #@9
    .line 73
    :catch_0
    move-exception v0

    #@a
    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ServiceManager"

    #@d
    const-string/jumbo v2, "error in addService"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z

    #@0
    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 87
    :goto_0
    return-void

    #@8
    .line 90
    :catch_0
    move-exception v0

    #@9
    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ServiceManager"

    #@c
    const-string/jumbo v2, "error in addService"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    goto :goto_0
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 101
    :try_start_0
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/os/IBinder;

    #@9
    .line 102
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    #@b
    .line 103
    return-object v1

    #@c
    .line 105
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 107
    .end local v1    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@16
    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ServiceManager"

    #@19
    const-string/jumbo v3, "error in checkService"

    #@1c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 109
    return-object v4
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 35
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    #@6
    return-object v0

    #@7
    .line 39
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    #@11
    .line 40
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    #@13
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 51
    :try_start_0
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/os/IBinder;

    #@9
    .line 52
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    #@b
    .line 53
    return-object v1

    #@c
    .line 55
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 57
    .end local v1    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@16
    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ServiceManager"

    #@19
    const-string/jumbo v3, "error in getService"

    #@1c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 60
    return-object v4
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "setServiceCache may only be called once"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 137
    :cond_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    #@13
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@16
    .line 133
    return-void
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/os/IServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 119
    :catch_0
    move-exception v0

    #@a
    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ServiceManager"

    #@d
    const-string/jumbo v2, "error in listServices"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 121
    const/4 v1, 0x0

    #@14
    return-object v1
.end method
