.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;
.super Ljava/lang/Object;
.source "SerializedWaveformEffectEntries.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAmplitudes:[I

.field private final blacklist mTimings:[J


# direct methods
.method private constructor blacklist <init>([J[I)V
    .registers 3
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mTimings:[J

    .line 53
    iput-object p2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mAmplitudes:[I

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>([J[ILcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;-><init>([J[I)V

    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 5
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 58
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mTimings:[J

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mAmplitudes:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 59
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedWaveformEffectEntries{timings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mTimings:[J

    .line 81
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amplitudes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mAmplitudes:[I

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mTimings:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 64
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "waveform-entry"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mAmplitudes:[I

    aget v1, v1, v0

    const/4 v3, -0x1

    const-string v4, "amplitude"

    if-ne v1, v3, :cond_1f

    .line 67
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v3, "default"

    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_28

    .line 69
    :cond_1f
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mAmplitudes:[I

    aget v3, v3, v0

    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    :goto_28
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;->mTimings:[J

    aget-wide v3, v3, v0

    const-string v5, "durationMs"

    invoke-interface {p1, v1, v5, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method
