.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;
.super Ljava/lang/Object;
.source "SerializedWaveformEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WaveformControlPoint"
.end annotation


# instance fields
.field private final blacklist mAmplitude:F

.field private final blacklist mDurationMs:J

.field private final blacklist mFrequency:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAmplitude(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mAmplitude:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequency(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mFrequency:F

    return p0
.end method

.method constructor blacklist <init>(FFJ)V
    .registers 5
    .param p1, "amplitude"    # F
    .param p2, "frequency"    # F
    .param p3, "durationMs"    # J

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mAmplitude:F

    .line 172
    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mFrequency:F

    .line 173
    iput-wide p3, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mDurationMs:J

    .line 174
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 178
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mFrequency:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->mDurationMs:J

    .line 179
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 178
    const-string v2, "(%.2f, %.2f, %dms)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
