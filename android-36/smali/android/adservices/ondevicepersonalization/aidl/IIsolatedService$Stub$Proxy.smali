.class Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIsolatedService.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub;
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
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IIsolatedService"

    return-object v0
.end method

.method public blacklist onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .registers 9
    .param p1, "operationCode"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IIsolatedService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 128
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 129
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 132
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    nop

    .line 135
    return-void

    .line 132
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw v2
.end method
