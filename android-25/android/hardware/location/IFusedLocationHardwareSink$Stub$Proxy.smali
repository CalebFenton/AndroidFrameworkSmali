.class Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFusedLocationHardwareSink.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardwareSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "android.hardware.location.IFusedLocationHardwareSink"

    #@3
    return-object v0
.end method

.method public onCapabilities(I)V
    .locals 5
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardwareSink"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 156
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 149
    return-void

    #@22
    .line 159
    :catchall_0
    move-exception v2

    #@23
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 159
    throw v2
.end method

.method public onDiagnosticDataAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardwareSink"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 137
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 130
    return-void

    #@22
    .line 140
    :catchall_0
    move-exception v2

    #@23
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 140
    throw v2
.end method

.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 5
    .param p1, "locations"    # [Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardwareSink"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 116
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 117
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/4 v3, 0x1

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 110
    return-void

    #@23
    .line 120
    :catchall_0
    move-exception v2

    #@24
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 120
    throw v2
.end method

.method public onStatusChanged(I)V
    .locals 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardwareSink"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 175
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 168
    return-void

    #@22
    .line 178
    :catchall_0
    move-exception v2

    #@23
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 178
    throw v2
.end method
