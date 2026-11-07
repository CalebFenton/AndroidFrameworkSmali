.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
.super Ljava/lang/Object;
.source "SerializedWaveformEnvelopeEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;,
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

.field private final blacklist mInitialFrequency:F


# direct methods
.method constructor blacklist <init>([Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;F)V
    .registers 3
    .param p1, "controlPoints"    # [Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;
    .param p2, "initialFrequency"    # F

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    .line 52
    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 11
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 76
    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    .line 79
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_12

    .line 80
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 83
    :cond_12
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 84
    .local v4, "point":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;
    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmAmplitude(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v5

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmFrequency(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v6

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 83
    .end local v4    # "point":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 86
    :cond_2c
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 87
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedWaveformEnvelopeEffect{InitialFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, ""

    goto :goto_1c

    :cond_16
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controlPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 12
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "waveform-envelope-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    .line 60
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "initialFrequencyHz"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mInitialFrequency:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    :cond_19
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_51

    aget-object v4, v0, v3

    .line 64
    .local v4, "point":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v6, "control-point"

    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v7, "amplitude"

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmAmplitude(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v8

    invoke-interface {p1, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v7, "frequencyHz"

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmFrequency(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)F

    move-result v8

    invoke-interface {p1, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v7, "durationMs"

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;->-$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;)J

    move-result-wide v8

    invoke-interface {p1, v5, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .end local v4    # "point":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$WaveformControlPoint;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 71
    :cond_51
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    return-void
.end method
