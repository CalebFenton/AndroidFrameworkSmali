.class Landroid/media/tv/extension/tune/IMuxTune$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMuxTune.java"

# interfaces
.implements Landroid/media/tv/extension/tune/IMuxTune;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/tune/IMuxTune$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/media/tv/extension/tune/IMuxTune$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/media/tv/extension/tune/IMuxTune$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createSession(ILjava/lang/String;)Landroid/media/tv/extension/tune/IMuxTuneSession;
    .registers 8
    .param p1, "broadcastType"    # I
    .param p2, "clientToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTune$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.tv.extension.tune.IMuxTune"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Landroid/media/tv/extension/tune/IMuxTune$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 129
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/tune/IMuxTuneSession;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 133
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/media/tv/extension/tune/IMuxTuneSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    nop

    .line 136
    return-object v3

    .line 133
    .end local v3    # "_result":Landroid/media/tv/extension/tune/IMuxTuneSession;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "android.media.tv.extension.tune.IMuxTune"

    return-object v0
.end method
