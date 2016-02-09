.class Landroid/location/IGpsStatusProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGpsStatusProvider.java"

# interfaces
.implements Landroid/location/IGpsStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusProvider$Stub;
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
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroid/location/IGpsStatusProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 74
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 89
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 91
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGpsStatusProvider"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 92
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 93
    iget-object v2, p0, Landroid/location/IGpsStatusProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 86
    return-void

    #@29
    .line 96
    :catchall_0
    move-exception v2

    #@2a
    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 96
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/location/IGpsStatusProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    const-string/jumbo v0, "android.location.IGpsStatusProvider"

    #@3
    return-object v0
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGpsStatusProvider"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 107
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 108
    iget-object v2, p0, Landroid/location/IGpsStatusProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 101
    return-void

    #@29
    .line 111
    :catchall_0
    move-exception v2

    #@2a
    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 111
    throw v2
.end method
