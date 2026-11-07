.class public final synthetic Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;

.field public final synthetic blacklist f$1:Landroid/os/vibrator/IVibrationSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;Landroid/os/vibrator/IVibrationSession;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;

    iput-object p2, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/os/vibrator/IVibrationSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;

    iget-object v1, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/os/vibrator/IVibrationSession;

    invoke-static {v0, v1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->$r8$lambda$uZeaOixgTRaC3sq1ctGxBAhJf0g(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;Landroid/os/vibrator/IVibrationSession;)V

    return-void
.end method
