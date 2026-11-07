.class final Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedWaveformEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseControlPoint(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "builder"    # Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 151
    const-string v0, "control-point"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 152
    const-string v0, "durationMs"

    const-string v1, "amplitude"

    const-string v2, "frequencyHz"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F

    move-result v1

    .line 157
    .local v1, "amplitude":F
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributePositiveFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v2

    .line 159
    .local v2, "frequencyHz":F
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributePositiveLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    .line 161
    .local v3, "durationMs":J
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 162
    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const-string/jumbo v0, "waveform-envelope-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 126
    const-string v1, "initialFrequencyHz"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;

    invoke-direct {v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;-><init>()V

    .line 129
    .local v2, "builder":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
    nop

    .line 130
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {p0, v1, v3}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributePositiveFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v1

    .line 129
    invoke-virtual {v2, v1}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->setInitialFrequencyHz(F)V

    .line 133
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 135
    .local v1, "outerDepth":I
    :goto_22
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 136
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;->parseControlPoint(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;)V

    .line 138
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_22

    .line 142
    :cond_2f
    invoke-static {v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->-$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Expected tag %s to have at least one control point"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v0

    return-object v0
.end method
