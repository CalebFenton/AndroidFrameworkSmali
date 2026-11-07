.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    iput p2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->$r8$lambda$4tMjIMra5mfFUenZCSAjLmYHGUA(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    return-void
.end method
