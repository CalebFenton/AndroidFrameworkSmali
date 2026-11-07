.class public interface abstract Landroid/security/attestationverification/IAttestationVerificationService;
.super Ljava/lang/Object;
.source "IAttestationVerificationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/IAttestationVerificationService$Stub;,
        Landroid/security/attestationverification/IAttestationVerificationService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.attestationverification.IAttestationVerificationService"


# virtual methods
.method public abstract blacklist onVerifyAttestation(Landroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
