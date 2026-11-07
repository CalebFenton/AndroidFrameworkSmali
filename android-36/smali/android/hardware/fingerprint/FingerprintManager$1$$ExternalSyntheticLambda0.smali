.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iput p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$1;->lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method
