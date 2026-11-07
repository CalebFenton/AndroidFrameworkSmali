.class Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;
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

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I

    .line 158
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 165
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 224
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 225
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 228
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 230
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 233
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    goto :goto_3e

    .line 233
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    throw v2

    .line 237
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 223
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

    .line 207
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 208
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 209
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 211
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 213
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 216
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    goto :goto_38

    .line 216
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    throw v2

    .line 220
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist isInEmergencySession()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 193
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_32

    .line 200
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return v3

    .line 194
    .end local v3    # "_result":Z
    .restart local v2    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method isInEmergencySession is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 200
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v2
.end method

.method public blacklist nfwNotifyCb(Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;)V
    .registers 7
    .param p1, "notification"    # Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    iget-object v3, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 175
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_31

    .line 181
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return-void

    .line 176
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method nfwNotifyCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    .end local p1    # "notification":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 181
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    .restart local p1    # "notification":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v2
.end method
