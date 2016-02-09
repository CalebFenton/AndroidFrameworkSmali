.class Landroid/media/IAudioRoutesObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioRoutesObserver.java"

# interfaces
.implements Landroid/media/IAudioRoutesObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioRoutesObserver$Stub;
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
    iput-object p1, p0, Landroid/media/IAudioRoutesObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Landroid/media/IAudioRoutesObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 5
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;
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
    const-string/jumbo v1, "android.media.IAudioRoutesObserver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 85
    if-eqz p1, :cond_0

    #@c
    .line 86
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 87
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 92
    :goto_0
    iget-object v1, p0, Landroid/media/IAudioRoutesObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 80
    return-void

    #@20
    .line 90
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 94
    :catchall_0
    move-exception v1

    #@26
    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 94
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "android.media.IAudioRoutesObserver"

    #@3
    return-object v0
.end method
