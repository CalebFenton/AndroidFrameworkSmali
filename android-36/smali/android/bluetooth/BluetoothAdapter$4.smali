.class Landroid/bluetooth/BluetoothAdapter$4;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2811
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/bluetooth/IBluetooth;)Ljava/lang/Integer;
    .registers 4
    .param p1, "serviceQuery"    # Landroid/bluetooth/IBluetooth;

    .line 2817
    :try_start_0
    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2818
    :catch_9
    move-exception v0

    .line 2819
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

    .line 2811
    check-cast p1, Landroid/bluetooth/IBluetooth;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$4;->apply(Landroid/bluetooth/IBluetooth;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldBypassCache(Landroid/bluetooth/IBluetooth;)Z
    .registers 3
    .param p1, "serviceQuery"    # Landroid/bluetooth/IBluetooth;

    .line 2825
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

    .line 2811
    check-cast p1, Landroid/bluetooth/IBluetooth;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$4;->shouldBypassCache(Landroid/bluetooth/IBluetooth;)Z

    move-result p1

    return p1
.end method
