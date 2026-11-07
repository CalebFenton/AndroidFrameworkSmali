.class public abstract Landroid/hardware/radio/RadioTuner$Callback;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAntennaState(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .line 738
    return-void
.end method

.method public whitelist onBackgroundScanAvailabilityChange(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z

    .line 759
    return-void
.end method

.method public whitelist onBackgroundScanComplete()V
    .registers 1

    .line 764
    return-void
.end method

.method public whitelist onConfigFlagUpdated(IZ)V
    .registers 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 783
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    return-void
.end method

.method public whitelist onControlChanged(Z)V
    .registers 2
    .param p1, "control"    # Z

    .line 750
    return-void
.end method

.method public whitelist onEmergencyAnnouncement(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 734
    return-void
.end method

.method public whitelist onError(I)V
    .registers 2
    .param p1, "status"    # I

    .line 689
    return-void
.end method

.method public whitelist onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V
    .registers 2
    .param p1, "metadata"    # Landroid/hardware/radio/RadioMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    return-void
.end method

.method public whitelist onParametersUpdated(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 799
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 717
    return-void
.end method

.method public whitelist onProgramListChanged()V
    .registers 1

    .line 771
    return-void
.end method

.method public whitelist onTrafficAnnouncement(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 730
    return-void
.end method

.method public whitelist onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 698
    return-void
.end method
