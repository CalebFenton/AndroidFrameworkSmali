.class Landroid/federatedcompute/aidl/IResultHandlingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResultHandlingService.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IResultHandlingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IResultHandlingService$Stub;
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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/federatedcompute/aidl/IResultHandlingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/federatedcompute/aidl/IResultHandlingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "android.federatedcompute.aidl.IResultHandlingService"

    return-object v0
.end method

.method public blacklist handleResult(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .registers 7
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/federatedcompute/aidl/IResultHandlingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.federatedcompute.aidl.IResultHandlingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 130
    iget-object v1, p0, Landroid/federatedcompute/aidl/IResultHandlingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw v1
.end method
