.class public final Landroid/os/vibrator/StepSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "StepSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/StepSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAmplitude:F

.field private final blacklist mDuration:I

.field private final blacklist mFrequencyHz:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 202
    new-instance v0, Landroid/os/vibrator/StepSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/StepSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/StepSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFI)V
    .registers 4
    .param p1, "amplitude"    # F
    .param p2, "frequencyHz"    # F
    .param p3, "duration"    # I

    .line 53
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 54
    iput p1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    .line 55
    iput p2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    .line 56
    iput p3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/StepSegment;
    .registers 2
    .param p1, "effectStrength"    # I

    .line 165
    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->applyEffectStrength(I)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 4
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, "areFeaturesSupported":Z
    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v1}, Landroid/os/vibrator/StepSegment;->frequencyRequiresFrequencyControl(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 88
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->hasFrequencyControl()Z

    move-result v1

    and-int/2addr v0, v1

    .line 90
    :cond_e
    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v1}, Landroid/os/vibrator/StepSegment;->amplitudeRequiresAmplitudeControl(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 91
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v1

    and-int/2addr v0, v1

    .line 93
    :cond_1b
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 61
    instance-of v0, p1, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 62
    return v1

    .line 64
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/StepSegment;

    .line 65
    .local v0, "other":Landroid/os/vibrator/StepSegment;
    iget v2, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    iget v3, v0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    iget v3, v0, Landroid/os/vibrator/StepSegment;->mDuration:I

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 65
    :goto_26
    return v1
.end method

.method public blacklist getAmplitude()F
    .registers 2

    .line 71
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 80
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getFrequencyHz()F
    .registers 2

    .line 75
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 170
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/StepSegment;
    .registers 6
    .param p1, "defaultAmplitude"    # I

    .line 120
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1f

    if-lez p1, :cond_1f

    .line 125
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    return-object p0

    .line 128
    :cond_11
    new-instance v0, Landroid/os/vibrator/StepSegment;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v0, v1, v2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0

    .line 121
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must be between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->resolve(I)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/StepSegment;
    .registers 6
    .param p1, "scaleFactor"    # F

    .line 137
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_b

    .line 138
    return-object p0

    .line 140
    :cond_b
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v0

    .line 141
    .local v0, "newAmplitude":F
    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1a

    .line 142
    return-object p0

    .line 144
    :cond_1a
    new-instance v1, Landroid/os/vibrator/StepSegment;

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v1, v0, v2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v1
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->scale(F)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/StepSegment;
    .registers 6
    .param p1, "scaleFactor"    # F

    .line 151
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_b

    .line 152
    return-object p0

    .line 154
    :cond_b
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v0

    .line 155
    .local v0, "newAmplitude":F
    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1a

    .line 156
    return-object p0

    .line 158
    :cond_1a
    new-instance v1, Landroid/os/vibrator/StepSegment;

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v1, v0, v2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v1
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->scaleLinearly(F)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 5

    .line 184
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 185
    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_18

    const-string v2, ""

    goto :goto_33

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_33
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 184
    const-string v1, "Step=%dms(amplitude=%.2f%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step{amplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 6

    .line 105
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    const-string v1, "frequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    .line 106
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    int-to-long v2, v0

    const-string v0, "duration"

    invoke-static {v2, v3, v0}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    .line 107
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 108
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "amplitude"

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 109
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    goto :goto_31

    .line 110
    :cond_29
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    .line 114
    :goto_31
    return-void

    .line 111
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frequency must be default when amplitude is set to default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void
.end method
