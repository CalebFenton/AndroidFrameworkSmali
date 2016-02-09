.class Landroid/location/ILocationManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager$Stub;
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
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 573
    iput-object p1, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 571
    return-void
.end method


# virtual methods
.method public addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z
    .locals 6
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 866
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 867
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsMeasurementsListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 869
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xc

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 874
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 877
    return v2

    #@34
    .line 871
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@35
    .restart local v2    # "_result":Z
    goto :goto_0

    #@36
    .line 873
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@37
    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 873
    throw v3
.end method

.method public addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z
    .locals 6
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 901
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsNavigationMessageListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 903
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xe

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 908
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 911
    return v2

    #@34
    .line 905
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@35
    .restart local v2    # "_result":Z
    goto :goto_0

    #@36
    .line 907
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@37
    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 907
    throw v3
.end method

.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    .locals 6
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 738
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 739
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 740
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x6

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 745
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 748
    return v2

    #@33
    .line 742
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@34
    .restart local v2    # "_result":Z
    goto :goto_0

    #@35
    .line 744
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@36
    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 744
    throw v3
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;
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
    .line 1085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1087
    if-eqz p2, :cond_0

    #@13
    .line 1088
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1089
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1094
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1095
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x17

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1080
    return-void

    #@30
    .line 1092
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
    .line 1098
    :catchall_0
    move-exception v2

    #@36
    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1098
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1183
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1c

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1175
    return-void

    #@26
    .line 1186
    :catchall_0
    move-exception v2

    #@27
    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1186
    throw v2
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1150
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1a

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1142
    return-void

    #@26
    .line 1153
    :catchall_0
    move-exception v2

    #@27
    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1153
    throw v2
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1224
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1e

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1216
    return-void

    #@26
    .line 1227
    :catchall_0
    move-exception v2

    #@27
    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1227
    throw v2
.end method

.method public geocoderIsPresent()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 772
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 774
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
    .line 777
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 780
    return v2

    #@27
    .line 774
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 776
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 776
    throw v3
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 937
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 942
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 945
    return-object v2

    #@24
    .line 941
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@25
    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 941
    throw v3
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.location.ILocationManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 979
    if-eqz p1, :cond_0

    #@12
    .line 980
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 981
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 986
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 987
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v4, 0x12

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2a
    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v2

    #@2e
    .line 992
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 995
    return-object v2

    #@35
    .line 984
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    #@36
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 991
    :catchall_0
    move-exception v3

    #@3b
    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 991
    throw v3

    #@42
    :cond_1
    move v3, v4

    #@43
    .line 986
    goto :goto_1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 784
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 788
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 789
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    #@11
    .line 790
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 791
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 792
    if-eqz p6, :cond_0

    #@19
    .line 793
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 794
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p6, v0, v3}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 799
    :goto_0
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x9

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 802
    .local v2, "_result":Ljava/lang/String;
    sget-object v3, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-virtual {v1, p7, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 808
    return-object v2

    #@3c
    .line 797
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@3d
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 804
    :catchall_0
    move-exception v3

    #@42
    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 804
    throw v3
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 813
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v3

    #@8
    .line 816
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.location.ILocationManager"

    #@b
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 817
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 818
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 819
    invoke-virtual {v2, p4, p5}, Landroid/os/Parcel;->writeDouble(D)V

    #@17
    .line 820
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    #@1a
    .line 821
    move-wide/from16 v0, p8

    #@1c
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@1f
    .line 822
    move/from16 v0, p10

    #@21
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 823
    if-eqz p11, :cond_0

    #@26
    .line 824
    const/4 v5, 0x1

    #@27
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 825
    const/4 v5, 0x0

    #@2b
    move-object/from16 v0, p11

    #@2d
    invoke-virtual {v0, v2, v5}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    .line 830
    :goto_0
    iget-object v5, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/16 v6, 0xa

    #@34
    const/4 v7, 0x0

    #@35
    invoke-interface {v5, v6, v2, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@38
    .line 831
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@3b
    .line 832
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    .line 833
    .local v4, "_result":Ljava/lang/String;
    sget-object v5, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    move-object/from16 v0, p12

    #@43
    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 836
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 837
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 839
    return-object v4

    #@4d
    .line 828
    .end local v4    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    #@4e
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 835
    :catchall_0
    move-exception v5

    #@53
    .line 836
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 837
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 835
    throw v5
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 581
    const-string/jumbo v0, "android.location.ILocationManager"

    #@3
    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 6
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 704
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 708
    if-eqz p1, :cond_0

    #@10
    .line 709
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 710
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 715
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 716
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x5

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 719
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 726
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 729
    return-object v2

    #@3a
    .line 713
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
    .line 725
    :catchall_0
    move-exception v3

    #@40
    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 725
    throw v3

    #@47
    .line 722
    :cond_1
    const/4 v2, 0x0

    #@48
    .local v2, "_result":Landroid/location/Location;
    goto :goto_1
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1052
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x15

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1057
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1060
    return-object v2

    #@24
    .line 1056
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1056
    throw v3
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1030
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x14

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1033
    sget-object v3, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/internal/location/ProviderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1040
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1043
    return-object v2

    #@31
    .line 1036
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Lcom/android/internal/location/ProviderProperties;
    goto :goto_0

    #@33
    .line 1039
    .end local v2    # "_result":Lcom/android/internal/location/ProviderProperties;
    :catchall_0
    move-exception v3

    #@34
    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1039
    throw v3
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.location.ILocationManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 954
    if-eqz p1, :cond_0

    #@12
    .line 955
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 956
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 961
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 962
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v4, 0x11

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2a
    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v2

    #@2e
    .line 967
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 970
    return-object v2

    #@35
    .line 959
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x0

    #@36
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 966
    :catchall_0
    move-exception v3

    #@3b
    .line 967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 966
    throw v3

    #@42
    :cond_1
    move v3, v4

    #@43
    .line 961
    goto :goto_1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1070
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x16

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1072
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
    .line 1075
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1078
    return v2

    #@2a
    .line 1072
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1074
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1074
    throw v3
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1296
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1297
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x21

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1290
    return-void

    #@2a
    .line 1300
    :catchall_0
    move-exception v2

    #@2b
    .line 1301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1300
    throw v2
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Landroid/location/Criteria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1005
    if-eqz p2, :cond_0

    #@13
    .line 1006
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1007
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1012
    :goto_0
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x13

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 1017
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1020
    return v2

    #@34
    .line 1010
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1016
    :catchall_0
    move-exception v3

    #@3a
    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1016
    throw v3

    #@41
    .line 1014
    :cond_1
    const/4 v2, 0x0

    #@42
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 678
    if-eqz p1, :cond_0

    #@10
    .line 679
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 680
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/location/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 685
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 686
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 687
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 692
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 693
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x4

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 672
    return-void

    #@36
    .line 683
    :cond_0
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 696
    :catchall_0
    move-exception v2

    #@3c
    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 696
    throw v2

    #@43
    .line 690
    :cond_1
    const/4 v2, 0x0

    #@44
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_1
.end method

.method public removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 885
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsMeasurementsListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 886
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xd

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 879
    return-void

    #@2a
    .line 889
    :catchall_0
    move-exception v2

    #@2b
    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 889
    throw v2
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 918
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 919
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsNavigationMessageListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 920
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xf

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 913
    return-void

    #@2a
    .line 923
    :catchall_0
    move-exception v2

    #@2b
    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 923
    throw v2
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 756
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 757
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 750
    return-void

    #@29
    .line 760
    :catchall_0
    move-exception v2

    #@2a
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 760
    throw v2
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
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
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1110
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1111
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x18

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1103
    return-void

    #@26
    .line 1114
    :catchall_0
    move-exception v2

    #@27
    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1114
    throw v2
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 619
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 620
    if-eqz p2, :cond_1

    #@1a
    .line 621
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 622
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 627
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 628
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x2

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 613
    return-void

    #@36
    .line 625
    :cond_1
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 631
    :catchall_0
    move-exception v2

    #@3c
    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 631
    throw v2
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z
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
    .line 1268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.location.ILocationManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1272
    if-eqz p1, :cond_0

    #@12
    .line 1273
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1274
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1279
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1280
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x20

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1266
    return-void

    #@31
    .line 1277
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
    .line 1283
    :catchall_0
    move-exception v2

    #@37
    .line 1284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1283
    throw v2

    #@3e
    :cond_1
    move v2, v3

    #@3f
    .line 1279
    goto :goto_1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 642
    if-eqz p1, :cond_0

    #@10
    .line 643
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 644
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 649
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 650
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 651
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/location/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 656
    :goto_1
    if-eqz p3, :cond_2

    #@24
    .line 657
    const/4 v2, 0x1

    #@25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 658
    const/4 v2, 0x0

    #@29
    invoke-virtual {p3, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 663
    :goto_2
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 664
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x3

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 636
    return-void

    #@40
    .line 647
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
    .line 667
    :catchall_0
    move-exception v2

    #@46
    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 667
    throw v2

    #@4d
    .line 654
    :cond_1
    const/4 v2, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    goto :goto_1

    #@52
    .line 661
    :cond_2
    const/4 v2, 0x0

    #@53
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_2
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 589
    if-eqz p1, :cond_1

    #@11
    .line 590
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 591
    const/4 v3, 0x0

    #@16
    invoke-virtual {p1, v0, v3}, Landroid/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 596
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 597
    if-eqz p3, :cond_2

    #@24
    .line 598
    const/4 v2, 0x1

    #@25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 599
    const/4 v2, 0x0

    #@29
    invoke-virtual {p3, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 604
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 605
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x1

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 583
    return-void

    #@40
    .line 594
    :cond_1
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 608
    :catchall_0
    move-exception v2

    #@46
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 608
    throw v2

    #@4d
    .line 602
    :cond_2
    const/4 v2, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1241
    if-eqz p3, :cond_1

    #@16
    .line 1242
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1243
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1248
    :goto_0
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x1f

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    const/4 v2, 0x1

    #@30
    .line 1251
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_0

    #@36
    .line 1252
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 1256
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1259
    return v2

    #@40
    .line 1246
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 1255
    :catchall_0
    move-exception v3

    #@46
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 1255
    throw v3

    #@4d
    .line 1250
    :cond_2
    const/4 v2, 0x0

    #@4e
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public sendNiResponse(II)Z
    .locals 6
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 850
    iget-object v3, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 852
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
    .line 855
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 858
    return v2

    #@2d
    .line 852
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 854
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 854
    throw v3
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ILocationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1165
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1166
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1167
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1b

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1158
    return-void

    #@2d
    .line 1170
    :catchall_0
    move-exception v2

    #@2e
    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1170
    throw v2
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1126
    if-eqz p2, :cond_0

    #@13
    .line 1127
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1128
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1133
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1134
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x19

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1119
    return-void

    #@30
    .line 1131
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
    .line 1137
    :catchall_0
    move-exception v2

    #@36
    .line 1138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1137
    throw v2
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .param p6, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.location.ILocationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1198
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1199
    if-eqz p3, :cond_0

    #@16
    .line 1200
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1201
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1206
    :goto_0
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@21
    .line 1207
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 1208
    iget-object v2, p0, Landroid/location/ILocationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x1d

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1191
    return-void

    #@36
    .line 1204
    :cond_0
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 1211
    :catchall_0
    move-exception v2

    #@3c
    .line 1212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 1211
    throw v2
.end method
