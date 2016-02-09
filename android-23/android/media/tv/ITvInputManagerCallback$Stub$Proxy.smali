.class Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManagerCallback$Stub;
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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    const-string/jumbo v0, "android.media.tv.ITvInputManagerCallback"

    #@3
    return-object v0
.end method

.method public onInputAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputManagerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 120
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 114
    return-void

    #@19
    .line 122
    :catchall_0
    move-exception v1

    #@1a
    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 122
    throw v1
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputManagerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 132
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 126
    return-void

    #@19
    .line 134
    :catchall_0
    move-exception v1

    #@1a
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 134
    throw v1
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputManagerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 108
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 101
    return-void

    #@1c
    .line 110
    :catchall_0
    move-exception v1

    #@1d
    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 110
    throw v1
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputManagerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 144
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 138
    return-void

    #@19
    .line 146
    :catchall_0
    move-exception v1

    #@1a
    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 146
    throw v1
.end method
