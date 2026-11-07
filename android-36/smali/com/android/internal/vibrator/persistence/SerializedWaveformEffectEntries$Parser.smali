.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser;
.super Ljava/lang/Object;
.source "SerializedWaveformEffectEntries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V
    .registers 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "waveformBuilder"    # Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    nop

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V

    .line 117
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/function/BiConsumer;)V

    .line 119
    return-void
.end method
