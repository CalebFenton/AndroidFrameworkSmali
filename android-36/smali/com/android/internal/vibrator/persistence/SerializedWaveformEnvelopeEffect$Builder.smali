.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
.super Ljava/lang/Object;
.source "SerializedWaveformEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mControlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInitialFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mInitialFrequencyHz:F

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method blacklist addControlPoint(FFJ)V
    .registers 7
    .param p1, "amplitude"    # F
    .param p2, "frequencyHz"    # F
    .param p3, "durationMs"    # J

    .line 110
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;-><init>(FFJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
    .registers 4

    .line 114
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mControlPoints:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mInitialFrequencyHz:F

    invoke-direct {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;F)V

    .line 114
    return-object v0
.end method

.method blacklist setInitialFrequencyHz(F)V
    .registers 2
    .param p1, "frequencyHz"    # F

    .line 106
    iput p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->mInitialFrequencyHz:F

    .line 107
    return-void
.end method
