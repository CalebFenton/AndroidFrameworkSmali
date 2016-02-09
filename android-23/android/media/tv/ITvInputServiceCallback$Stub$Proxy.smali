.class Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputServiceCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputServiceCallback$Stub;
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
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 94
    return-void
.end method


# virtual methods
.method public addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputServiceCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 112
    if-eqz p2, :cond_0

    #@f
    .line 113
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 114
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/media/tv/TvInputInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 119
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x1

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 106
    return-void

    #@23
    .line 117
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
    .line 121
    :catchall_0
    move-exception v1

    #@29
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 121
    throw v1
.end method

.method public addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputServiceCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 131
    if-eqz p2, :cond_0

    #@f
    .line 132
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 133
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/media/tv/TvInputInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 138
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x2

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 125
    return-void

    #@23
    .line 136
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
    .line 140
    :catchall_0
    move-exception v1

    #@29
    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 140
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "android.media.tv.ITvInputServiceCallback"

    #@3
    return-object v0
.end method

.method public removeTvInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputServiceCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 150
    iget-object v1, p0, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 144
    return-void

    #@19
    .line 152
    :catchall_0
    move-exception v1

    #@1a
    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 152
    throw v1
.end method
