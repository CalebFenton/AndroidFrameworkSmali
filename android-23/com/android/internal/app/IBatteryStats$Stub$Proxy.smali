.class Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats$Stub;
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
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 895
    iput-object p1, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 893
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public computeBatteryTimeRemaining()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1186
    iget-object v4, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x12

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 1191
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1194
    return-wide v2

    #@24
    .line 1190
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1190
    throw v4
.end method

.method public computeChargeTimeRemaining()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1206
    iget-object v4, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x13

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 1211
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1214
    return-wide v2

    #@24
    .line 1210
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1210
    throw v4
.end method

.method public getAwakeTimeBattery()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2168
    iget-object v4, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x49

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2170
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 2173
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2176
    return-wide v2

    #@24
    .line 2172
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 2173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2172
    throw v4
.end method

.method public getAwakeTimePlugged()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2185
    iget-object v4, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x4a

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 2190
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2193
    return-wide v2

    #@24
    .line 2189
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2189
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 903
    const-string/jumbo v0, "com.android.internal.app.IBatteryStats"

    #@3
    return-object v0
.end method

.method public getStatistics()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1125
    iget-object v3, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1130
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1133
    return-object v2

    #@24
    .line 1129
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@25
    .line 1130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1129
    throw v3
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1142
    iget-object v3, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1145
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1152
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1155
    return-object v2

    #@2e
    .line 1148
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@30
    .line 1151
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
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

.method public isCharging()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1166
    iget-object v3, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1168
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
    .line 1171
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1174
    return v2

    #@27
    .line 1168
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1170
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1170
    throw v3
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "histyoryName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z
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
    .line 1367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1368
    if-eqz p1, :cond_0

    #@10
    .line 1369
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1370
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1375
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1376
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1377
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 1378
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1379
    if-eqz p6, :cond_1

    #@26
    .line 1380
    const/4 v2, 0x1

    #@27
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 1381
    const/4 v2, 0x0

    #@2b
    invoke-virtual {p6, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 1386
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1387
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 1388
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 1389
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 1390
    if-eqz p11, :cond_2

    #@3c
    const/4 v2, 0x1

    #@3d
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 1391
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@42
    const/16 v3, 0x1c

    #@44
    const/4 v4, 0x0

    #@45
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@48
    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1362
    return-void

    #@52
    .line 1373
    :cond_0
    const/4 v2, 0x0

    #@53
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 1394
    :catchall_0
    move-exception v2

    #@58
    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 1394
    throw v2

    #@5f
    .line 1384
    :cond_1
    const/4 v2, 0x0

    #@60
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_1

    #@64
    .line 1390
    :cond_2
    const/4 v2, 0x0

    #@65
    goto :goto_2
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
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
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1570
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x27

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1562
    return-void

    #@26
    .line 1573
    :catchall_0
    move-exception v2

    #@27
    .line 1574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1573
    throw v2
.end method

.method public noteDeviceIdleMode(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2130
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 2131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 2132
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 2133
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x47

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 2124
    return-void

    #@2d
    .line 2136
    :catchall_0
    move-exception v2

    #@2e
    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 2136
    throw v2
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
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
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1224
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1225
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x14

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1216
    return-void

    #@29
    .line 1228
    :catchall_0
    move-exception v2

    #@2a
    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1228
    throw v2
.end method

.method public noteFlashlightOff(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1046
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1050
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xa

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1043
    return-void

    #@23
    .line 1053
    :catchall_0
    move-exception v2

    #@24
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1053
    throw v2
.end method

.method public noteFlashlightOn(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1035
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1028
    return-void

    #@23
    .line 1038
    :catchall_0
    move-exception v2

    #@24
    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1038
    throw v2
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 5
    .param p1, "uid"    # I
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
    .line 1824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1826
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x36

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1819
    return-void

    #@23
    .line 1829
    :catchall_0
    move-exception v2

    #@24
    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1829
    throw v2
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1912
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1915
    if-eqz p1, :cond_0

    #@10
    .line 1916
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1917
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1922
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x3c

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1909
    return-void

    #@2a
    .line 1920
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
    .line 1925
    :catchall_0
    move-exception v2

    #@30
    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1925
    throw v2
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1841
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x37

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1834
    return-void

    #@23
    .line 1844
    :catchall_0
    move-exception v2

    #@24
    .line 1845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1844
    throw v2
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1936
    if-eqz p1, :cond_0

    #@10
    .line 1937
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1938
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1943
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x3d

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1930
    return-void

    #@2a
    .line 1941
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
    .line 1946
    :catchall_0
    move-exception v2

    #@30
    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1946
    throw v2
.end method

.method public noteInteractive(Z)V
    .locals 5
    .param p1, "interactive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1553
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1554
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x26

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1547
    return-void

    #@27
    .line 1557
    :catchall_0
    move-exception v2

    #@28
    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1557
    throw v2
.end method

.method public noteJobFinish(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1289
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x18

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1281
    return-void

    #@26
    .line 1292
    :catchall_0
    move-exception v2

    #@27
    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1292
    throw v2
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1273
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x17

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1265
    return-void

    #@26
    .line 1276
    :catchall_0
    move-exception v2

    #@27
    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1276
    throw v2
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1585
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1586
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x28

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1578
    return-void

    #@26
    .line 1589
    :catchall_0
    move-exception v2

    #@27
    .line 1590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1589
    throw v2
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 2101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2102
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x45

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 2103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 2106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 2107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 2094
    return-void

    #@26
    .line 2105
    :catchall_0
    move-exception v2

    #@27
    .line 2106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2105
    throw v2
.end method

.method public noteNetworkStatsEnabled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2116
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x46

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 2120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 2110
    return-void

    #@20
    .line 2119
    :catchall_0
    move-exception v2

    #@21
    .line 2120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2119
    throw v2
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 5
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1650
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1651
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x2c

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1643
    return-void

    #@2a
    .line 1654
    :catchall_0
    move-exception v2

    #@2b
    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1654
    throw v2
.end method

.method public notePhoneOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1614
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2a

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1608
    return-void

    #@20
    .line 1617
    :catchall_0
    move-exception v2

    #@21
    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1617
    throw v2
.end method

.method public notePhoneOn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1600
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x29

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1594
    return-void

    #@20
    .line 1603
    :catchall_0
    move-exception v2

    #@21
    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1603
    throw v2
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1628
    if-eqz p1, :cond_0

    #@10
    .line 1629
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1630
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1635
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x2b

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1622
    return-void

    #@2a
    .line 1633
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
    .line 1638
    :catchall_0
    move-exception v2

    #@30
    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1638
    throw v2
.end method

.method public notePhoneState(I)V
    .locals 5
    .param p1, "phoneState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1666
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x2d

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1659
    return-void

    #@23
    .line 1669
    :catchall_0
    move-exception v2

    #@24
    .line 1670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1669
    throw v2
.end method

.method public noteResetAudio()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1020
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1014
    return-void

    #@20
    .line 1023
    :catchall_0
    move-exception v2

    #@21
    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1023
    throw v2
.end method

.method public noteResetCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1094
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xd

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1088
    return-void

    #@20
    .line 1097
    :catchall_0
    move-exception v2

    #@21
    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1097
    throw v2
.end method

.method public noteResetFlashlight()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1108
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xe

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1102
    return-void

    #@20
    .line 1111
    :catchall_0
    move-exception v2

    #@21
    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1111
    throw v2
.end method

.method public noteResetVideo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1003
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1006
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 1011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 1000
    return-void

    #@1f
    .line 1009
    :catchall_0
    move-exception v2

    #@20
    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1009
    throw v2
.end method

.method public noteScreenBrightness(I)V
    .locals 5
    .param p1, "brightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1505
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1507
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x23

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1500
    return-void

    #@23
    .line 1510
    :catchall_0
    move-exception v2

    #@24
    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1510
    throw v2
.end method

.method public noteScreenState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1492
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x22

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1485
    return-void

    #@23
    .line 1495
    :catchall_0
    move-exception v2

    #@24
    .line 1496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1495
    throw v2
.end method

.method public noteStartAudio(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 977
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 970
    return-void

    #@22
    .line 980
    :catchall_0
    move-exception v2

    #@23
    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 980
    throw v2
.end method

.method public noteStartCamera(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1065
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1058
    return-void

    #@23
    .line 1068
    :catchall_0
    move-exception v2

    #@24
    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1068
    throw v2
.end method

.method public noteStartGps(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1462
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x20

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1455
    return-void

    #@23
    .line 1465
    :catchall_0
    move-exception v2

    #@24
    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1465
    throw v2
.end method

.method public noteStartSensor(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 915
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 916
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x1

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 908
    return-void

    #@25
    .line 919
    :catchall_0
    move-exception v2

    #@26
    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 919
    throw v2
.end method

.method public noteStartVideo(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 947
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 940
    return-void

    #@22
    .line 950
    :catchall_0
    move-exception v2

    #@23
    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 950
    throw v2
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1305
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 1306
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1307
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1308
    if-eqz p6, :cond_0

    #@20
    const/4 v2, 0x1

    #@21
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1309
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x19

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1297
    return-void

    #@36
    .line 1312
    :catchall_0
    move-exception v2

    #@37
    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1312
    throw v2
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
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
    .line 1338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1342
    if-eqz p1, :cond_0

    #@12
    .line 1343
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1344
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1349
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1350
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 1351
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1352
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 1353
    if-eqz p6, :cond_1

    #@28
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 1354
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x1b

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1336
    return-void

    #@3d
    .line 1347
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
    .line 1357
    :catchall_0
    move-exception v2

    #@43
    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1357
    throw v2

    #@4a
    :cond_1
    move v2, v3

    #@4b
    .line 1353
    goto :goto_1
.end method

.method public noteStopAudio(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 990
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 992
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x6

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 985
    return-void

    #@22
    .line 995
    :catchall_0
    move-exception v2

    #@23
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 995
    throw v2
.end method

.method public noteStopCamera(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1078
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1080
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xc

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1073
    return-void

    #@23
    .line 1083
    :catchall_0
    move-exception v2

    #@24
    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1083
    throw v2
.end method

.method public noteStopGps(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1477
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x21

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1470
    return-void

    #@23
    .line 1480
    :catchall_0
    move-exception v2

    #@24
    .line 1481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1480
    throw v2
.end method

.method public noteStopSensor(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 931
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 932
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 924
    return-void

    #@25
    .line 935
    :catchall_0
    move-exception v2

    #@26
    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 935
    throw v2
.end method

.method public noteStopVideo(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 962
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 955
    return-void

    #@22
    .line 965
    :catchall_0
    move-exception v2

    #@23
    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 965
    throw v2
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 1326
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 1327
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1328
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0x1a

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1317
    return-void

    #@2f
    .line 1331
    :catchall_0
    move-exception v2

    #@30
    .line 1332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1331
    throw v2
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1405
    if-eqz p1, :cond_0

    #@10
    .line 1406
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1407
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1412
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1414
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 1415
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1416
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x1d

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1399
    return-void

    #@36
    .line 1410
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
    .line 1419
    :catchall_0
    move-exception v2

    #@3c
    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 1419
    throw v2
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1257
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x16

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1249
    return-void

    #@26
    .line 1260
    :catchall_0
    move-exception v2

    #@27
    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1260
    throw v2
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1241
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x15

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1233
    return-void

    #@26
    .line 1244
    :catchall_0
    move-exception v2

    #@27
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1244
    throw v2
.end method

.method public noteUserActivity(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "event"    # I
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
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1523
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x24

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1515
    return-void

    #@26
    .line 1526
    :catchall_0
    move-exception v2

    #@27
    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1526
    throw v2
.end method

.method public noteVibratorOff(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1447
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x1f

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1440
    return-void

    #@23
    .line 1450
    :catchall_0
    move-exception v2

    #@24
    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1450
    throw v2
.end method

.method public noteVibratorOn(IJ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1431
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1432
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1e

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1424
    return-void

    #@26
    .line 1435
    :catchall_0
    move-exception v2

    #@27
    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1435
    throw v2
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1539
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x25

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1531
    return-void

    #@26
    .line 1542
    :catchall_0
    move-exception v2

    #@27
    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1542
    throw v2
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1999
    if-eqz p1, :cond_0

    #@10
    .line 2000
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2001
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2006
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 2007
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x40

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1993
    return-void

    #@2d
    .line 2004
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
    .line 2010
    :catchall_0
    move-exception v2

    #@33
    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 2010
    throw v2
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2018
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2021
    if-eqz p1, :cond_0

    #@10
    .line 2022
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2023
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2028
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x41

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2015
    return-void

    #@2a
    .line 2026
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
    .line 2031
    :catchall_0
    move-exception v2

    #@30
    .line 2032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2031
    throw v2
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1899
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1901
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3b

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1894
    return-void

    #@23
    .line 1904
    :catchall_0
    move-exception v2

    #@24
    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1904
    throw v2
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2062
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2063
    if-eqz p1, :cond_0

    #@10
    .line 2064
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2065
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2070
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x43

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2057
    return-void

    #@2a
    .line 2068
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
    .line 2073
    :catchall_0
    move-exception v2

    #@30
    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2073
    throw v2
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1886
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3a

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1879
    return-void

    #@23
    .line 1889
    :catchall_0
    move-exception v2

    #@24
    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1889
    throw v2
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2039
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2041
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2042
    if-eqz p1, :cond_0

    #@10
    .line 2043
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2044
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2049
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x42

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2036
    return-void

    #@2a
    .line 2047
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
    .line 2052
    :catchall_0
    move-exception v2

    #@30
    .line 2053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2052
    throw v2
.end method

.method public noteWifiOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1694
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2f

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1688
    return-void

    #@20
    .line 1697
    :catchall_0
    move-exception v2

    #@21
    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1697
    throw v2
.end method

.method public noteWifiOn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1679
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1680
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2e

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1674
    return-void

    #@20
    .line 1683
    :catchall_0
    move-exception v2

    #@21
    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1683
    throw v2
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2085
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 2086
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x44

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 2078
    return-void

    #@26
    .line 2089
    :catchall_0
    move-exception v2

    #@27
    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2089
    throw v2
.end method

.method public noteWifiRssiChanged(I)V
    .locals 5
    .param p1, "newRssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1811
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x35

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1804
    return-void

    #@23
    .line 1814
    :catchall_0
    move-exception v2

    #@24
    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1814
    throw v2
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1708
    if-eqz p1, :cond_0

    #@10
    .line 1709
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1710
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1715
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x30

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1702
    return-void

    #@2a
    .line 1713
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
    .line 1718
    :catchall_0
    move-exception v2

    #@30
    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1718
    throw v2
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1729
    if-eqz p1, :cond_0

    #@10
    .line 1730
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1731
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1736
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 1737
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1738
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1743
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x31

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1723
    return-void

    #@34
    .line 1734
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
    .line 1746
    :catchall_0
    move-exception v2

    #@3a
    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1746
    throw v2

    #@41
    .line 1741
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

.method public noteWifiScanStarted(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1856
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x38

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1849
    return-void

    #@23
    .line 1859
    :catchall_0
    move-exception v2

    #@24
    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1859
    throw v2
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1957
    if-eqz p1, :cond_0

    #@10
    .line 1958
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1959
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1964
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x3e

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1951
    return-void

    #@2a
    .line 1962
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
    .line 1967
    :catchall_0
    move-exception v2

    #@30
    .line 1968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1967
    throw v2
.end method

.method public noteWifiScanStopped(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1870
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1871
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x39

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1864
    return-void

    #@23
    .line 1874
    :catchall_0
    move-exception v2

    #@24
    .line 1875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1874
    throw v2
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1978
    if-eqz p1, :cond_0

    #@10
    .line 1979
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1980
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1985
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x3f

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1972
    return-void

    #@2a
    .line 1983
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
    .line 1988
    :catchall_0
    move-exception v2

    #@30
    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1988
    throw v2
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 5
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1780
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x33

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1772
    return-void

    #@26
    .line 1783
    :catchall_0
    move-exception v2

    #@27
    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1783
    throw v2
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1757
    if-eqz p1, :cond_0

    #@10
    .line 1758
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1759
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1764
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x32

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1751
    return-void

    #@2a
    .line 1762
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
    .line 1767
    :catchall_0
    move-exception v2

    #@30
    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1767
    throw v2
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 5
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IBatteryStats"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1795
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1796
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x34

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1788
    return-void

    #@2a
    .line 1799
    :catchall_0
    move-exception v2

    #@2b
    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1799
    throw v2
.end method

.method public setBatteryState(IIIIII)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IBatteryStats"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2149
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2150
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 2151
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 2152
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 2153
    iget-object v2, p0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x48

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 2154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 2157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 2141
    return-void

    #@32
    .line 2156
    :catchall_0
    move-exception v2

    #@33
    .line 2157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 2156
    throw v2
.end method
