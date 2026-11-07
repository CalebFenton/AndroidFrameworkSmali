.class Landroid/app/SystemServiceRegistry$142;
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
        "Landroid/security/advancedprotection/AdvancedProtectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1753
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/advancedprotection/AdvancedProtectionManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1757
    const-string v0, "advanced_protection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1759
    .local v0, "iBinder":Landroid/os/IBinder;
    nop

    .line 1760
    invoke-static {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionService;

    move-result-object v1

    .line 1761
    .local v1, "service":Landroid/security/advancedprotection/IAdvancedProtectionService;
    if-nez v1, :cond_f

    .line 1762
    const/4 v2, 0x0

    return-object v2

    .line 1764
    :cond_f
    new-instance v2, Landroid/security/advancedprotection/AdvancedProtectionManager;

    invoke-direct {v2, v1}, Landroid/security/advancedprotection/AdvancedProtectionManager;-><init>(Landroid/security/advancedprotection/IAdvancedProtectionService;)V

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

    .line 1753
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$142;->createService(Landroid/app/ContextImpl;)Landroid/security/advancedprotection/AdvancedProtectionManager;

    move-result-object p1

    return-object p1
.end method
