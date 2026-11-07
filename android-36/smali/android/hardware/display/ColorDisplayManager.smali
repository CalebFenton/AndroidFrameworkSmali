.class public final Landroid/hardware/display/ColorDisplayManager;
.super Ljava/lang/Object;
.source "ColorDisplayManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;,
        Landroid/hardware/display/ColorDisplayManager$ColorMode;,
        Landroid/hardware/display/ColorDisplayManager$AutoMode;,
        Landroid/hardware/display/ColorDisplayManager$CapabilityType;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_MODE_CUSTOM_TIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_MODE_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_MODE_TWILIGHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_HARDWARE_ACCELERATION_GLOBAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_HARDWARE_ACCELERATION_PER_APP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_PROTECTED_CONTENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist COLOR_MODE_AUTOMATIC:I = 0x3

.field public static final blacklist COLOR_MODE_BOOSTED:I = 0x1

.field public static final blacklist COLOR_MODE_NATURAL:I = 0x0

.field public static final blacklist COLOR_MODE_SATURATED:I = 0x2

.field public static final blacklist VENDOR_COLOR_MODE_RANGE_MAX:I = 0x1ff

.field public static final blacklist VENDOR_COLOR_MODE_RANGE_MIN:I = 0x100


# instance fields
.field private final blacklist mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-static {}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getInstance()Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    .line 189
    return-void
.end method

.method public static blacklist areAccessibilityTransformsEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 595
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_inversion_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    .line 596
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_17

    :cond_16
    move v2, v3

    .line 595
    :cond_17
    return v2
.end method

.method public static blacklist getMaximumColorTemperature(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 521
    const v1, 0x10e00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 520
    return v0
.end method

.method public static blacklist getMaximumReduceBrightColorsStrength(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 563
    const v1, 0x10e0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 562
    return v0
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 600
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 601
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 603
    :cond_b
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static blacklist getMinimumColorTemperature(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 510
    const v1, 0x10e00ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 509
    return v0
.end method

.method public static blacklist getMinimumReduceBrightColorsStrength(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 553
    const v1, 0x10e0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 552
    return v0
.end method

.method public static blacklist isColorTransformAccelerated(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNightDisplayAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 542
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->evenDimmer()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 541
    :goto_23
    return v0
.end method

.method public static blacklist isStandardColorMode(I)Z
    .registers 3
    .param p0, "mode"    # I

    .line 367
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method


# virtual methods
.method public blacklist getColorMode()I
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getColorMode()I

    move-result v0

    return v0
.end method

.method public whitelist getNightDisplayAutoMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoMode()I

    move-result v0

    return v0
.end method

.method public blacklist getNightDisplayAutoModeRaw()I
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoModeRaw()I

    move-result v0

    return v0
.end method

.method public blacklist getNightDisplayColorTemperature()I
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayColorTemperature()I

    move-result v0

    return v0
.end method

.method public blacklist getNightDisplayCustomEndTime()Ljava/time/LocalTime;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNightDisplayCustomStartTime()Ljava/time/LocalTime;
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReduceBrightColorsOffsetFactor()F
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getReduceBrightColorsOffsetFactor()F

    move-result v0

    return v0
.end method

.method public blacklist getReduceBrightColorsStrength()I
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getReduceBrightColorsStrength()I

    move-result v0

    return v0
.end method

.method public whitelist getTransformCapabilities()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 584
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getTransformCapabilities()I

    move-result v0

    return v0
.end method

.method public blacklist isDeviceColorManaged()Z
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isDeviceColorManaged()Z

    move-result v0

    return v0
.end method

.method public blacklist isDisplayWhiteBalanceEnabled()Z
    .registers 2

    .line 440
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isDisplayWhiteBalanceEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isNightDisplayActivated()Z
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public blacklist isReduceBrightColorsActivated()Z
    .registers 2

    .line 459
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    return v0
.end method

.method public blacklist isSaturationActivated()Z
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isSaturationActivated()Z

    move-result v0

    return v0
.end method

.method public whitelist setAppSaturationLevel(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "saturationLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 420
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .line 349
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setColorMode(I)V

    .line 350
    return-void
.end method

.method public blacklist setDisplayWhiteBalanceEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 430
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setNightDisplayActivated(Z)Z
    .registers 3
    .param p1, "activated"    # Z

    .line 198
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayActivated(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setNightDisplayAutoMode(I)Z
    .registers 5
    .param p1, "autoMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 265
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_22

    .line 268
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_22
    :goto_22
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_41

    .line 271
    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 273
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 274
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 276
    :cond_41
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayAutoMode(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setNightDisplayColorTemperature(I)Z
    .registers 3
    .param p1, "temperature"    # I

    .line 217
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayColorTemperature(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z
    .registers 5
    .param p1, "endTime"    # Ljava/time/LocalTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 333
    if-eqz p1, :cond_26

    .line 336
    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 338
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 339
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 340
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    new-instance v1, Landroid/hardware/display/Time;

    invoke-direct {v1, p1}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0

    .line 334
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z
    .registers 5
    .param p1, "startTime"    # Ljava/time/LocalTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 301
    if-eqz p1, :cond_26

    .line 304
    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 306
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 308
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    new-instance v1, Landroid/hardware/display/Time;

    invoke-direct {v1, p1}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0

    .line 302
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setReduceBrightColorsActivated(Z)Z
    .registers 3
    .param p1, "activated"    # Z

    .line 450
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setReduceBrightColorsActivated(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setReduceBrightColorsStrength(I)Z
    .registers 3
    .param p1, "strength"    # I

    .line 471
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setReduceBrightColorsStrength(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setSaturationLevel(I)Z
    .registers 3
    .param p1, "saturationLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 393
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setSaturationLevel(I)Z

    move-result v0

    return v0
.end method
