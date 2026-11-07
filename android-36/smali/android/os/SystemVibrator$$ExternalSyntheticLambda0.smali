.class public final synthetic Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/vibrator/VendorVibrationSession$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;->f$0:Landroid/os/vibrator/VendorVibrationSession$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;->f$0:Landroid/os/vibrator/VendorVibrationSession$Callback;

    invoke-static {v0}, Landroid/os/SystemVibrator;->lambda$startVendorSession$0(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    return-void
.end method
