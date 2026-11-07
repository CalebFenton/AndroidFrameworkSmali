.class public final Landroid/os/vibrator/BasicPwleSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "BasicPwleSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/BasicPwleSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDuration:J

.field private final blacklist mEndIntensity:F

.field private final blacklist mEndSharpness:F

.field private final blacklist mStartIntensity:F

.field private final blacklist mStartSharpness:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 208
    new-instance v0, Landroid/os/vibrator/BasicPwleSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/BasicPwleSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/BasicPwleSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFJ)V
    .registers 7
    .param p1, "startIntensity"    # F
    .param p2, "endIntensity"    # F
    .param p3, "startSharpness"    # F
    .param p4, "endSharpness"    # F
    .param p5, "duration"    # J

    .line 57
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 58
    iput p1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    .line 59
    iput p2, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    .line 60
    iput p3, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    .line 61
    iput p4, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    .line 62
    iput-wide p5, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    .line 63
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/BasicPwleSegment;
    .registers 2
    .param p1, "effectStrength"    # I

    .line 162
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

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->applyEffectStrength(I)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 3
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 102
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->areEnvelopeEffectsSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Landroid/os/vibrator/BasicPwleSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 89
    return v1

    .line 91
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/BasicPwleSegment;

    .line 92
    .local v0, "other":Landroid/os/vibrator/BasicPwleSegment;
    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    iget v3, v0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3b

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    iget v3, v0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3b

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iget v3, v0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3b

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iget v3, v0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3b

    iget-wide v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    iget-wide v4, v0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    nop

    .line 92
    :goto_3c
    return v1
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 83
    iget-wide v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEndIntensity()F
    .registers 2

    .line 70
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    return v0
.end method

.method public blacklist getEndSharpness()F
    .registers 2

    .line 78
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    return v0
.end method

.method public blacklist getStartIntensity()F
    .registers 2

    .line 66
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    return v0
.end method

.method public blacklist getStartSharpness()F
    .registers 2

    .line 74
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 167
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    .line 168
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/BasicPwleSegment;
    .registers 2
    .param p1, "defaultAmplitude"    # I

    .line 125
    return-object p0
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

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->resolve(I)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/BasicPwleSegment;
    .registers 10
    .param p1, "scaleFactor"    # F

    .line 132
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v2

    .line 133
    .local v2, "newStartIntensity":F
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v3

    .line 134
    .local v3, "newEndIntensity":F
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    .line 135
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1d

    .line 136
    return-object p0

    .line 138
    :cond_1d
    new-instance v1, Landroid/os/vibrator/BasicPwleSegment;

    iget v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iget v5, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iget-wide v6, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

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

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->scale(F)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/BasicPwleSegment;
    .registers 10
    .param p1, "scaleFactor"    # F

    .line 147
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v2

    .line 148
    .local v2, "newStartIntensity":F
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v3

    .line 149
    .local v3, "newEndIntensity":F
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    .line 150
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1d

    .line 151
    return-object p0

    .line 153
    :cond_1d
    new-instance v1, Landroid/os/vibrator/BasicPwleSegment;

    iget v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    iget v5, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    iget-wide v6, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

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

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;->scaleLinearly(F)Landroid/os/vibrator/BasicPwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 7

    .line 184
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    .line 186
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    .line 187
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    .line 188
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    .line 189
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 184
    const-string v2, "Pwle=%dms(intensity=%.2f @ %.2f to %.2f @ %.2f)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicPwle{startIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startSharpness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endSharpness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 5

    .line 114
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    const-string/jumbo v1, "startSharpness"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 115
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    const-string v1, "endSharpness"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 116
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    const-string/jumbo v1, "startIntensity"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 117
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    const-string v1, "endIntensity"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 118
    iget-wide v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    long-to-float v0, v0

    const-string v1, "Time must be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 119
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartIntensity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndIntensity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 202
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mStartSharpness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 203
    iget v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mEndSharpness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 204
    iget-wide v0, p0, Landroid/os/vibrator/BasicPwleSegment;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    return-void
.end method
