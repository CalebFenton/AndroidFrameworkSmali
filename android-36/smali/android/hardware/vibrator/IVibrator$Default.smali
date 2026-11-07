.class public Landroid/hardware/vibrator/IVibrator$Default;
.super Ljava/lang/Object;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist alwaysOnDisable(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist alwaysOnEnable(IIB)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "effect"    # I
    .param p3, "strength"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist compose([Landroid/hardware/vibrator/CompositeEffect;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 3
    .param p1, "composite"    # [Landroid/hardware/vibrator/CompositeEffect;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist composePwle([Landroid/hardware/vibrator/PrimitivePwle;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 3
    .param p1, "composite"    # [Landroid/hardware/vibrator/PrimitivePwle;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist composePwleV2(Landroid/hardware/vibrator/CompositePwleV2;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 3
    .param p1, "composite"    # Landroid/hardware/vibrator/CompositePwleV2;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist getBandwidthAmplitudeMap()[F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCapabilities()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCompositionDelayMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCompositionSizeMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrequencyMinimum()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrequencyResolution()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrequencyToOutputAccelerationMap()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPrimitiveDuration(I)I
    .registers 3
    .param p1, "primitive"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPwleCompositionSizeMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPwlePrimitiveDurationMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPwleV2CompositionSizeMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPwleV2PrimitiveDurationMaxMillis()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPwleV2PrimitiveDurationMinMillis()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getQFactor()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getResonantFrequency()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedAlwaysOnEffects()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedBraking()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedEffects()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedPrimitives()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist off()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist on(ILandroid/hardware/vibrator/IVibratorCallback;)V
    .registers 3
    .param p1, "timeoutMs"    # I
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist perform(IBLandroid/hardware/vibrator/IVibratorCallback;)I
    .registers 5
    .param p1, "effect"    # I
    .param p2, "strength"    # B
    .param p3, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performVendorEffect(Landroid/hardware/vibrator/VendorEffect;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 3
    .param p1, "vendorEffect"    # Landroid/hardware/vibrator/VendorEffect;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist setAmplitude(F)V
    .registers 2
    .param p1, "amplitude"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist setExternalControl(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
