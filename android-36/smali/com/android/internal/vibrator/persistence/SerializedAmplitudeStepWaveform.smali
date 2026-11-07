.class final Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
.super Ljava/lang/Object;
.source "SerializedAmplitudeStepWaveform.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAmplitudes:[I

.field private final blacklist mRepeatIndex:I

.field private final blacklist mTimings:[J


# direct methods
.method private constructor blacklist <init>([J[II)V
    .registers 4
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "repeatIndex"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    .line 54
    iput-object p2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    .line 55
    iput p3, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>([J[IILcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;-><init>([J[II)V

    return-void
.end method

.method private blacklist writeWaveformEntry(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "waveform-entry"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    aget v0, v0, p2

    const/4 v2, -0x1

    const-string v3, "amplitude"

    if-ne v0, v2, :cond_19

    .line 85
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "default"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_22

    .line 87
    :cond_19
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    aget v2, v2, p2

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    :goto_22
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    aget-wide v2, v2, p2

    const-string v4, "durationMs"

    invoke-interface {p1, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 5
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 60
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 61
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedAmplitudeStepWaveform{timings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    .line 97
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amplitudes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "waveform-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    array-length v2, v2

    const-string/jumbo v3, "repeating"

    if-ge v0, v2, :cond_20

    .line 68
    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    if-ne v0, v2, :cond_1a

    .line 69
    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_1a
    invoke-direct {p0, p1, v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->writeWaveformEntry(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 74
    .end local v0    # "i":I
    :cond_20
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    if-ltz v0, :cond_29

    .line 75
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    :cond_29
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    return-void
.end method
