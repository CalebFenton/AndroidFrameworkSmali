.class final Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedBasicEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseControlPoint(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "builder"    # Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 152
    const-string v0, "control-point"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 153
    const-string v0, "durationMs"

    const-string v1, "intensity"

    const-string/jumbo v2, "sharpness"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 156
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F

    move-result v1

    .line 158
    .local v1, "intensity":F
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F

    move-result v2

    .line 160
    .local v2, "sharpness":F
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributePositiveLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    .line 162
    .local v3, "durationMs":J
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 163
    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const-string v0, "basic-envelope-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 124
    const-string v1, "initialSharpness"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 126
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    .line 127
    .local v2, "builder":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;
    nop

    .line 128
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x7fc00000    # Float.NaN

    invoke-static {p0, v1, v3, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FFF)F

    move-result v1

    .line 127
    invoke-virtual {v2, v1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    .line 131
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 134
    .local v1, "outerDepth":I
    :goto_24
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 135
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;->parseControlPoint(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)V

    .line 137
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_24

    .line 141
    :cond_31
    invoke-static {v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->-$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string v6, "Expected tag %s to have at least one control point"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->-$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmIntensity(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F

    move-result v0

    cmpl-float v0, v0, v3

    const/4 v3, 0x0

    if-nez v0, :cond_58

    goto :goto_59

    :cond_58
    move v5, v3

    :goto_59
    const-string v0, "Basic envelope effects must end at a zero intensity control point"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v0

    return-object v0
.end method
