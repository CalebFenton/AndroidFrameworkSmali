.class Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvRemoteProvider.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteProvider$Stub;
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "android.media.tv.ITvRemoteProvider"

    #@3
    return-object v0
.end method

.method public onInputBridgeConnected(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvRemoteProvider"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 100
    iget-object v1, p0, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 94
    return-void

    #@19
    .line 102
    :catchall_0
    move-exception v1

    #@1a
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 102
    throw v1
.end method

.method public setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V
    .locals 5
    .param p1, "tvServiceInput"    # Landroid/media/tv/ITvRemoteServiceInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.tv.ITvRemoteProvider"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 87
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/media/tv/ITvRemoteServiceInput;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 88
    iget-object v1, p0, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 82
    return-void

    #@20
    .line 90
    :catchall_0
    move-exception v1

    #@21
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 90
    throw v1
.end method
