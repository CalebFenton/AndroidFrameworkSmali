.class Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioSimResponse.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I

    .line 1143
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1140
    iput-object p1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1141
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 6
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1163
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_27

    .line 1166
    .local v1, "_status":Z
    if-eqz v1, :cond_1f

    .line 1171
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    nop

    .line 1173
    return-void

    .line 1167
    .restart local v1    # "_status":Z
    :cond_1f
    :try_start_1f
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeRequest is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 1171
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    throw v1
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1190
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1191
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1193
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1194
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1199
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1200
    nop

    .line 1201
    return-void

    .line 1195
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method areUiccApplicationsEnabledResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "enabled":Z
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1199
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "enabled":Z
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1200
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1146
    iget-object v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1222
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1225
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1228
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1233
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1229
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method changeIccPin2ForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1233
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    throw v1
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1255
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1257
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1258
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1261
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1266
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    nop

    .line 1268
    return-void

    .line 1262
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method changeIccPinForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1266
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    throw v1
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1285
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1287
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1288
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1293
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1294
    nop

    .line 1295
    return-void

    .line 1289
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method enableUiccApplicationsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1293
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1294
    throw v1
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V
    .registers 9
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "carriers"    # Landroid/hardware/radio/sim/CarrierRestrictions;
    .param p3, "multiSimPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1311
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1313
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1314
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 1316
    .local v1, "_status":Z
    if-eqz v1, :cond_27

    .line 1321
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    nop

    .line 1323
    return-void

    .line 1317
    .restart local v1    # "_status":Z
    :cond_27
    :try_start_27
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getAllowedCarriersResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "carriers":Landroid/hardware/radio/sim/CarrierRestrictions;
    .end local p3    # "multiSimPolicy":I
    throw v2
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 1321
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "carriers":Landroid/hardware/radio/sim/CarrierRestrictions;
    .restart local p3    # "multiSimPolicy":I
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    throw v1
.end method

.method public blacklist getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "hSid"    # Ljava/lang/String;
    .param p4, "hNid"    # Ljava/lang/String;
    .param p5, "min"    # Ljava/lang/String;
    .param p6, "prl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1361
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_38

    .line 1362
    .local v1, "_status":Z
    if-eqz v1, :cond_30

    .line 1367
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1368
    nop

    .line 1369
    return-void

    .line 1363
    .restart local v1    # "_status":Z
    :cond_30
    :try_start_30
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCdmaSubscriptionResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "mdn":Ljava/lang/String;
    .end local p3    # "hSid":Ljava/lang/String;
    .end local p4    # "hNid":Ljava/lang/String;
    .end local p5    # "min":Ljava/lang/String;
    .end local p6    # "prl":Ljava/lang/String;
    throw v2
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    .line 1367
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "mdn":Ljava/lang/String;
    .restart local p3    # "hSid":Ljava/lang/String;
    .restart local p4    # "hNid":Ljava/lang/String;
    .restart local p5    # "min":Ljava/lang/String;
    .restart local p6    # "prl":Ljava/lang/String;
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1368
    throw v1
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1390
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1391
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1394
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1399
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1395
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCdmaSubscriptionSourceResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "source":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1399
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "source":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    throw v1
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1428
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1429
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1432
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1437
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    nop

    .line 1439
    return-void

    .line 1433
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getFacilityLockForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "response":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1437
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "response":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    throw v1
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/sim/CardStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1454
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1456
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1457
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1458
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1459
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1460
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1465
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    nop

    .line 1467
    return-void

    .line 1461
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getIccCardStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "cardStatus":Landroid/hardware/radio/sim/CardStatus;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1465
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "cardStatus":Landroid/hardware/radio/sim/CardStatus;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    throw v1
.end method

.method public blacklist getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1488
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1489
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1491
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1492
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1497
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    nop

    .line 1499
    return-void

    .line 1493
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsiForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "imsi":Ljava/lang/String;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1497
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "imsi":Ljava/lang/String;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1150
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2318
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2319
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2320
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 2322
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    iget-object v2, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 2327
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    goto :goto_3e

    .line 2327
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw v2

    .line 2331
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 2317
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2301
    iget v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 2302
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2303
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2305
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2306
    iget-object v2, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2307
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 2310
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    goto :goto_38

    .line 2310
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    throw v2

    .line 2314
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "capacity"    # Landroid/hardware/radio/sim/PhonebookCapacity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1519
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1520
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1521
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1522
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1527
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    nop

    .line 1529
    return-void

    .line 1523
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimPhonebookCapacityResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "capacity":Landroid/hardware/radio/sim/PhonebookCapacity;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1527
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "capacity":Landroid/hardware/radio/sim/PhonebookCapacity;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    throw v1
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1545
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1547
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1548
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1549
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1550
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1555
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1556
    nop

    .line 1557
    return-void

    .line 1551
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimPhonebookRecordsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1555
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1556
    throw v1
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1577
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1579
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1581
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1582
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1587
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    nop

    .line 1589
    return-void

    .line 1583
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccCloseLogicalChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1587
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    throw v1
.end method

.method public blacklist iccCloseLogicalChannelWithSessionInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2286
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2289
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2290
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2291
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 2296
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2297
    nop

    .line 2298
    return-void

    .line 2292
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccCloseLogicalChannelWithSessionInfoResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 2296
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2297
    throw v1
.end method

.method public blacklist iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1612
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1613
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1614
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1615
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1616
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1621
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    nop

    .line 1623
    return-void

    .line 1617
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccIoForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1621
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    throw v1
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V
    .registers 9
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "channelId"    # I
    .param p3, "selectResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1649
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1650
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1653
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1654
    .local v1, "_status":Z
    if-eqz v1, :cond_28

    .line 1659
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    nop

    .line 1661
    return-void

    .line 1655
    .restart local v1    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccOpenLogicalChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "channelId":I
    .end local p3    # "selectResponse":[B
    throw v2
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 1659
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "channelId":I
    .restart local p3    # "selectResponse":[B
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    throw v1
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1679
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1683
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1684
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1685
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1690
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    nop

    .line 1692
    return-void

    .line 1686
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccTransmitApduBasicChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1690
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    throw v1
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1709
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1711
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1712
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1713
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1714
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1715
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1720
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    nop

    .line 1722
    return-void

    .line 1716
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccTransmitApduLogicalChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1720
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw v1
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1742
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1743
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1748
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    nop

    .line 1750
    return-void

    .line 1744
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method reportStkServiceIsRunningResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1748
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    throw v1
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1771
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1773
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1774
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1775
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1776
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1777
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1782
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1783
    nop

    .line 1784
    return-void

    .line 1778
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method requestIccSimAuthenticationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1782
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1783
    throw v1
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1807
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1809
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1812
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1813
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1818
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    nop

    .line 1820
    return-void

    .line 1814
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendEnvelopeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "commandResponse":Ljava/lang/String;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1818
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "commandResponse":Ljava/lang/String;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    throw v1
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1844
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1845
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1846
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1851
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1852
    nop

    .line 1853
    return-void

    .line 1847
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendEnvelopeWithStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1851
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1852
    throw v1
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1873
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1875
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1876
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1877
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1878
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1883
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1884
    nop

    .line 1885
    return-void

    .line 1879
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendTerminalResponseToSimResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1883
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1884
    throw v1
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1900
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1902
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1903
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1908
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    nop

    .line 1910
    return-void

    .line 1904
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setAllowedCarriersResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1908
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    throw v1
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1927
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1928
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1929
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1930
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1935
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1936
    nop

    .line 1937
    return-void

    .line 1931
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCarrierInfoForImsiEncryptionResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1935
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1936
    throw v1
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1955
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1957
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1959
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 1960
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 1965
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    nop

    .line 1967
    return-void

    .line 1961
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCdmaSubscriptionSourceResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 1965
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    throw v1
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1993
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1995
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1996
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1999
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 2004
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2005
    nop

    .line 2006
    return-void

    .line 2000
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setFacilityLockForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "retry":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2004
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "retry":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2005
    throw v1
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2020
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2022
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2023
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2024
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2025
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 2030
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2031
    nop

    .line 2032
    return-void

    .line 2026
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSimCardPowerResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 2030
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2031
    throw v1
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2054
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2056
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2057
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2058
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2059
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 2064
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2065
    nop

    .line 2066
    return-void

    .line 2060
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setUiccSubscriptionResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 2064
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2065
    throw v1
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2089
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2090
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2091
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2093
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 2098
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    nop

    .line 2100
    return-void

    .line 2094
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPin2ForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2098
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    throw v1
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2120
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2123
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2126
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 2131
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    nop

    .line 2133
    return-void

    .line 2127
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPinForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2131
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    throw v1
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2153
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2156
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2159
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 2164
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2165
    nop

    .line 2166
    return-void

    .line 2160
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPuk2ForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2164
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2165
    throw v1
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2186
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2188
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2189
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2191
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2192
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 2197
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    nop

    .line 2199
    return-void

    .line 2193
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPukForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2197
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    throw v1
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .registers 9
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "persoType"    # I
    .param p3, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2222
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2229
    .local v1, "_status":Z
    if-eqz v1, :cond_28

    .line 2234
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    nop

    .line 2236
    return-void

    .line 2230
    .restart local v1    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplySimDepersonalizationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "persoType":I
    .end local p3    # "remainingRetries":I
    throw v2
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2234
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "persoType":I
    .restart local p3    # "remainingRetries":I
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    throw v1
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "updatedRecordIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2257
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2259
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2260
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2263
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 2268
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    nop

    .line 2270
    return-void

    .line 2264
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method updateSimPhonebookRecordsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "updatedRecordIndex":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2268
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "updatedRecordIndex":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    throw v1
.end method
