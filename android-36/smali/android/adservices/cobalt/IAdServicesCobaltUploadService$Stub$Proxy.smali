.class Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdServicesCobaltUploadService.java"

# interfaces
.implements Landroid/adservices/cobalt/IAdServicesCobaltUploadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub;
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

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "android.adservices.cobalt.IAdServicesCobaltUploadService"

    return-object v0
.end method

.method public blacklist uploadEncryptedCobaltEnvelope(Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;)V
    .registers 6
    .param p1, "params"    # Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.adservices.cobalt.IAdServicesCobaltUploadService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v1, p0, Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw v1
.end method
