.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;IIZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    iput p2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->$r8$lambda$YpItk3s_PStDuSsRiTUZyrtXf-Y(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;IIZ)V

    return-void
.end method
