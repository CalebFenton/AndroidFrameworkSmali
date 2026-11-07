.class Landroid/app/SystemServiceRegistry$40;
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
        "Landroid/os/SecurityStateManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 676
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/SecurityStateManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 680
    const-string/jumbo v0, "security_state"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 682
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/ISecurityStateManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecurityStateManager;

    move-result-object v1

    .line 683
    .local v1, "service":Landroid/os/ISecurityStateManager;
    new-instance v2, Landroid/os/SecurityStateManager;

    invoke-direct {v2, v1}, Landroid/os/SecurityStateManager;-><init>(Landroid/os/ISecurityStateManager;)V

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

    .line 676
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$40;->createService(Landroid/app/ContextImpl;)Landroid/os/SecurityStateManager;

    move-result-object p1

    return-object p1
.end method
