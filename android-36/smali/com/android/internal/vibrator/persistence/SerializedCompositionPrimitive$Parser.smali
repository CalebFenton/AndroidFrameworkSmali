.class final Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;
.super Ljava/lang/Object;
.source "SerializedCompositionPrimitive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseDelayType(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 153
    if-nez p0, :cond_4

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_4
    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v0

    const-string v1, "Unexpected primitive delay type "

    if-eqz v0, :cond_2a

    .line 159
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->findByName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    .line 160
    .local v0, "delayType":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    if-eqz v0, :cond_13

    .line 163
    return-object v0

    .line 161
    :cond_13
    new-instance v2, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    .end local v0    # "delayType":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    :cond_2a
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const-string/jumbo v0, "primitive-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v0

    const-string v1, "delayType"

    const-string/jumbo v2, "scale"

    const-string v3, "delayMs"

    const-string v4, "name"

    if-eqz v0, :cond_1d

    .line 115
    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    goto :goto_24

    .line 118
    :cond_1d
    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 122
    :goto_24
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    .line 123
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parsePrimitiveName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    .line 124
    .local v0, "primitiveName":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v2, v4, v5, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FFF)F

    move-result v2

    .line 126
    .local v2, "scale":F
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 128
    .local v3, "delayMs":I
    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    .line 129
    invoke-interface {p0, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parseDelayType(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v1

    .line 132
    .local v1, "delayType":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 134
    new-instance v4, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V

    return-object v4
.end method

.method private static blacklist parsePrimitiveName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 140
    if-eqz p0, :cond_22

    .line 143
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findByName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    .line 144
    .local v0, "effectName":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    if-eqz v0, :cond_9

    .line 147
    return-object v0

    .line 145
    :cond_9
    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected primitive effect name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "effectName":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    :cond_22
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string v1, "Missing primitive effect name"

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
