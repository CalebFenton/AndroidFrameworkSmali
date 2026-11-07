.class Landroid/bluetooth/BluetoothAdapter$8;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic blacklist val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4210
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$serviceUuids:[Ljava/util/UUID;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 10
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 4213
    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 4215
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LE Scan has already started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    return-void

    .line 4218
    :cond_d
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 4219
    .local v0, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v0, :cond_14

    .line 4220
    return-void

    .line 4222
    :cond_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$serviceUuids:[Ljava/util/UUID;

    if-eqz v1, :cond_46

    .line 4223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4224
    .local v1, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$serviceUuids:[Ljava/util/UUID;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 4225
    .local v5, "uuid":Ljava/util/UUID;
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4224
    .end local v5    # "uuid":Ljava/util/UUID;
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 4227
    :cond_30
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    .line 4228
    .local v2, "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v2, :cond_3c

    .line 4229
    invoke-interface {v2, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 4231
    :cond_3c
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuids does not match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    return-void

    .line 4236
    .end local v1    # "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v2    # "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_46
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$8;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 4237
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    .line 4236
    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 4238
    return-void
.end method
