.class Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActiveOperationalDatasetReceiver.java"

# interfaces
.implements Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub;
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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 129
    const-string v0, "android.net.connectivity.android.net.thread.IActiveOperationalDatasetReceiver"

    return-object v0
.end method

.method public blacklist onError(ILjava/lang/String;)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 147
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.thread.IActiveOperationalDatasetReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    throw v1
.end method

.method public blacklist onSuccess(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 6
    .param p1, "dataset"    # Landroid/net/thread/ActiveOperationalDataset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.thread.IActiveOperationalDatasetReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v1, p0, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    nop

    .line 142
    return-void

    .line 140
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw v1
.end method
