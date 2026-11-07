.class final Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;
.super Ljava/lang/Object;
.source "SerializedAmplitudeStepWaveform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-string/jumbo v0, "waveform-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 143
    .local v1, "waveformBuilder":Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 146
    .local v2, "outerDepth":I
    :goto_15
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    const-string/jumbo v4, "repeating"

    if-eqz v3, :cond_34

    .line 147
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 148
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/function/BiConsumer;)V

    goto :goto_15

    .line 152
    :cond_34
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 153
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseRepeating(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    .line 157
    :cond_41
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->hasNonZeroDuration()Z

    move-result v3

    const-string v4, "Unexpected %s tag with total duration zero"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseRepeating(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "waveformBuilder"    # Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const-string/jumbo v0, "repeating"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "hasEntry":Z
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 194
    .local v2, "outerDepth":I
    :goto_14
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/function/BiConsumer;)V

    .line 196
    const/4 v1, 0x1

    goto :goto_14

    .line 200
    :cond_27
    const-string v3, "Unexpected empty %s tag"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method static blacklist parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/function/BiConsumer;)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    .local p1, "builder":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string/jumbo v0, "waveform-entry"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 169
    const-string v0, "durationMs"

    const-string v1, "amplitude"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "rawAmplitude":Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 174
    const/4 v1, -0x1

    goto :goto_28

    .line 175
    :cond_21
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;II)I

    move-result v1

    :goto_28
    nop

    .line 177
    .local v1, "amplitude":I
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "durationMs":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 183
    return-void
.end method
