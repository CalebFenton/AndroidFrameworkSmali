.class Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "INtnSignalStrengthCallback.java"

# interfaces
.implements Landroid/telephony/satellite/INtnSignalStrengthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;
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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "android.telephony.satellite.INtnSignalStrengthCallback"

    return-object v0
.end method

.method public blacklist onNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 6
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.satellite.INtnSignalStrengthCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    iget-object v1, p0, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    nop

    .line 136
    return-void

    .line 134
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw v1
.end method
