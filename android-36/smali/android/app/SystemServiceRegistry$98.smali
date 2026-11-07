.class Landroid/app/SystemServiceRegistry$98;
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
        "Landroid/credentials/CredentialManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1267
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/credentials/CredentialManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1271
    const-string v0, "credential"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1272
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/credentials/ICredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/ICredentialManager;

    move-result-object v1

    .line 1273
    .local v1, "service":Landroid/credentials/ICredentialManager;
    if-eqz v1, :cond_16

    .line 1274
    new-instance v2, Landroid/credentials/CredentialManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/credentials/CredentialManager;-><init>(Landroid/content/Context;Landroid/credentials/ICredentialManager;)V

    return-object v2

    .line 1276
    :cond_16
    const/4 v2, 0x0

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

    .line 1267
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$98;->createService(Landroid/app/ContextImpl;)Landroid/credentials/CredentialManager;

    move-result-object p1

    return-object p1
.end method
