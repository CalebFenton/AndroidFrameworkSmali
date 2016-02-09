.class Landroid/location/IGpsStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGpsStatusListener.java"

# interfaces
.implements Landroid/location/IGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusListener$Stub;
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
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    iput-object p1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 106
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "android.location.IGpsStatusListener"

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
    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 146
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 140
    return-void

    #@19
    .line 148
    :catchall_0
    move-exception v1

    #@1a
    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 148
    throw v1
.end method

.method public onGpsStarted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 123
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 118
    return-void

    #@16
    .line 125
    :catchall_0
    move-exception v1

    #@17
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 125
    throw v1
.end method

.method public onGpsStopped()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 134
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 129
    return-void

    #@16
    .line 136
    :catchall_0
    move-exception v1

    #@17
    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 136
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
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 178
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 171
    return-void

    #@1c
    .line 180
    :catchall_0
    move-exception v1

    #@1d
    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 180
    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .locals 5
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    .line 159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@13
    .line 160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@16
    .line 161
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@19
    .line 162
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 163
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 164
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 165
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v2, 0x4

    #@25
    const/4 v3, 0x0

    #@26
    const/4 v4, 0x1

    #@27
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 152
    return-void

    #@2e
    .line 167
    :catchall_0
    move-exception v1

    #@2f
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 167
    throw v1
.end method
