.class Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUwbRangingCallbacks.java"

# interfaces
.implements Landroid/uwb/IUwbRangingCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbRangingCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 870
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 873
    iget-object v0, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 877
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    return-object v0
.end method

.method public blacklist onControleeAddFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1122
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1126
    nop

    .line 1127
    return-void

    .line 1125
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1126
    throw v1
.end method

.method public blacklist onControleeAdded(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1098
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1100
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1101
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1105
    nop

    .line 1106
    return-void

    .line 1104
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1105
    throw v1
.end method

.method public blacklist onControleeRemoveFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1159
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1162
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    nop

    .line 1167
    return-void

    .line 1165
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    throw v1
.end method

.method public blacklist onControleeRemoved(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1139
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1140
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1141
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1144
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw v1
.end method

.method public blacklist onDataReceiveFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1373
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1374
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1375
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1376
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1378
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    nop

    .line 1383
    return-void

    .line 1381
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    throw v1
.end method

.method public blacklist onDataReceived(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 10
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1350
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1351
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1352
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1353
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1354
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1355
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    nop

    .line 1360
    return-void

    .line 1358
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    throw v1
.end method

.method public blacklist onDataSendFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1282
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1284
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1287
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1291
    nop

    .line 1292
    return-void

    .line 1290
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1291
    throw v1
.end method

.method public blacklist onDataSent(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1261
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1262
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1263
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    nop

    .line 1268
    return-void

    .line 1266
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    throw v1
.end method

.method public blacklist onDataTransferPhaseConfigFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1325
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1326
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1327
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1329
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    nop

    .line 1334
    return-void

    .line 1332
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    throw v1
.end method

.method public blacklist onDataTransferPhaseConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1305
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1306
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1307
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1308
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1312
    nop

    .line 1313
    return-void

    .line 1311
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1312
    throw v1
.end method

.method public blacklist onHybridSessionControleeConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1464
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1465
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1468
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1472
    nop

    .line 1473
    return-void

    .line 1471
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1472
    throw v1
.end method

.method public blacklist onHybridSessionControleeConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1442
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1443
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1444
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1445
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1449
    nop

    .line 1450
    return-void

    .line 1448
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1449
    throw v1
.end method

.method public blacklist onHybridSessionControllerConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1419
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1420
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1423
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    nop

    .line 1428
    return-void

    .line 1426
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    throw v1
.end method

.method public blacklist onHybridSessionControllerConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1395
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1397
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1398
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1399
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1400
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1404
    nop

    .line 1405
    return-void

    .line 1403
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1404
    throw v1
.end method

.method public blacklist onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1055
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1057
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1059
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    nop

    .line 1064
    return-void

    .line 1062
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw v1
.end method

.method public blacklist onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 907
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 911
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 915
    nop

    .line 916
    return-void

    .line 914
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 915
    throw v1
.end method

.method public blacklist onRangingOpened(Landroid/uwb/SessionHandle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 888
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 890
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    nop

    .line 895
    return-void

    .line 893
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    throw v1
.end method

.method public blacklist onRangingPauseFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1198
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1199
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1202
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1206
    nop

    .line 1207
    return-void

    .line 1205
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1206
    throw v1
.end method

.method public blacklist onRangingPaused(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1178
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1179
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1180
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1181
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1184
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    throw v1
.end method

.method public blacklist onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 992
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 994
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 996
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    nop

    .line 1001
    return-void

    .line 999
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    throw v1
.end method

.method public blacklist onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 974
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 975
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    nop

    .line 980
    return-void

    .line 978
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw v1
.end method

.method public blacklist onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "result"    # Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1079
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1080
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1081
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1082
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    nop

    .line 1087
    return-void

    .line 1085
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    throw v1
.end method

.method public blacklist onRangingResumeFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1237
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1241
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    nop

    .line 1246
    return-void

    .line 1244
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    throw v1
.end method

.method public blacklist onRangingResumed(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1217
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1218
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1219
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1220
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    nop

    .line 1225
    return-void

    .line 1223
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    throw v1
.end method

.method public blacklist onRangingRoundsUpdateDtTagStatus(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1502
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1504
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1506
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1507
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    nop

    .line 1512
    return-void

    .line 1510
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    throw v1
.end method

.method public blacklist onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 950
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 953
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 954
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 956
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    nop

    .line 961
    return-void

    .line 959
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    throw v1
.end method

.method public blacklist onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 932
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 934
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 935
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    nop

    .line 940
    return-void

    .line 938
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    throw v1
.end method

.method public blacklist onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1034
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1038
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1042
    nop

    .line 1043
    return-void

    .line 1041
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1042
    throw v1
.end method

.method public blacklist onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1014
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1015
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1017
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1021
    nop

    .line 1022
    return-void

    .line 1020
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1021
    throw v1
.end method

.method public blacklist onServiceConnected(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1489
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1492
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1493
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1494
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    nop

    .line 1499
    return-void

    .line 1497
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    throw v1
.end method

.method public blacklist onServiceDiscovered(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1476
    invoke-virtual {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1478
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1479
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1480
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1481
    iget-object v1, p0, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    nop

    .line 1486
    return-void

    .line 1484
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    throw v1
.end method
