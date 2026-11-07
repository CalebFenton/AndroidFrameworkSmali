.class Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaCognitionService.java"

# interfaces
.implements Landroid/provider/mediacognitionutils/IMediaCognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub;
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

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 120
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 127
    const-string v0, "android.provider.mediacognitionutils.IMediaCognitionService"

    return-object v0
.end method

.method public blacklist getProcessingVersions(Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;)V
    .registers 7
    .param p1, "callback"    # Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.provider.mediacognitionutils.IMediaCognitionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 148
    iget-object v1, p0, Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw v1
.end method

.method public blacklist processMedia(Ljava/util/List;Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;)V
    .registers 7
    .param p2, "callback"    # Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingRequest;",
            ">;",
            "Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MediaCognitionProcessingRequest;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.provider.mediacognitionutils.IMediaCognitionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/mediacognitionutils/IMediaCognitionService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 136
    iget-object v1, p0, Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw v1
.end method
