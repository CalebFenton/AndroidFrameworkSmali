.class final Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedRepeatingEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 153
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 154
    .local v1, "vibrationTagDepth":I
    nop

    .line 155
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 154
    const-string v4, "Unsupported empty %s tag"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_b4

    :cond_26
    goto :goto_5c

    :sswitch_27
    const-string/jumbo v0, "waveform-entry"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    goto :goto_5d

    :sswitch_32
    const-string/jumbo v0, "waveform-envelope-effect"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    goto :goto_5d

    :sswitch_3d
    const-string/jumbo v0, "primitive-effect"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_5d

    :sswitch_48
    const-string/jumbo v3, "predefined-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_5d

    :sswitch_52
    const-string v0, "basic-envelope-effect"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x4

    goto :goto_5d

    :goto_5c
    const/4 v0, -0x1

    :goto_5d
    packed-switch v0, :pswitch_data_ca

    .line 179
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in vibration tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_87
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 176
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 177
    .local v0, "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    goto :goto_af

    .line 171
    .end local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    :pswitch_91
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 172
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 173
    .restart local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    goto :goto_af

    .line 168
    .end local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    :pswitch_9b
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseWaveformEntries(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 169
    .restart local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    goto :goto_af

    .line 165
    .end local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    :pswitch_a0
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parsePrimitiveEffects(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 166
    .restart local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    goto :goto_af

    .line 161
    .end local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    :pswitch_a5
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 162
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 163
    .restart local v0    # "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    nop

    .line 184
    :goto_af
    invoke-static {p0, p1, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 186
    return-object v0

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x7e589d71 -> :sswitch_52
        -0x4f1c8cc8 -> :sswitch_48
        0x8e61537 -> :sswitch_3d
        0x49de0b9e -> :sswitch_32
        0x61a475e2 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_a0
        :pswitch_9b
        :pswitch_91
        :pswitch_87
    .end packed-switch
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const-string/jumbo v0, "repeating-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;

    invoke-direct {v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;-><init>()V

    .line 128
    .local v1, "builder":Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 130
    .local v2, "outerDepth":I
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    .line 131
    .local v3, "hasNestedTag":Z
    if-eqz v3, :cond_33

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "preamble"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 132
    invoke-static {p0, v5, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setPreamble(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 133
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    .line 136
    :cond_33
    const-string v4, "Missing %s tag in %s"

    const-string/jumbo v5, "repeating"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {p0, v5, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setRepeating(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 140
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->hasRepeatingSegment()Z

    move-result v4

    const-string v5, "Unexpected %s tag with no repeating segment"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parsePrimitiveEffects(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "vibrationTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "primitives":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;>;"
    :cond_5
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 196
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist parseWaveformEntries(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "vibrationTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;-><init>()V

    .line 207
    .local v0, "waveformBuilder":Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;
    :cond_5
    nop

    .line 208
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V

    .line 209
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->hasNonZeroDuration()Z

    move-result v1

    const-string/jumbo v2, "waveform-entry"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unexpected %s tag with total duration zero"

    invoke-static {v1, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method
