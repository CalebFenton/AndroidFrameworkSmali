.class public interface abstract Landroid/security/attestationverification/IAttestationVerificationManagerService;
.super Ljava/lang/Object;
.source "IAttestationVerificationManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;,
        Landroid/security/attestationverification/IAttestationVerificationManagerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.attestationverification.IAttestationVerificationManagerService"


# virtual methods
.method public abstract blacklist verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
