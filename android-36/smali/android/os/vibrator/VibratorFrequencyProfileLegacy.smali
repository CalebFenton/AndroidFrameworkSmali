.class public final Landroid/os/vibrator/VibratorFrequencyProfileLegacy;
.super Ljava/lang/Object;
.source "VibratorFrequencyProfileLegacy.java"


# instance fields
.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)V
    .registers 4
    .param p1, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Frequency profile must have a non-empty frequency range"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    iput-object p1, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist getMaxAmplitudeMeasurementInterval()F
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyResolutionHz()F

    move-result v0

    return v0
.end method

.method public blacklist getMaxAmplitudeMeasurements()[F
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitudes()[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxFrequency()F
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getMinFrequency()F
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
