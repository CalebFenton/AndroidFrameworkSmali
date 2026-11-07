.class public final synthetic Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    check-cast p1, Landroid/security/attestationverification/IVerificationResult;

    invoke-static {v0, v1, p1}, Landroid/security/attestationverification/AttestationVerificationManager;->lambda$verifyAttestation$1(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V

    return-void
.end method
