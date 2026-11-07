.class Landroid/bluetooth/BluetoothAdapter$5;
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
        "Landroid/util/Pair<",
        "Landroid/bluetooth/IBluetooth;",
        "Landroid/util/Pair<",
        "Landroid/content/AttributionSource;",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2881
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
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2887
    .local p1, "pairQuery":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/IBluetooth;Landroid/util/Pair<Landroid/content/AttributionSource;Ljava/lang/Integer;>;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetooth;

    .line 2888
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/AttributionSource;

    .line 2889
    .local v1, "source":Landroid/content/AttributionSource;
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 2891
    .local v2, "profile":Ljava/lang/Integer;
    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3, v1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(ILandroid/content/AttributionSource;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v3

    .line 2892
    :catch_21
    move-exception v3

    .line 2893
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

    .line 2881
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$5;->apply(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldBypassCache(Landroid/util/Pair;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 2901
    .local p1, "pairQuery":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/IBluetooth;Landroid/util/Pair<Landroid/content/AttributionSource;Ljava/lang/Integer;>;>;"
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

    .line 2881
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$5;->shouldBypassCache(Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
