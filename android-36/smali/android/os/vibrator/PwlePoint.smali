.class public final Landroid/os/vibrator/PwlePoint;
.super Ljava/lang/Object;
.source "PwlePoint.java"


# instance fields
.field private final blacklist mAmplitude:F

.field private final blacklist mFrequencyHz:F

.field private final blacklist mTimeMillis:I


# direct methods
.method public constructor blacklist <init>(FFI)V
    .registers 4
    .param p1, "amplitude"    # F
    .param p2, "frequencyHz"    # F
    .param p3, "timeMillis"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    .line 35
    iput p2, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    .line 36
    iput p3, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Landroid/os/vibrator/PwlePoint;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 54
    return v1

    .line 56
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/PwlePoint;

    .line 57
    .local v0, "other":Landroid/os/vibrator/PwlePoint;
    iget v2, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    iget v3, v0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    iget v3, v0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 57
    :goto_26
    return v1
.end method

.method public blacklist getAmplitude()F
    .registers 2

    .line 40
    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    return v0
.end method

.method public blacklist getFrequencyHz()F
    .registers 2

    .line 44
    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    return v0
.end method

.method public blacklist getTimeMillis()I
    .registers 2

    .line 48
    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 64
    iget v0, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PwlePoint{amplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwlePoint;->mTimeMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
