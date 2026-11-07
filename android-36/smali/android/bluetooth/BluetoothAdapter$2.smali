.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1431
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 4
    .param p1, "query"    # Ljava/lang/Void;

    .line 1438
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->getBluetoothServiceManager()Landroid/os/BluetoothServiceManager;

    move-result-object v0

    .line 1439
    invoke-virtual {v0}, Landroid/os/BluetoothServiceManager;->getBluetoothManagerServiceRegisterer()Landroid/os/BluetoothServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1437
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 1441
    .local v0, "service":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 1442
    .end local v0    # "service":Landroid/bluetooth/IBluetoothManager;
    :catch_19
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1431
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$2;->apply(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1431
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$2;->shouldBypassCache(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldBypassCache(Ljava/lang/Void;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/Void;

    .line 1450
    const/4 v0, 0x0

    return v0
.end method
