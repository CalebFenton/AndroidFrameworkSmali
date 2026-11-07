.class Landroid/bluetooth/BluetoothAdapter$3;
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
        "Landroid/bluetooth/IBluetooth;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2289
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/bluetooth/IBluetooth;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "serviceQuery"    # Landroid/bluetooth/IBluetooth;

    .line 2295
    :try_start_0
    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2296
    :catch_9
    move-exception v0

    .line 2297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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

    .line 2289
    check-cast p1, Landroid/bluetooth/IBluetooth;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$3;->apply(Landroid/bluetooth/IBluetooth;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldBypassCache(Landroid/bluetooth/IBluetooth;)Z
    .registers 3
    .param p1, "serviceQuery"    # Landroid/bluetooth/IBluetooth;

    .line 2303
    const/4 v0, 0x0

    return v0
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

    .line 2289
    check-cast p1, Landroid/bluetooth/IBluetooth;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$3;->shouldBypassCache(Landroid/bluetooth/IBluetooth;)Z

    move-result p1

    return p1
.end method
