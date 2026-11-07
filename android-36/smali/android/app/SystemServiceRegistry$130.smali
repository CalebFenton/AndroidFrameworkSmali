.class Landroid/app/SystemServiceRegistry$130;
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
        "Landroid/hardware/devicestate/DeviceStateManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1596
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/devicestate/DeviceStateManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1599
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceStateManager;-><init>()V

    return-object v0
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

    .line 1596
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$130;->createService(Landroid/app/ContextImpl;)Landroid/hardware/devicestate/DeviceStateManager;

    move-result-object p1

    return-object p1
.end method
