.class Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputHardwareCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardwareCallback$Stub;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 68
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "android.media.tv.ITvInputHardwareCallback"

    #@3
    return-object v0
.end method

.method public onReleased()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 84
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputHardwareCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 85
    iget-object v1, p0, Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 80
    return-void

    #@16
    .line 87
    :catchall_0
    move-exception v1

    #@17
    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 87
    throw v1
.end method

.method public onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .locals 5
    .param p1, "configs"    # [Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputHardwareCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 96
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@e
    .line 97
    iget-object v1, p0, Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v2, 0x2

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 91
    return-void

    #@1a
    .line 99
    :catchall_0
    move-exception v1

    #@1b
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 99
    throw v1
.end method
