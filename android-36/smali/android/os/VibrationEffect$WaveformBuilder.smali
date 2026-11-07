.class public final Landroid/os/VibrationEffect$WaveformBuilder;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaveformBuilder"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f


# instance fields
.field private blacklist mLastAmplitude:F

.field private blacklist mLastFrequencyHz:F

.field private blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 2237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    .line 2234
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    .line 2235
    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    .line 2237
    return-void
.end method

.method private blacklist addTransitionSegment(Ljava/time/Duration;FF)V
    .registers 12
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "targetAmplitude"    # F
    .param p3, "targetFrequency"    # F

    .line 2386
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Transition duration must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2389
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v7, v0

    .line 2392
    .local v7, "durationMs":I
    if-lez v7, :cond_4e

    .line 2393
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3d

    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    sub-float/2addr v0, p3

    .line 2394
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3d

    .line 2396
    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/vibrator/StepSegment;

    invoke-direct {v1, p2, p3, v7}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, p2

    move v6, p3

    goto :goto_50

    .line 2398
    :cond_3d
    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/RampSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v5, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    move v4, p2

    move v6, p3

    .end local p2    # "targetAmplitude":F
    .end local p3    # "targetFrequency":F
    .local v4, "targetAmplitude":F
    .local v6, "targetFrequency":F
    invoke-direct/range {v2 .. v7}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 2392
    .end local v4    # "targetAmplitude":F
    .end local v6    # "targetFrequency":F
    .restart local p2    # "targetAmplitude":F
    .restart local p3    # "targetFrequency":F
    :cond_4e
    move v4, p2

    move v6, p3

    .line 2403
    .end local p2    # "targetAmplitude":F
    .end local p3    # "targetFrequency":F
    .restart local v4    # "targetAmplitude":F
    .restart local v6    # "targetFrequency":F
    :goto_50
    iput v4, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    .line 2404
    iput v6, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    .line 2405
    return-void
.end method

.method private blacklist checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V
    .registers 6
    .param p1, "vibrationParameter"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 2355
    const-string v0, "%s is null"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    instance-of v0, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-nez v0, :cond_14

    instance-of v0, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    const-string v1, "%s is a unknown parameter"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2360
    return-void
.end method

.method private blacklist extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .registers 4
    .param p1, "target1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p2, "target2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 2364
    instance-of v0, p2, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_a

    .line 2365
    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return v0

    .line 2367
    :cond_a
    instance-of v0, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_14

    .line 2368
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return v0

    .line 2370
    :cond_14
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    return v0
.end method

.method private blacklist extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .registers 4
    .param p1, "target1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p2, "target2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 2375
    instance-of v0, p2, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_a

    .line 2376
    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return v0

    .line 2378
    :cond_a
    instance-of v0, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_14

    .line 2379
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return v0

    .line 2381
    :cond_14
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    return v0
.end method


# virtual methods
.method public blacklist addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 7
    .param p1, "duration"    # Ljava/time/Duration;

    .line 2325
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2326
    .local v0, "durationMs":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "Sustain duration must be >= 1ms"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2327
    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/StepSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v4, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    invoke-direct {v2, v3, v4, v0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 5
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "targetParameter"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 2262
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    const-string/jumbo v0, "targetParameter"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 2264
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    .line 2265
    .local v1, "amplitude":F
    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    .line 2266
    .local v0, "frequencyHz":F
    invoke-direct {p0, p1, v1, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    .line 2267
    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 6
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "targetParameter1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p3, "targetParameter2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 2297
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    const-string/jumbo v0, "targetParameter1"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 2299
    const-string/jumbo v0, "targetParameter2"

    invoke-direct {p0, p3, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 2300
    nop

    .line 2301
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2300
    const-string v1, "Parameter arguments must specify different parameter types"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2303
    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    .line 2304
    .local v0, "amplitude":F
    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    .line 2305
    .local v1, "frequencyHz":F
    invoke-direct {p0, p1, v0, v1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    .line 2306
    return-object p0
.end method

.method public blacklist build()Landroid/os/VibrationEffect;
    .registers 4

    .line 2344
    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2348
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 2349
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 2350
    return-object v0

    .line 2345
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WaveformBuilder must have at least one transition to build."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
