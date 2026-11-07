.class public final synthetic Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->addDurationAndAmplitude(JI)V

    return-void
.end method
