.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;
.super Ljava/lang/Object;
.source "SerializedWaveformEffectEntries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAmplitudes:Landroid/util/IntArray;

.field private final blacklist mTimings:Landroid/util/LongArray;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    .line 89
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mAmplitudes:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method blacklist addDurationAndAmplitude(JI)V
    .registers 5
    .param p1, "durationMs"    # J
    .param p3, "amplitude"    # I

    .line 92
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mAmplitudes:Landroid/util/IntArray;

    invoke-virtual {v0, p3}, Landroid/util/IntArray;->add(I)V

    .line 94
    return-void
.end method

.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;
    .registers 5

    .line 106
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    .line 107
    invoke-virtual {v1}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mAmplitudes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;-><init>([J[ILcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries-IA;)V

    .line 106
    return-object v0
.end method

.method blacklist hasNonZeroDuration()Z
    .registers 6

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 98
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_17

    .line 99
    const/4 v1, 0x1

    return v1

    .line 97
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
