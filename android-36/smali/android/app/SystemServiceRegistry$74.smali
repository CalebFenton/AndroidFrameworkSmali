.class Landroid/app/SystemServiceRegistry$74;
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
        "Landroid/hardware/biometrics/BiometricManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1015
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/biometrics/BiometricManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1019
    nop

    .line 1020
    const-string v0, "auth"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1021
    .local v0, "binder":Landroid/os/IBinder;
    nop

    .line 1022
    invoke-static {v0}, Landroid/hardware/biometrics/IAuthService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;

    move-result-object v1

    .line 1023
    .local v1, "service":Landroid/hardware/biometrics/IAuthService;
    new-instance v2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/hardware/biometrics/BiometricManager;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;)V

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

    .line 1015
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$74;->createService(Landroid/app/ContextImpl;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    return-object p1
.end method
