.class final Landroid/app/SystemServiceRegistry$53;
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
        "Landroid/content/RestrictionsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 571
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/content/RestrictionsManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 574
    const-string/jumbo v2, "restrictions"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 575
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRestrictionsManager;

    #@a
    move-result-object v1

    #@b
    .line 576
    .local v1, "service":Landroid/content/IRestrictionsManager;
    new-instance v2, Landroid/content/RestrictionsManager;

    #@d
    invoke-direct {v2, p1, v1}, Landroid/content/RestrictionsManager;-><init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V

    #@10
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 573
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$53;->createService(Landroid/app/ContextImpl;)Landroid/content/RestrictionsManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
