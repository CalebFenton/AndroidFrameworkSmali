.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

.field public final synthetic blacklist f$1:Landroid/hardware/fingerprint/Fingerprint;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    iput p3, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->$r8$lambda$J_QZ_Q514lPGzaiB7HXJ5gpc2mM(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method
