.class Landroid/app/SystemServiceRegistry$105;
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
        "Landroid/app/contextualsearch/ContextualSearchManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1361
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/contextualsearch/ContextualSearchManager;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1365
    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1366
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_f

    :cond_a
    new-instance v1, Landroid/app/contextualsearch/ContextualSearchManager;

    invoke-direct {v1}, Landroid/app/contextualsearch/ContextualSearchManager;-><init>()V

    :goto_f
    return-object v1
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

    .line 1361
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$105;->createService(Landroid/app/ContextImpl;)Landroid/app/contextualsearch/ContextualSearchManager;

    move-result-object p1

    return-object p1
.end method
