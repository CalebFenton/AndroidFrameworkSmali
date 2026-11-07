.class Landroid/app/SystemServiceRegistry$64;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/content/RestrictionsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 888
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/content/RestrictionsManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 891
    const-string/jumbo v0, "restrictions"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 892
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRestrictionsManager;

    move-result-object v1

    .line 893
    .local v1, "service":Landroid/content/IRestrictionsManager;
    new-instance v2, Landroid/content/RestrictionsManager;

    invoke-direct {v2, p1, v1}, Landroid/content/RestrictionsManager;-><init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 888
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$64;->createService(Landroid/app/ContextImpl;)Landroid/content/RestrictionsManager;

    move-result-object p1

    return-object p1
.end method
