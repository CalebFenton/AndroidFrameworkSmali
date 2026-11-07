.class Landroid/app/SystemServiceRegistry$139;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/security/keystore/KeyStoreManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1714
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/security/keystore/KeyStoreManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1718
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->keystoreGrantApi()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1721
    invoke-static {}, Landroid/security/keystore/KeyStoreManager;->getInstance()Landroid/security/keystore/KeyStoreManager;

    move-result-object v0

    return-object v0

    .line 1719
    :cond_b
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v1, "KeyStoreManager is not supported"

    invoke-direct {v0, v1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1714
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$139;->createService()Landroid/security/keystore/KeyStoreManager;

    move-result-object v0

    return-object v0
.end method
