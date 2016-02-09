.class Landroid/net/IConnectivityManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager$Stub;
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
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 934
    iput-object p1, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 932
    return-void
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 2237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2238
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x3c

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 2239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 2240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 2243
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 2246
    return v2

    #@2d
    .line 2240
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 2242
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2242
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 938
    iget-object v0, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 6
    .param p1, "suggestedTimeOutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1827
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x2c

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1828
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1832
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1835
    return v2

    #@27
    .line 1831
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1831
    throw v3
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1696
    if-eqz p1, :cond_0

    #@10
    .line 1697
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1698
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1703
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x26

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1706
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1713
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1716
    return-object v2

    #@38
    .line 1701
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1712
    :catchall_0
    move-exception v3

    #@3e
    .line 1713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1712
    throw v3

    #@45
    .line 1709
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_1
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
    .line 2287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2291
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x3f

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 2295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 2296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 2285
    return-void

    #@20
    .line 2294
    :catchall_0
    move-exception v2

    #@21
    .line 2295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 2296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2294
    throw v2
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1163
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1166
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1173
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1176
    return-object v2

    #@2e
    .line 1169
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/LinkProperties;
    goto :goto_0

    #@30
    .line 1172
    .end local v2    # "_result":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v3

    #@31
    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1172
    throw v3
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 951
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 952
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 954
    sget-object v3, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 961
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 964
    return-object v2

    #@2d
    .line 957
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/net/Network;
    goto :goto_0

    #@2f
    .line 960
    .end local v2    # "_result":Landroid/net/Network;
    :catchall_0
    move-exception v3

    #@30
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 960
    throw v3
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 973
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 976
    sget-object v3, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 983
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 986
    return-object v2

    #@2d
    .line 979
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/net/NetworkInfo;
    goto :goto_0

    #@2f
    .line 982
    .end local v2    # "_result":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    #@30
    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 982
    throw v3
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 996
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 999
    sget-object v3, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1006
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1009
    return-object v2

    #@30
    .line 1002
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/net/NetworkInfo;
    goto :goto_0

    #@32
    .line 1005
    .end local v2    # "_result":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1005
    throw v3
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1283
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1286
    sget-object v3, Landroid/net/NetworkQuotaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1293
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1296
    return-object v2

    #@2e
    .line 1289
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/NetworkQuotaInfo;
    goto :goto_0

    #@30
    .line 1292
    .end local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1292
    throw v3
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1070
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 1072
    sget-object v3, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, [Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1075
    .local v2, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1078
    return-object v2

    #@27
    .line 1074
    .end local v2    # "_result":[Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    #@28
    .line 1075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1074
    throw v3
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1266
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1268
    sget-object v3, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1271
    .local v2, "_result":[Landroid/net/NetworkState;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1274
    return-object v2

    #@28
    .line 1270
    .end local v2    # "_result":[Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    #@29
    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1270
    throw v3
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 6
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
    .line 1109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1110
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1112
    sget-object v3, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1115
    .local v2, "_result":[Landroid/net/Network;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1118
    return-object v2

    #@28
    .line 1114
    .end local v2    # "_result":[Landroid/net/Network;
    :catchall_0
    move-exception v3

    #@29
    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1114
    throw v3
.end method

.method public getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1792
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1794
    sget-object v3, Lcom/android/internal/net/VpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Lcom/android/internal/net/VpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1797
    .local v2, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1800
    return-object v2

    #@28
    .line 1796
    .end local v2    # "_result":[Lcom/android/internal/net/VpnInfo;
    :catchall_0
    move-exception v3

    #@29
    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1796
    throw v3
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1128
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1130
    sget-object v3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/net/NetworkCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1133
    .local v2, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1136
    return-object v2

    #@2b
    .line 1132
    .end local v2    # "_result":[Landroid/net/NetworkCapabilities;
    :catchall_0
    move-exception v3

    #@2c
    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1132
    throw v3
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1587
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x21

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1590
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1597
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1600
    return-object v2

    #@2e
    .line 1593
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/net/ProxyInfo;
    goto :goto_0

    #@30
    .line 1596
    .end local v2    # "_result":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 1597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1596
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 942
    const-string/jumbo v0, "android.net.IConnectivityManager"

    #@3
    return-object v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1378
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1383
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1386
    return v2

    #@27
    .line 1382
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1382
    throw v3
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1765
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1770
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x29

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1771
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1773
    sget-object v3, Lcom/android/internal/net/LegacyVpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1780
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1783
    return-object v2

    #@31
    .line 1776
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    goto :goto_0

    #@33
    .line 1779
    .end local v2    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v3

    #@34
    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1779
    throw v3
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1208
    if-eqz p1, :cond_0

    #@10
    .line 1209
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1210
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1215
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xd

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1218
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1225
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1228
    return-object v2

    #@38
    .line 1213
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1224
    :catchall_0
    move-exception v3

    #@3e
    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1224
    throw v3

    #@45
    .line 1221
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "_result":Landroid/net/LinkProperties;
    goto :goto_1
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1186
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xc

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1189
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1196
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1199
    return-object v2

    #@31
    .line 1192
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/net/LinkProperties;
    goto :goto_0

    #@33
    .line 1195
    .end local v2    # "_result":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v3

    #@34
    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1195
    throw v3
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1844
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1849
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1852
    return-object v2

    #@24
    .line 1848
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1848
    throw v3
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1237
    if-eqz p1, :cond_0

    #@10
    .line 1238
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1239
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1244
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xe

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1247
    sget-object v3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/net/NetworkCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1254
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1257
    return-object v2

    #@38
    .line 1242
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1253
    :catchall_0
    move-exception v3

    #@3e
    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1253
    throw v3

    #@45
    .line 1250
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "_result":Landroid/net/NetworkCapabilities;
    goto :goto_1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1088
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 1091
    sget-object v3, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1098
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1101
    return-object v2

    #@30
    .line 1094
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/net/Network;
    goto :goto_0

    #@32
    .line 1097
    .end local v2    # "_result":Landroid/net/Network;
    :catchall_0
    move-exception v3

    #@33
    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1097
    throw v3
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1019
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 1022
    sget-object v3, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1029
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1032
    return-object v2

    #@30
    .line 1025
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/net/NetworkInfo;
    goto :goto_0

    #@32
    .line 1028
    .end local v2    # "_result":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1028
    throw v3
.end method

.method public getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1041
    if-eqz p1, :cond_0

    #@10
    .line 1042
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1043
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1048
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x5

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 1051
    sget-object v3, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1058
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1061
    return-object v2

    #@37
    .line 1046
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
    .line 1057
    :catchall_0
    move-exception v3

    #@3d
    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1057
    throw v3

    #@44
    .line 1054
    :cond_1
    const/4 v2, 0x0

    #@45
    .local v2, "_result":Landroid/net/NetworkInfo;
    goto :goto_1
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 6
    .param p1, "nework"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1630
    if-eqz p1, :cond_0

    #@10
    .line 1631
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1632
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1637
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x23

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1640
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1647
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1650
    return-object v2

    #@38
    .line 1635
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1646
    :catchall_0
    move-exception v3

    #@3e
    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1646
    throw v3

    #@45
    .line 1643
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "_result":Landroid/net/ProxyInfo;
    goto :goto_1
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .locals 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2219
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x3b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 2221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 2224
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2227
    return v2

    #@27
    .line 2223
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 2223
    throw v3
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1514
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1519
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1522
    return-object v2

    #@24
    .line 1518
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1518
    throw v3
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1412
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x17

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1414
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1417
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1420
    return-object v2

    #@24
    .line 1416
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1416
    throw v3
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1480
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1482
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1485
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1488
    return-object v2

    #@24
    .line 1484
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1484
    throw v3
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1497
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1502
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1505
    return-object v2

    #@24
    .line 1501
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1501
    throw v3
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1463
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1468
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1471
    return-object v2

    #@24
    .line 1467
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1467
    throw v3
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1429
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1434
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1437
    return-object v2

    #@24
    .line 1433
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1433
    throw v3
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1446
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x19

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1451
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1454
    return-object v2

    #@24
    .line 1450
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1450
    throw v3
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1726
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x27

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1729
    sget-object v3, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1736
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1739
    return-object v2

    #@31
    .line 1732
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Lcom/android/internal/net/VpnConfig;
    goto :goto_0

    #@33
    .line 1735
    .end local v2    # "_result":Lcom/android/internal/net/VpnConfig;
    :catchall_0
    move-exception v3

    #@34
    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1735
    throw v3
.end method

.method public isActiveNetworkMetered()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1305
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1307
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
    .line 1310
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1313
    return v2

    #@27
    .line 1307
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1309
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1309
    throw v3
.end method

.method public isNetworkSupported(I)Z
    .locals 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1141
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1146
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1148
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
    .line 1151
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1154
    return v2

    #@2a
    .line 1148
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1150
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1150
    throw v3
.end method

.method public isTetheringSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1395
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x16

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1397
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
    .line 1400
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1403
    return v2

    #@27
    .line 1397
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1399
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1399
    throw v3
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2109
    if-eqz p1, :cond_0

    #@10
    .line 2110
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2111
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2116
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 2117
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2118
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 2123
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 2124
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x37

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 2125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 2126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 2127
    sget-object v3, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/net/NetworkRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 2134
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 2137
    return-object v2

    #@45
    .line 2114
    :cond_0
    const/4 v3, 0x0

    #@46
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 2133
    :catchall_0
    move-exception v3

    #@4b
    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 2133
    throw v3

    #@52
    .line 2121
    :cond_1
    const/4 v3, 0x0

    #@53
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_1

    #@57
    .line 2130
    :cond_2
    const/4 v2, 0x0

    #@58
    .local v2, "_result":Landroid/net/NetworkRequest;
    goto :goto_2
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2145
    if-eqz p1, :cond_0

    #@10
    .line 2146
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2147
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2152
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 2153
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2154
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 2159
    :goto_1
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x38

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 2160
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2139
    return-void

    #@34
    .line 2150
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
    .line 2162
    :catchall_0
    move-exception v2

    #@3a
    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 2162
    throw v2

    #@41
    .line 2157
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

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2052
    if-eqz p1, :cond_0

    #@10
    .line 2053
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2054
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2059
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 2060
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2061
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 2066
    :goto_1
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0x35

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 2068
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 2069
    sget-object v3, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Landroid/net/NetworkRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 2076
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 2079
    return-object v2

    #@42
    .line 2057
    :cond_0
    const/4 v3, 0x0

    #@43
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 2075
    :catchall_0
    move-exception v3

    #@48
    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 2075
    throw v3

    #@4f
    .line 2064
    :cond_1
    const/4 v3, 0x0

    #@50
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_1

    #@54
    .line 2072
    :cond_2
    const/4 v2, 0x0

    #@55
    .local v2, "_result":Landroid/net/NetworkRequest;
    goto :goto_2
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1661
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1662
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x24

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 1667
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1670
    return v2

    #@30
    .line 1664
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 1666
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 1667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1666
    throw v3
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 6
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # I
    .param p6, "misc"    # Landroid/net/NetworkMisc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1960
    if-eqz p1, :cond_0

    #@10
    .line 1961
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1962
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1967
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 1968
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1969
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1974
    :goto_1
    if-eqz p3, :cond_2

    #@24
    .line 1975
    const/4 v3, 0x1

    #@25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1976
    const/4 v3, 0x0

    #@29
    invoke-virtual {p3, v0, v3}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 1981
    :goto_2
    if-eqz p4, :cond_3

    #@2e
    .line 1982
    const/4 v3, 0x1

    #@2f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1983
    const/4 v3, 0x0

    #@33
    invoke-virtual {p4, v0, v3}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    .line 1988
    :goto_3
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 1989
    if-eqz p6, :cond_4

    #@3b
    .line 1990
    const/4 v3, 0x1

    #@3c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 1991
    const/4 v3, 0x0

    #@40
    invoke-virtual {p6, v0, v3}, Landroid/net/NetworkMisc;->writeToParcel(Landroid/os/Parcel;I)V

    #@43
    .line 1996
    :goto_4
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@45
    const/16 v4, 0x33

    #@47
    const/4 v5, 0x0

    #@48
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@4b
    .line 1997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@4e
    .line 1998
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    move-result v2

    #@52
    .line 2001
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 2002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 2004
    return v2

    #@59
    .line 1965
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@5a
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 2000
    :catchall_0
    move-exception v3

    #@5f
    .line 2001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@62
    .line 2002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@65
    .line 2000
    throw v3

    #@66
    .line 1972
    :cond_1
    const/4 v3, 0x0

    #@67
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    goto :goto_1

    #@6b
    .line 1979
    :cond_2
    const/4 v3, 0x0

    #@6c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    goto :goto_2

    #@70
    .line 1986
    :cond_3
    const/4 v3, 0x0

    #@71
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    goto :goto_3

    #@75
    .line 1994
    :cond_4
    const/4 v3, 0x0

    #@76
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    goto :goto_4
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1892
    if-eqz p1, :cond_0

    #@10
    .line 1893
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1894
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1899
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1900
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x30

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1886
    return-void

    #@2d
    .line 1897
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
    .line 1903
    :catchall_0
    move-exception v2

    #@33
    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1903
    throw v2
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2173
    if-eqz p1, :cond_0

    #@10
    .line 2174
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2175
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2180
    :goto_0
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x39

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2167
    return-void

    #@2a
    .line 2178
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
    .line 2183
    :catchall_0
    move-exception v2

    #@30
    .line 2184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2183
    throw v2
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2087
    if-eqz p1, :cond_0

    #@10
    .line 2088
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2089
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2094
    :goto_0
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x36

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2081
    return-void

    #@2a
    .line 2092
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
    .line 2097
    :catchall_0
    move-exception v2

    #@30
    .line 2098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2097
    throw v2
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 2256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2257
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x3d

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 2259
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 2262
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 2265
    return v2

    #@2d
    .line 2259
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 2261
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2261
    throw v3
.end method

.method public reportInetCondition(II)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1549
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1550
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1f

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1542
    return-void

    #@26
    .line 1553
    :catchall_0
    move-exception v2

    #@27
    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1553
    throw v2
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z
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
    .line 1560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1563
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1564
    if-eqz p1, :cond_0

    #@12
    .line 1565
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1566
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1571
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1572
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x20

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1558
    return-void

    #@31
    .line 1569
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
    .line 1575
    :catchall_0
    move-exception v2

    #@37
    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1575
    throw v2

    #@3e
    :cond_1
    move v2, v3

    #@3f
    .line 1571
    goto :goto_1
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1915
    if-eqz p1, :cond_0

    #@10
    .line 1916
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1917
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1922
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x31

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1924
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
    .line 1927
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1930
    return v2

    #@31
    .line 1920
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1926
    :catchall_0
    move-exception v3

    #@37
    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1926
    throw v3

    #@3e
    .line 1924
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutSec"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2013
    if-eqz p1, :cond_0

    #@10
    .line 2014
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2015
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2020
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 2021
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2022
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 2027
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 2028
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 2029
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 2030
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v4, 0x34

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 2031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@36
    .line 2032
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 2033
    sget-object v3, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/net/NetworkRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 2040
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 2041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 2043
    return-object v2

    #@4b
    .line 2018
    :cond_0
    const/4 v3, 0x0

    #@4c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 2039
    :catchall_0
    move-exception v3

    #@51
    .line 2040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 2041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 2039
    throw v3

    #@58
    .line 2025
    :cond_1
    const/4 v3, 0x0

    #@59
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_1

    #@5d
    .line 2036
    :cond_2
    const/4 v2, 0x0

    #@5e
    .local v2, "_result":Landroid/net/NetworkRequest;
    goto :goto_2
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 1324
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x12

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 1329
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1332
    return v2

    #@2d
    .line 1326
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 1328
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1328
    throw v3
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z
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
    .line 2190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 2191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 2193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 2194
    if-eqz p1, :cond_0

    #@12
    .line 2195
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 2196
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 2201
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    move v4, v2

    #@1d
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 2202
    if-eqz p3, :cond_2

    #@22
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 2203
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x3a

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 2204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2188
    return-void

    #@37
    .line 2199
    :cond_0
    const/4 v4, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 2206
    :catchall_0
    move-exception v2

    #@3d
    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 2206
    throw v2

    #@44
    :cond_1
    move v4, v3

    #@45
    .line 2201
    goto :goto_1

    #@46
    :cond_2
    move v2, v3

    #@47
    .line 2202
    goto :goto_2
.end method

.method public setAirplaneMode(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1877
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1878
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x2f

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1871
    return-void

    #@27
    .line 1881
    :catchall_0
    move-exception v2

    #@28
    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1881
    throw v2
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "p"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1608
    if-eqz p1, :cond_0

    #@10
    .line 1609
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1610
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1615
    :goto_0
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x22

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1602
    return-void

    #@2a
    .line 1613
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
    .line 1618
    :catchall_0
    move-exception v2

    #@30
    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1618
    throw v2
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1857
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1860
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1862
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1863
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x2e

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1854
    return-void

    #@2d
    .line 1866
    :catchall_0
    move-exception v2

    #@2e
    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1866
    throw v2
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 6
    .param p1, "networks"    # [Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2274
    const/4 v3, 0x0

    #@f
    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 2275
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x3e

    #@16
    const/4 v5, 0x0

    #@17
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1d
    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    const/4 v2, 0x1

    #@24
    .line 2280
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2283
    return v2

    #@2b
    .line 2277
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2c
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2d
    .line 2279
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2e
    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 2281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 2279
    throw v3
.end method

.method public setUsbTethering(Z)I
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
    .line 1526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.IConnectivityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1531
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1532
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x1e

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    .line 1537
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1540
    return v2

    #@2b
    .line 1536
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2c
    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1536
    throw v3
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authorized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1680
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1681
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x25

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1672
    return-void

    #@2d
    .line 1684
    :catchall_0
    move-exception v2

    #@2e
    .line 1685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1684
    throw v2
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1747
    if-eqz p1, :cond_0

    #@10
    .line 1748
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1749
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/net/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1754
    :goto_0
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x28

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1741
    return-void

    #@2a
    .line 1752
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
    .line 1757
    :catchall_0
    move-exception v2

    #@30
    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1757
    throw v2
.end method

.method public tether(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1342
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x13

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1347
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1350
    return v2

    #@27
    .line 1346
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1346
    throw v3
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1937
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1938
    if-eqz p1, :cond_0

    #@10
    .line 1939
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1940
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1945
    :goto_0
    iget-object v2, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x32

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1932
    return-void

    #@2a
    .line 1943
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
    .line 1948
    :catchall_0
    move-exception v2

    #@30
    .line 1949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1948
    throw v2
.end method

.method public untether(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1360
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x14

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1365
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1368
    return v2

    #@27
    .line 1364
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1364
    throw v3
.end method

.method public updateLockdownVpn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1809
    iget-object v3, p0, Landroid/net/IConnectivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1810
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1811
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
    .line 1814
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1817
    return v2

    #@27
    .line 1811
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1813
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1813
    throw v3
.end method
