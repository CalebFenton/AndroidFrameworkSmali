.class final Landroid/app/SystemServiceRegistry$28;
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
        "Landroid/os/PowerManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 367
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/PowerManager;
    .locals 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 370
    const-string/jumbo v2, "power"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 371
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    #@a
    move-result-object v1

    #@b
    .line 372
    .local v1, "service":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    #@d
    .line 373
    const-string/jumbo v2, "SystemServiceRegistry"

    #@10
    const-string/jumbo v3, "Failed to get power manager service."

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 375
    :cond_0
    new-instance v2, Landroid/os/PowerManager;

    #@18
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1b
    move-result-object v3

    #@1c
    .line 376
    iget-object v4, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1e
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@21
    move-result-object v4

    #@22
    .line 375
    invoke-direct {v2, v3, v1, v4}, Landroid/os/PowerManager;-><init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V

    #@25
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 369
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$28;->createService(Landroid/app/ContextImpl;)Landroid/os/PowerManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
