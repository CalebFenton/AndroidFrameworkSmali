.class Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUdfpsOverlayControllerCallback.java"

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
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

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayControllerCallback"

    return-object v0
.end method

.method public blacklist onUserCanceled()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.fingerprint.IUdfpsOverlayControllerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_19

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw v1
.end method
