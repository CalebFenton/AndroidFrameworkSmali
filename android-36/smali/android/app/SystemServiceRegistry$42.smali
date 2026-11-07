.class Landroid/app/SystemServiceRegistry$42;
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
        "Landroid/hardware/SensorPrivacyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 695
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/SensorPrivacyManager;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 699
    const-string/jumbo v0, "sensor_privacy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 701
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 702
    invoke-static {v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;

    move-result-object v1

    .line 701
    invoke-static {p1, v1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v1

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

    .line 695
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$42;->createService(Landroid/app/ContextImpl;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    return-object p1
.end method
