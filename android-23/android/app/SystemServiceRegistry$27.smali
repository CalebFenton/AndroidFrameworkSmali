.class final Landroid/app/SystemServiceRegistry$27;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/net/nsd/NsdManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 358
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/nsd/NsdManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 361
    const-string/jumbo v2, "servicediscovery"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 362
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/nsd/INsdManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/nsd/INsdManager;

    #@a
    move-result-object v1

    #@b
    .line 363
    .local v1, "service":Landroid/net/nsd/INsdManager;
    new-instance v2, Landroid/net/nsd/NsdManager;

    #@d
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v2, v3, v1}, Landroid/net/nsd/NsdManager;-><init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V

    #@14
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 360
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$27;->createService(Landroid/app/ContextImpl;)Landroid/net/nsd/NsdManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
