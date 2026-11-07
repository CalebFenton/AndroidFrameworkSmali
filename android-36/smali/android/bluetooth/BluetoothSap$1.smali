.class Landroid/bluetooth/BluetoothSap$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "BluetoothSap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/util/Pair<",
        "Landroid/os/IBinder;",
        "Landroid/util/Pair<",
        "Landroid/content/AttributionSource;",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;>;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 375
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 381
    .local p1, "pairQuery":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/util/Pair<Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/bluetooth/IBluetoothSap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 382
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/AttributionSource;

    .line 383
    .local v1, "source":Landroid/content/AttributionSource;
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 385
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") uncached"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-static {v3}, Landroid/bluetooth/BluetoothSap;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 391
    :try_start_38
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/IBluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_41

    return-object v3

    .line 392
    :catch_41
    move-exception v3

    .line 393
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
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

    .line 375
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap$1;->apply(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
