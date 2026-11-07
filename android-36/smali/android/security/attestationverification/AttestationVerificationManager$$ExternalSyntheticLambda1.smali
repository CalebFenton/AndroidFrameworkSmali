.class public final synthetic Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Landroid/security/attestationverification/IVerificationResult;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;->f$1:Landroid/security/attestationverification/IVerificationResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;->f$1:Landroid/security/attestationverification/IVerificationResult;

    invoke-static {v0, v1}, Landroid/security/attestationverification/AttestationVerificationManager;->lambda$verifyAttestation$0(Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V

    return-void
.end method
