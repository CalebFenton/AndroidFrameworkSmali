.class Landroid/service/media/IMediaBrowserService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService$Stub;
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
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 116
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.media.IMediaBrowserService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 166
    if-eqz p2, :cond_0

    #@10
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 167
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x3

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 160
    return-void

    #@23
    .line 169
    :catchall_0
    move-exception v1

    #@24
    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 169
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.media.IMediaBrowserService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 134
    if-eqz p2, :cond_1

    #@10
    .line 135
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 136
    const/4 v2, 0x0

    #@15
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 141
    :goto_0
    if-eqz p3, :cond_0

    #@1a
    invoke-interface {p3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 142
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x1

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 128
    return-void

    #@2d
    .line 139
    :cond_1
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 144
    :catchall_0
    move-exception v1

    #@33
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 144
    throw v1
.end method

.method public disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.media.IMediaBrowserService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 153
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 154
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 148
    return-void

    #@20
    .line 156
    :catchall_0
    move-exception v1

    #@21
    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 156
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    const-string/jumbo v0, "android.service.media.IMediaBrowserService"

    #@3
    return-object v0
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 190
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.media.IMediaBrowserService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 192
    if-eqz p2, :cond_0

    #@f
    .line 193
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 194
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 199
    :goto_0
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x5

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 186
    return-void

    #@23
    .line 197
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 201
    :catchall_0
    move-exception v1

    #@29
    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 201
    throw v1
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.media.IMediaBrowserService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 179
    if-eqz p2, :cond_0

    #@10
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 180
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x4

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 173
    return-void

    #@23
    .line 182
    :catchall_0
    move-exception v1

    #@24
    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 182
    throw v1
.end method
