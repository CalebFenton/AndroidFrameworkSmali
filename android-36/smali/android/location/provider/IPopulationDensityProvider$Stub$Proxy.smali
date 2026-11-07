.class Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPopulationDensityProvider.java"

# interfaces
.implements Landroid/location/provider/IPopulationDensityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/IPopulationDensityProvider$Stub;
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
    .registers 12
    .param p1, "latitudeDegrees"    # D
    .param p3, "longitudeDegrees"    # D
    .param p5, "numAdditionalCells"    # I
    .param p6, "callback"    # Landroid/location/provider/IS2CellIdsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.location.provider.IPopulationDensityProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 177
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 178
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 180
    iget-object v1, p0, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v1
.end method

.method public blacklist getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/location/provider/IS2LevelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.location.provider.IPopulationDensityProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 159
    iget-object v1, p0, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 147
    const-string v0, "android.location.provider.IPopulationDensityProvider"

    return-object v0
.end method
