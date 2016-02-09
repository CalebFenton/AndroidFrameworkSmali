.class Landroid/net/wifi/IWifiManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager$Stub;
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
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 783
    iput-object p1, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 781
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1419
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x22

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1411
    return-void

    #@26
    .line 1422
    :catchall_0
    move-exception v2

    #@27
    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1422
    throw v2
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "lockType"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 1323
    if-eqz p4, :cond_0

    #@19
    .line 1324
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1325
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p4, v0, v3}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 1330
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x1d

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 1332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    const/4 v2, 0x1

    #@33
    .line 1335
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1338
    return v2

    #@3a
    .line 1328
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1334
    :catchall_0
    move-exception v3

    #@40
    .line 1335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1334
    throw v3

    #@47
    .line 1332
    :cond_1
    const/4 v2, 0x0

    #@48
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 902
    if-eqz p1, :cond_0

    #@10
    .line 903
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 904
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 909
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x6

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 914
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 917
    return v2

    #@2d
    .line 907
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 913
    :catchall_0
    move-exception v3

    #@33
    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 913
    throw v3
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1583
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x2b

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1576
    return-void

    #@23
    .line 1586
    :catchall_0
    move-exception v2

    #@24
    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1586
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1511
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@17
    .line 1512
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x27

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 1514
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 1515
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1522
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1525
    return-object v2

    #@37
    .line 1518
    :cond_0
    const/4 v2, 0x0

    #@38
    .local v2, "_result":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@39
    .line 1521
    .end local v2    # "_result":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v3

    #@3a
    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1521
    throw v3
.end method

.method public clearBlacklist()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1594
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1597
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2c

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1591
    return-void

    #@20
    .line 1600
    :catchall_0
    move-exception v2

    #@21
    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1600
    throw v2
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 5
    .param p1, "SSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1986
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1988
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x42

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1981
    return-void

    #@23
    .line 1991
    :catchall_0
    move-exception v2

    #@24
    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1991
    throw v2
.end method

.method public disableNetwork(I)Z
    .locals 6
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 962
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 964
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 969
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 972
    return v2

    #@2a
    .line 966
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 968
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 968
    throw v3
.end method

.method public disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1081
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xf

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1075
    return-void

    #@20
    .line 1084
    :catchall_0
    move-exception v2

    #@21
    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1084
    throw v2
.end method

.method public enableAggressiveHandover(I)V
    .locals 5
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1834
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1835
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x39

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1828
    return-void

    #@23
    .line 1838
    :catchall_0
    move-exception v2

    #@24
    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1838
    throw v2
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 6
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1931
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1932
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x3f

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    const/4 v2, 0x1

    #@27
    .line 1937
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1940
    return v2

    #@2e
    .line 1934
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "_result":Z
    goto :goto_0

    #@30
    .line 1936
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@31
    .line 1937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1936
    throw v3
.end method

.method public enableNetwork(IZ)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 940
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 945
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 946
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x8

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 951
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 954
    return v2

    #@31
    .line 948
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 950
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 950
    throw v3
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "remoteIPAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1647
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1651
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1652
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x2f

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1644
    return-void

    #@2a
    .line 1655
    :catchall_0
    move-exception v2

    #@2b
    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1655
    throw v2
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1667
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1668
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x30

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1660
    return-void

    #@2a
    .line 1671
    :catchall_0
    move-exception v2

    #@2b
    .line 1672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1671
    throw v2
.end method

.method public enableVerboseLogging(I)V
    .locals 5
    .param p1, "verbose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1803
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x37

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1796
    return-void

    #@23
    .line 1806
    :catchall_0
    move-exception v2

    #@24
    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1806
    throw v2
.end method

.method public factoryReset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2002
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x43

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 2006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1996
    return-void

    #@20
    .line 2005
    :catchall_0
    move-exception v2

    #@21
    .line 2006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2005
    throw v2
.end method

.method public getAggressiveHandover()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1846
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1850
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x3a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1852
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1855
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1858
    return v2

    #@24
    .line 1854
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1854
    throw v3
.end method

.method public getAllowScansWithTraffic()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1878
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1881
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1882
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x3c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1887
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1890
    return v2

    #@24
    .line 1886
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1886
    throw v3
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
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
    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1737
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x33

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1739
    sget-object v3, Landroid/net/wifi/BatchedScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 1742
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1745
    return-object v2

    #@29
    .line 1741
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 1742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1741
    throw v3
.end method

.method public getChannelList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
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
    .line 993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 994
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 997
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 998
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1000
    sget-object v3, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 1003
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1006
    return-object v2

    #@26
    .line 1002
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :catchall_0
    move-exception v3

    #@27
    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1002
    throw v3
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1634
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2e

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1639
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1642
    return-object v2

    #@24
    .line 1638
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1638
    throw v3
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
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
    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 839
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 841
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 844
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 847
    return-object v2

    #@25
    .line 843
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 843
    throw v3
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1124
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x12

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1127
    sget-object v3, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1134
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1137
    return-object v2

    #@2e
    .line 1130
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/wifi/WifiInfo;
    goto :goto_0

    #@30
    .line 1133
    .end local v2    # "_result":Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1133
    throw v3
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1962
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1965
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1966
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x41

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1969
    sget-object v3, Landroid/net/wifi/WifiConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/wifi/WifiConnectionStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1976
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1979
    return-object v2

    #@2e
    .line 1972
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    goto :goto_0

    #@30
    .line 1975
    .end local v2    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :catchall_0
    move-exception v3

    #@31
    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1975
    throw v3
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1197
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x16

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1202
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1205
    return-object v2

    #@24
    .line 1201
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1201
    throw v3
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2017
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x44

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 2020
    sget-object v3, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 2027
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2030
    return-object v2

    #@2e
    .line 2023
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/Network;
    goto :goto_0

    #@30
    .line 2026
    .end local v2    # "_result":Landroid/net/Network;
    :catchall_0
    move-exception v3

    #@31
    .line 2027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 2026
    throw v3
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1277
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1281
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1284
    sget-object v3, Landroid/net/DhcpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/DhcpInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1291
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1294
    return-object v2

    #@2e
    .line 1287
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/DhcpInfo;
    goto :goto_0

    #@30
    .line 1290
    .end local v2    # "_result":Landroid/net/DhcpInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 1291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1290
    throw v3
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1949
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x40

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1950
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1954
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1957
    return v2

    #@27
    .line 1951
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1953
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1953
    throw v3
.end method

.method public getFrequencyBand()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1230
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1235
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1238
    return v2

    #@24
    .line 1234
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1234
    throw v3
.end method

.method public getHalBasedAutojoinOffload()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1914
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x3e

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1916
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1919
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1922
    return v2

    #@24
    .line 1918
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1918
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 791
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    #@3
    return-object v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 873
    if-eqz p1, :cond_0

    #@10
    .line 874
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 875
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 880
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x5

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 883
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 890
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 893
    return-object v2

    #@37
    .line 878
    :cond_0
    const/4 v3, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 889
    :catchall_0
    move-exception v3

    #@3d
    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 889
    throw v3

    #@44
    .line 886
    :cond_1
    const/4 v2, 0x0

    #@45
    .local v2, "_result":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
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
    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 856
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 858
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 861
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 864
    return-object v2

    #@25
    .line 860
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 860
    throw v3
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
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
    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1065
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1067
    sget-object v3, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 1070
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1073
    return-object v2

    #@29
    .line 1069
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 1070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1069
    throw v3
.end method

.method public getSupportedFeatures()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 800
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 805
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 808
    return v2

    #@23
    .line 804
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 804
    throw v3
.end method

.method public getVerboseLoggingLevel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1817
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1818
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x38

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1823
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1826
    return v2

    #@24
    .line 1822
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1822
    throw v3
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1487
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x26

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1490
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1497
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1500
    return-object v2

    #@2e
    .line 1493
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@30
    .line 1496
    .end local v2    # "_result":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v3

    #@31
    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1496
    throw v3
.end method

.method public getWifiApEnabledState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1470
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x25

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1475
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1478
    return v2

    #@24
    .line 1474
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1474
    throw v3
.end method

.method public getWifiEnabledState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1164
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x14

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1169
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1172
    return v2

    #@24
    .line 1168
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1168
    throw v3
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1612
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1614
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1615
    sget-object v3, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1622
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1625
    return-object v2

    #@2e
    .line 1618
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/os/Messenger;
    goto :goto_0

    #@30
    .line 1621
    .end local v2    # "_result":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    #@31
    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1621
    throw v3
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 6
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1786
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x36

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 1791
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1794
    return-object v2

    #@27
    .line 1790
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1790
    throw v3
.end method

.method public initializeMulticastFiltering()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1386
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x20

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1380
    return-void

    #@20
    .line 1389
    :catchall_0
    move-exception v2

    #@21
    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1389
    throw v2
.end method

.method public isBatchedScanSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1754
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x34

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1759
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1762
    return v2

    #@27
    .line 1756
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1758
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1758
    throw v3
.end method

.method public isDualBandSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1247
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x19

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1252
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1255
    return v2

    #@27
    .line 1249
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1251
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1251
    throw v3
.end method

.method public isMulticastEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1401
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x21

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1406
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1409
    return v2

    #@27
    .line 1403
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1405
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1405
    throw v3
.end method

.method public isScanAlwaysAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1303
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1308
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1311
    return v2

    #@27
    .line 1305
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1307
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1307
    throw v3
.end method

.method public pingSupplicant()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 977
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 980
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 981
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 986
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 989
    return v2

    #@27
    .line 983
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 985
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 985
    throw v3
.end method

.method public pollBatchedScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1770
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x35

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1771
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1764
    return-void

    #@20
    .line 1773
    :catchall_0
    move-exception v2

    #@21
    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1773
    throw v2
.end method

.method public reassociate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1109
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x11

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1103
    return-void

    #@20
    .line 1112
    :catchall_0
    move-exception v2

    #@21
    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1112
    throw v2
.end method

.method public reconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1092
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1094
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1095
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x10

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1089
    return-void

    #@20
    .line 1098
    :catchall_0
    move-exception v2

    #@21
    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1098
    throw v2
.end method

.method public releaseMulticastLock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1433
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x23

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1427
    return-void

    #@20
    .line 1436
    :catchall_0
    move-exception v2

    #@21
    .line 1437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1436
    throw v2
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1370
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1375
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1378
    return v2

    #@2a
    .line 1372
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1374
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1374
    throw v3
.end method

.method public removeNetwork(I)Z
    .locals 6
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 927
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 932
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 935
    return v2

    #@29
    .line 929
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 931
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 931
    throw v3
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 817
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 820
    sget-object v3, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/net/wifi/WifiActivityEnergyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 827
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 830
    return-object v2

    #@2d
    .line 823
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_0

    #@2f
    .line 826
    .end local v2    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_0
    move-exception v3

    #@30
    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 826
    throw v3
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1683
    if-eqz p1, :cond_0

    #@10
    .line 1684
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1685
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/BatchedScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1690
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 1691
    if-eqz p3, :cond_1

    #@1d
    .line 1692
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1693
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1698
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x31

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 1699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    const/4 v2, 0x1

    #@37
    .line 1703
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1706
    return v2

    #@3e
    .line 1688
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 1702
    :catchall_0
    move-exception v3

    #@44
    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1702
    throw v3

    #@4b
    .line 1696
    :cond_1
    const/4 v3, 0x0

    #@4c
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_1

    #@50
    .line 1700
    :cond_2
    const/4 v2, 0x0

    #@51
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public saveConfiguration()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1264
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1269
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1272
    return v2

    #@27
    .line 1266
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1268
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1268
    throw v3
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 5
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1867
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3b

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1860
    return-void

    #@23
    .line 1870
    :catchall_0
    move-exception v2

    #@24
    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1870
    throw v2
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1181
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1182
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x15

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1174
    return-void

    #@2a
    .line 1185
    :catchall_0
    move-exception v2

    #@2b
    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1185
    throw v2
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1214
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1215
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x17

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1207
    return-void

    #@2a
    .line 1218
    :catchall_0
    move-exception v2

    #@2b
    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1218
    throw v2
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 5
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1897
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1899
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3d

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1892
    return-void

    #@23
    .line 1902
    :catchall_0
    move-exception v2

    #@24
    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1902
    throw v2
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1533
    if-eqz p1, :cond_0

    #@10
    .line 1534
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1535
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1540
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x28

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1527
    return-void

    #@2a
    .line 1538
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1543
    :catchall_0
    move-exception v2

    #@30
    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1543
    throw v2
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z
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
    .line 1443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.wifi.IWifiManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1447
    if-eqz p1, :cond_0

    #@12
    .line 1448
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1449
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1454
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1455
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x24

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1441
    return-void

    #@31
    .line 1452
    :cond_0
    const/4 v4, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1458
    :catchall_0
    move-exception v2

    #@37
    .line 1459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1458
    throw v2

    #@3e
    :cond_1
    move v2, v3

    #@3f
    .line 1454
    goto :goto_1
.end method

.method public setWifiEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.wifi.IWifiManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1146
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1147
    iget-object v3, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x13

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 1149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    const/4 v2, 0x1

    #@27
    .line 1152
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1155
    return v2

    #@2e
    .line 1149
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "_result":Z
    goto :goto_0

    #@30
    .line 1151
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@31
    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1151
    throw v3
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1039
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1041
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1042
    if-eqz p1, :cond_0

    #@10
    .line 1043
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1044
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1049
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xd

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1036
    return-void

    #@2a
    .line 1047
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1052
    :catchall_0
    move-exception v2

    #@30
    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1052
    throw v2
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1013
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1014
    if-eqz p1, :cond_0

    #@10
    .line 1015
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1016
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1021
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 1022
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1023
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1028
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xc

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1008
    return-void

    #@34
    .line 1019
    :cond_0
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1031
    :catchall_0
    move-exception v2

    #@3a
    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1031
    throw v2

    #@41
    .line 1026
    :cond_1
    const/4 v2, 0x0

    #@42
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
.end method

.method public startWifi()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1554
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x29

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1548
    return-void

    #@20
    .line 1557
    :catchall_0
    move-exception v2

    #@21
    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1557
    throw v2
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 5
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1714
    if-eqz p1, :cond_0

    #@10
    .line 1715
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1716
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/BatchedScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1721
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x32

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1708
    return-void

    #@2a
    .line 1719
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1724
    :catchall_0
    move-exception v2

    #@30
    .line 1725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1724
    throw v2
.end method

.method public stopWifi()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1568
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2a

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1562
    return-void

    #@20
    .line 1571
    :catchall_0
    move-exception v2

    #@21
    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1571
    throw v2
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.IWifiManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1347
    if-eqz p2, :cond_0

    #@13
    .line 1348
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1349
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1354
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/IWifiManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1e

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1340
    return-void

    #@2d
    .line 1352
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 1357
    :catchall_0
    move-exception v2

    #@33
    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1357
    throw v2
.end method
