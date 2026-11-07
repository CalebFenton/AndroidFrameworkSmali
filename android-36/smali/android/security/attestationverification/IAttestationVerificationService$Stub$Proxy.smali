.class Landroid/security/attestationverification/IAttestationVerificationService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAttestationVerificationService.java"

# interfaces
.implements Landroid/security/attestationverification/IAttestationVerificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/IAttestationVerificationService$Stub;
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
    iput-object p1, p0, Landroid/security/attestationverification/IAttestationVerificationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/security/attestationverification/IAttestationVerificationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "android.security.attestationverification.IAttestationVerificationService"

    return-object v0
.end method

.method public blacklist onVerifyAttestation(Landroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "requirements"    # Landroid/os/Bundle;
    .param p2, "attestation"    # [B
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/security/attestationverification/IAttestationVerificationService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 126
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.security.attestationverification.IAttestationVerificationService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    iget-object v1, p0, Landroid/security/attestationverification/IAttestationVerificationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw v1
.end method
