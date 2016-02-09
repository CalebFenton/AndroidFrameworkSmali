.class Landroid/bluetooth/BluetoothAdapter$2;
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
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "val$serviceUuids"    # [Ljava/util/UUID;
    .param p3, "val$callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@0
    .prologue
    .line 2192
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    #@4
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@6
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 8
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    .line 2195
    const/4 v4, 0x1

    #@1
    if-eq p1, v4, :cond_0

    #@3
    .line 2197
    const-string/jumbo v4, "BluetoothAdapter"

    #@6
    const-string/jumbo v5, "LE Scan has already started"

    #@9
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 2198
    return-void

    #@d
    .line 2200
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    #@10
    move-result-object v0

    #@11
    .line 2201
    .local v0, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v0, :cond_1

    #@13
    .line 2202
    return-void

    #@14
    .line 2204
    :cond_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    #@16
    if-eqz v4, :cond_3

    #@18
    .line 2205
    new-instance v3, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 2206
    .local v3, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    #@1f
    const/4 v4, 0x0

    #@20
    array-length v6, v5

    #@21
    :goto_0
    if-ge v4, v6, :cond_2

    #@23
    aget-object v2, v5, v4

    #@25
    .line 2207
    .local v2, "uuid":Ljava/util/UUID;
    new-instance v7, Landroid/os/ParcelUuid;

    #@27
    invoke-direct {v7, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@2a
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 2206
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2209
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    #@33
    move-result-object v1

    #@34
    .line 2210
    .local v1, "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v1, :cond_4

    #@36
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_4

    #@3c
    .line 2215
    .end local v1    # "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    #@3e
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    #@45
    move-result v6

    #@46
    .line 2216
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    #@49
    move-result-object v7

    #@4a
    .line 2215
    invoke-interface {v4, v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    #@4d
    .line 2194
    return-void

    #@4e
    .line 2211
    .restart local v1    # "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v3    # "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_4
    const-string/jumbo v4, "BluetoothAdapter"

    #@51
    const-string/jumbo v5, "uuids does not match"

    #@54
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 2212
    return-void
.end method
