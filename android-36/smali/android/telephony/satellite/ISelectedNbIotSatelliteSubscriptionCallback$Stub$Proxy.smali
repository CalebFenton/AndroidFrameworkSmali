.class Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISelectedNbIotSatelliteSubscriptionCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;
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

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "android.telephony.satellite.ISelectedNbIotSatelliteSubscriptionCallback"

    return-object v0
.end method

.method public blacklist onSelectedNbIotSatelliteSubscriptionChanged(I)V
    .registers 6
    .param p1, "selectedSubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.satellite.ISelectedNbIotSatelliteSubscriptionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v1, p0, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v1
.end method
