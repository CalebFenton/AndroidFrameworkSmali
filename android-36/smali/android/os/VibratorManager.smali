.class public abstract Landroid/os/VibratorManager;
.super Ljava/lang/Object;
.source "VibratorManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibratorManager"


# instance fields
.field protected final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public abstract whitelist getDefaultVibrator()Landroid/os/Vibrator;
.end method

.method public abstract whitelist getVibrator(I)Landroid/os/Vibrator;
.end method

.method public abstract whitelist getVibratorIds()[I
.end method

.method public blacklist hasCapabilities(I)Z
    .registers 3
    .param p1, "capabilities"    # I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performHapticFeedback(ILjava/lang/String;II)V
    .registers 7
    .param p1, "constant"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "privFlags"    # I

    .line 165
    const-string v0, "VibratorManager"

    const-string/jumbo v1, "performHapticFeedback is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .registers 9
    .param p1, "constant"    # I
    .param p2, "inputDeviceId"    # I
    .param p3, "inputSource"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "privFlags"    # I

    .line 186
    const-string v0, "VibratorManager"

    const-string/jumbo v1, "performHapticFeedbackForInputDevice is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 98
    const-string v0, "VibratorManager"

    const-string v1, "Always-on effects aren\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startVendorSession([ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 9
    .param p1, "vibratorIds"    # [I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/os/vibrator/VendorVibrationSession$Callback;

    .line 228
    const-string v0, "VibratorManager"

    const-string/jumbo v1, "startVendorSession is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public final whitelist vibrate(Landroid/os/CombinedVibration;)V
    .registers 3
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/VibratorManager;->vibrate(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)V

    .line 117
    return-void
.end method

.method public final whitelist vibrate(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)V
    .registers 9
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "attributes"    # Landroid/os/VibrationAttributes;

    .line 139
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "effect":Landroid/os/CombinedVibration;
    .end local p2    # "attributes":Landroid/os/VibrationAttributes;
    .local v3, "effect":Landroid/os/CombinedVibration;
    .local v5, "attributes":Landroid/os/VibrationAttributes;
    invoke-virtual/range {v0 .. v5}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 140
    return-void
.end method
