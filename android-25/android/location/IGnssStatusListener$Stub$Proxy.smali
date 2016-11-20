.class Landroid/location/IGnssStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssStatusListener.java"

# interfaces
.implements Landroid/location/IGnssStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGnssStatusListener$Stub;
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
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 100
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@3
    return-object v0
.end method

.method public onFirstFix(I)V
    .locals 5
    .param p1, "ttff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 140
    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x3

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 134
    return-void

    #@19
    .line 142
    :catchall_0
    move-exception v1

    #@1a
    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 142
    throw v1
.end method

.method public onGnssStarted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 117
    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 112
    return-void

    #@16
    .line 119
    :catchall_0
    move-exception v1

    #@17
    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 119
    throw v1
.end method

.method public onGnssStopped()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 128
    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 123
    return-void

    #@16
    .line 130
    :catchall_0
    move-exception v1

    #@17
    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 130
    throw v1
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 169
    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x5

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 162
    return-void

    #@1c
    .line 171
    :catchall_0
    move-exception v1

    #@1d
    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 171
    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[F)V
    .locals 5
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGnssStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    .line 153
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@13
    .line 154
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@16
    .line 155
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@19
    .line 156
    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v2, 0x4

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 146
    return-void

    #@25
    .line 158
    :catchall_0
    move-exception v1

    #@26
    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 158
    throw v1
.end method
