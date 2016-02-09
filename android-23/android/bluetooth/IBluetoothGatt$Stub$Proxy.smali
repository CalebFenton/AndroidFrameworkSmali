.class Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 725
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 723
    return-void
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "charId"    # Landroid/os/ParcelUuid;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1366
    if-eqz p2, :cond_0

    #@13
    .line 1367
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1368
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1373
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1374
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1375
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x1d

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1359
    return-void

    #@33
    .line 1371
    :cond_0
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1378
    :catchall_0
    move-exception v2

    #@39
    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1378
    throw v2
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "descId"    # Landroid/os/ParcelUuid;
    .param p3, "permissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1390
    if-eqz p2, :cond_0

    #@13
    .line 1391
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1392
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1397
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1398
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x1e

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1383
    return-void

    #@30
    .line 1395
    :cond_0
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1401
    :catchall_0
    move-exception v2

    #@36
    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1401
    throw v2
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1343
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1344
    if-eqz p4, :cond_0

    #@19
    .line 1345
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1346
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 1351
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x1c

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1335
    return-void

    #@33
    .line 1349
    :cond_0
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1354
    :catchall_0
    move-exception v2

    #@39
    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1354
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1163
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x12

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1155
    return-void

    #@26
    .line 1166
    :catchall_0
    move-exception v2

    #@27
    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1166
    throw v2
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "advertisePreferred"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1317
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1318
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1319
    if-eqz p5, :cond_0

    #@1e
    .line 1320
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1321
    const/4 v4, 0x0

    #@23
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 1326
    :goto_0
    if-eqz p6, :cond_1

    #@28
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 1327
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x1b

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1309
    return-void

    #@3d
    .line 1324
    :cond_0
    const/4 v4, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1330
    :catchall_0
    move-exception v2

    #@43
    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1330
    throw v2

    #@4a
    :cond_1
    move v2, v3

    #@4b
    .line 1326
    goto :goto_1
.end method

.method public clearServices(I)V
    .locals 5
    .param p1, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1448
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1452
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x21

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1445
    return-void

    #@23
    .line 1455
    :catchall_0
    move-exception v2

    #@24
    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1455
    throw v2
.end method

.method public clientConnect(ILjava/lang/String;ZI)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 907
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 908
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 909
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x9

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 899
    return-void

    #@30
    .line 912
    :catchall_0
    move-exception v2

    #@31
    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 912
    throw v2
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 925
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xa

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 917
    return-void

    #@26
    .line 928
    :catchall_0
    move-exception v2

    #@27
    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 928
    throw v2
.end method

.method public configureMTU(ILjava/lang/String;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1207
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1211
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1212
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1213
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x15

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1214
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1204
    return-void

    #@29
    .line 1216
    :catchall_0
    move-exception v2

    #@2a
    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1216
    throw v2
.end method

.method public connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1229
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1230
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x16

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1221
    return-void

    #@29
    .line 1233
    :catchall_0
    move-exception v2

    #@2a
    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1233
    throw v2
.end method

.method public disconnectAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1521
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x24

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1515
    return-void

    #@20
    .line 1524
    :catchall_0
    move-exception v2

    #@21
    .line 1525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1524
    throw v2
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 956
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 957
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xc

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 949
    return-void

    #@26
    .line 960
    :catchall_0
    move-exception v2

    #@27
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 960
    throw v2
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 1179
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1180
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x13

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1171
    return-void

    #@2d
    .line 1183
    :catchall_0
    move-exception v2

    #@2e
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1183
    throw v2
.end method

.method public endServiceDeclaration(I)V
    .locals 5
    .param p1, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1413
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x1f

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1414
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1406
    return-void

    #@23
    .line 1416
    :catchall_0
    move-exception v2

    #@24
    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1416
    throw v2
.end method

.method public flushPendingBatchResults(IZ)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 802
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 803
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 795
    return-void

    #@29
    .line 806
    :catchall_0
    move-exception v2

    #@2a
    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 806
    throw v2
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 743
    iget-object v3, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 745
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 748
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 751
    return-object v2

    #@28
    .line 747
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 747
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 733
    const-string/jumbo v0, "android.bluetooth.IBluetoothGatt"

    #@3
    return-object v0
.end method

.method public numHwTrackFiltersAvailable()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1550
    iget-object v3, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x26

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1555
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1558
    return v2

    #@24
    .line 1554
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1554
    throw v3
.end method

.method public readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "authReq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 970
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 973
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 974
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 975
    if-eqz p5, :cond_0

    #@1c
    .line 976
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 977
    const/4 v2, 0x0

    #@21
    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 982
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 983
    if-eqz p7, :cond_1

    #@29
    .line 984
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 985
    const/4 v2, 0x0

    #@2e
    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 990
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 991
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@36
    const/16 v3, 0xd

    #@38
    const/4 v4, 0x0

    #@39
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3c
    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 965
    return-void

    #@46
    .line 980
    :cond_0
    const/4 v2, 0x0

    #@47
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 994
    :catchall_0
    move-exception v2

    #@4c
    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 994
    throw v2

    #@53
    .line 988
    :cond_1
    const/4 v2, 0x0

    #@54
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    goto :goto_1
.end method

.method public readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "authReq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1038
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1042
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1043
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1044
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1045
    if-eqz p5, :cond_0

    #@1c
    .line 1046
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1047
    const/4 v2, 0x0

    #@21
    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1052
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1053
    if-eqz p7, :cond_1

    #@29
    .line 1054
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1055
    const/4 v2, 0x0

    #@2e
    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 1060
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 1061
    if-eqz p9, :cond_2

    #@36
    .line 1062
    const/4 v2, 0x1

    #@37
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 1063
    const/4 v2, 0x0

    #@3b
    invoke-virtual {p9, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@3e
    .line 1068
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1069
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@43
    const/16 v3, 0xf

    #@45
    const/4 v4, 0x0

    #@46
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@49
    .line 1070
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 1035
    return-void

    #@53
    .line 1050
    :cond_0
    const/4 v2, 0x0

    #@54
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1072
    :catchall_0
    move-exception v2

    #@59
    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5c
    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5f
    .line 1072
    throw v2

    #@60
    .line 1058
    :cond_1
    const/4 v2, 0x0

    #@61
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    goto :goto_1

    #@65
    .line 1066
    :cond_2
    const/4 v2, 0x0

    #@66
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    goto :goto_2
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1196
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x14

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1188
    return-void

    #@26
    .line 1199
    :catchall_0
    move-exception v2

    #@27
    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1199
    throw v2
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 938
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 939
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 940
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 941
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xb

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 933
    return-void

    #@26
    .line 944
    :catchall_0
    move-exception v2

    #@27
    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 944
    throw v2
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 5
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 868
    if-eqz p1, :cond_1

    #@11
    .line 869
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 870
    const/4 v3, 0x0

    #@16
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 875
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothGattCallback;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 876
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x7

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 862
    return-void

    #@33
    .line 873
    :cond_1
    const/4 v3, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 879
    :catchall_0
    move-exception v2

    #@39
    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 879
    throw v2
.end method

.method public registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1129
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1130
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1131
    if-eqz p5, :cond_0

    #@1e
    .line 1132
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1133
    const/4 v4, 0x0

    #@23
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 1138
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1139
    if-eqz p7, :cond_1

    #@2b
    .line 1140
    const/4 v4, 0x1

    #@2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1141
    const/4 v4, 0x0

    #@30
    invoke-virtual {p7, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 1146
    :goto_1
    if-eqz p8, :cond_2

    #@35
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1147
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3a
    const/16 v3, 0x11

    #@3c
    const/4 v4, 0x0

    #@3d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@40
    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1121
    return-void

    #@4a
    .line 1136
    :cond_0
    const/4 v4, 0x0

    #@4b
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 1150
    :catchall_0
    move-exception v2

    #@50
    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 1150
    throw v2

    #@57
    .line 1144
    :cond_1
    const/4 v4, 0x0

    #@58
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    :cond_2
    move v2, v3

    #@5d
    .line 1146
    goto :goto_2
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 5
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1244
    if-eqz p1, :cond_1

    #@11
    .line 1245
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1246
    const/4 v3, 0x0

    #@16
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 1251
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 1252
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x17

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1238
    return-void

    #@34
    .line 1249
    :cond_1
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1255
    :catchall_0
    move-exception v2

    #@3a
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1255
    throw v2
.end method

.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1428
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1429
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1430
    if-eqz p4, :cond_0

    #@19
    .line 1431
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1432
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 1437
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x20

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1421
    return-void

    #@33
    .line 1435
    :cond_0
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1440
    :catchall_0
    move-exception v2

    #@39
    .line 1441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1440
    throw v2
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1489
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1490
    if-eqz p5, :cond_0

    #@1e
    .line 1491
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1492
    const/4 v4, 0x0

    #@23
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 1497
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1498
    if-eqz p7, :cond_1

    #@2b
    .line 1499
    const/4 v4, 0x1

    #@2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1500
    const/4 v4, 0x0

    #@30
    invoke-virtual {p7, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 1505
    :goto_1
    if-eqz p8, :cond_2

    #@35
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1506
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    #@3b
    .line 1507
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3d
    const/16 v3, 0x23

    #@3f
    const/4 v4, 0x0

    #@40
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@43
    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 1480
    return-void

    #@4d
    .line 1495
    :cond_0
    const/4 v4, 0x0

    #@4e
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1510
    :catchall_0
    move-exception v2

    #@53
    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 1510
    throw v2

    #@5a
    .line 1503
    :cond_1
    const/4 v4, 0x0

    #@5b
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    :cond_2
    move v2, v3

    #@60
    .line 1505
    goto :goto_2
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1468
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1469
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1470
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1471
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    #@20
    .line 1472
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x22

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1460
    return-void

    #@32
    .line 1475
    :catchall_0
    move-exception v2

    #@33
    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1475
    throw v2
.end method

.method public serverConnect(ILjava/lang/String;ZI)V
    .locals 5
    .param p1, "servertIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 1283
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1284
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1285
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x19

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1275
    return-void

    #@30
    .line 1288
    :catchall_0
    move-exception v2

    #@31
    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1288
    throw v2
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1301
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1a

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1293
    return-void

    #@26
    .line 1304
    :catchall_0
    move-exception v2

    #@27
    .line 1305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1304
    throw v2
.end method

.method public startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 818
    if-eqz p2, :cond_0

    #@13
    .line 819
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 820
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/le/AdvertiseData;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 825
    :goto_0
    if-eqz p3, :cond_1

    #@1d
    .line 826
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 827
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/bluetooth/le/AdvertiseData;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 832
    :goto_1
    if-eqz p4, :cond_2

    #@27
    .line 833
    const/4 v2, 0x1

    #@28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 834
    const/4 v2, 0x0

    #@2c
    invoke-virtual {p4, v0, v2}, Landroid/bluetooth/le/AdvertiseSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 839
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x5

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 811
    return-void

    #@40
    .line 823
    :cond_0
    const/4 v2, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 842
    :catchall_0
    move-exception v2

    #@46
    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 842
    throw v2

    #@4d
    .line 830
    :cond_1
    const/4 v2, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    goto :goto_1

    #@52
    .line 837
    :cond_2
    const/4 v2, 0x0

    #@53
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_2
.end method

.method public startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "scanStorages"    # Ljava/util/List;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 760
    if-eqz p2, :cond_0

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 761
    if-eqz p3, :cond_1

    #@1a
    .line 762
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 763
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p3, v0, v2}, Landroid/bluetooth/le/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 768
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@25
    .line 769
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@28
    .line 770
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 771
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v3, 0x2

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 753
    return-void

    #@3c
    :cond_0
    move v2, v3

    #@3d
    .line 760
    goto :goto_0

    #@3e
    .line 766
    :cond_1
    const/4 v2, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_1

    #@43
    .line 774
    :catchall_0
    move-exception v2

    #@44
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 774
    throw v2
.end method

.method public stopMultiAdvertising(I)V
    .locals 5
    .param p1, "appIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 854
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x6

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 847
    return-void

    #@22
    .line 857
    :catchall_0
    move-exception v2

    #@23
    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 857
    throw v2
.end method

.method public stopScan(IZ)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 786
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 787
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 779
    return-void

    #@29
    .line 790
    :catchall_0
    move-exception v2

    #@2a
    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 790
    throw v2
.end method

.method public unregAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1535
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x25

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1529
    return-void

    #@20
    .line 1538
    :catchall_0
    move-exception v2

    #@21
    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1538
    throw v2
.end method

.method public unregisterClient(I)V
    .locals 5
    .param p1, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 891
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x8

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 884
    return-void

    #@23
    .line 894
    :catchall_0
    move-exception v2

    #@24
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 894
    throw v2
.end method

.method public unregisterServer(I)V
    .locals 5
    .param p1, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1267
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x18

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1260
    return-void

    #@23
    .line 1270
    :catchall_0
    move-exception v2

    #@24
    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1270
    throw v2
.end method

.method public writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1007
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1008
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1009
    if-eqz p5, :cond_0

    #@1c
    .line 1010
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1011
    const/4 v2, 0x0

    #@21
    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1016
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1017
    if-eqz p7, :cond_1

    #@29
    .line 1018
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1019
    const/4 v2, 0x0

    #@2e
    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 1024
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 1025
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 1026
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    #@3a
    .line 1027
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3c
    const/16 v3, 0xe

    #@3e
    const/4 v4, 0x0

    #@3f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@42
    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 1032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 999
    return-void

    #@4c
    .line 1014
    :cond_0
    const/4 v2, 0x0

    #@4d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 1030
    :catchall_0
    move-exception v2

    #@52
    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 1032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 1030
    throw v2

    #@59
    .line 1022
    :cond_1
    const/4 v2, 0x0

    #@5a
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    goto :goto_1
.end method

.method public writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 6
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 1080
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 1082
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGatt"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1083
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1084
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1085
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1086
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1087
    if-eqz p5, :cond_0

    #@1c
    .line 1088
    const/4 v3, 0x1

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1089
    const/4 v3, 0x0

    #@21
    invoke-virtual {p5, v1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1094
    :goto_0
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1095
    if-eqz p7, :cond_1

    #@29
    .line 1096
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1097
    const/4 v3, 0x0

    #@2e
    invoke-virtual {p7, v1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 1102
    :goto_1
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 1103
    if-eqz p9, :cond_2

    #@36
    .line 1104
    const/4 v3, 0x1

    #@37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 1105
    const/4 v3, 0x0

    #@3b
    invoke-virtual {p9, v1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@3e
    .line 1110
    :goto_2
    move/from16 v0, p10

    #@40
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 1111
    move/from16 v0, p11

    #@45
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 1112
    move-object/from16 v0, p12

    #@4a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@4d
    .line 1113
    iget-object v3, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@4f
    const/16 v4, 0x10

    #@51
    const/4 v5, 0x0

    #@52
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@55
    .line 1114
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 1117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 1077
    return-void

    #@5f
    .line 1092
    :cond_0
    const/4 v3, 0x0

    #@60
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 1116
    :catchall_0
    move-exception v3

    #@65
    .line 1117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@68
    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@6b
    .line 1116
    throw v3

    #@6c
    .line 1100
    :cond_1
    const/4 v3, 0x0

    #@6d
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    goto :goto_1

    #@71
    .line 1108
    :cond_2
    const/4 v3, 0x0

    #@72
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@75
    goto :goto_2
.end method
