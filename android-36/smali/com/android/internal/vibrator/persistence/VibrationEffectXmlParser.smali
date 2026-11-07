.class public Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;
.super Ljava/lang/Object;
.source "VibrationEffectXmlParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const-string/jumbo v0, "vibration-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 159
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseVibrationContent(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseVibrationContent(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "vibrationTagName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 175
    .local v1, "vibrationTagDepth":I
    nop

    .line 176
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 175
    const-string v5, "Unsupported empty vibration tag"

    invoke-static {v2, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_112

    :cond_20
    goto :goto_6c

    :sswitch_21
    const-string/jumbo v3, "waveform-envelope-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x4

    goto :goto_6d

    :sswitch_2c
    const-string/jumbo v3, "primitive-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x2

    goto :goto_6d

    :sswitch_37
    const-string/jumbo v4, "vendor-effect"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_6d

    :sswitch_41
    const-string/jumbo v3, "repeating-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x6

    goto :goto_6d

    :sswitch_4c
    const-string/jumbo v3, "waveform-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x3

    goto :goto_6d

    :sswitch_57
    const-string/jumbo v3, "predefined-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x1

    goto :goto_6d

    :sswitch_62
    const-string v3, "basic-envelope-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x5

    goto :goto_6d

    :goto_6c
    const/4 v3, -0x1

    :goto_6d
    packed-switch v3, :pswitch_data_130

    goto/16 :goto_ea

    .line 204
    :pswitch_72
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 205
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 206
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 207
    .local v2, "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    goto :goto_e6

    .line 210
    .end local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :cond_82
    :pswitch_82
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 211
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 212
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 213
    .restart local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    goto :goto_e6

    .line 216
    .end local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :cond_92
    :pswitch_92
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 217
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 218
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 219
    .restart local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    goto :goto_e6

    .line 200
    .end local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :pswitch_a2
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 201
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 202
    .restart local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    goto :goto_e6

    .line 192
    .end local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :pswitch_ac
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v2, "primitives":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;>;"
    :cond_b1
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 196
    new-instance v3, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 197
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    invoke-direct {v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 198
    .local v3, "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    move-object v2, v3

    goto :goto_e6

    .line 183
    .end local v2    # "primitives":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;>;"
    .end local v3    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :pswitch_d1
    invoke-static {}, Landroid/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 184
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object v2

    .line 185
    .local v2, "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    goto :goto_e6

    .line 188
    .end local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :cond_dc
    :pswitch_dc
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 189
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 190
    .restart local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    nop

    .line 227
    :goto_e6
    invoke-static {p0, v0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 229
    return-object v2

    .line 222
    .end local v2    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :cond_ea
    :goto_ea
    new-instance v2, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in vibration tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_112
    .sparse-switch
        -0x7e589d71 -> :sswitch_62
        -0x4f1c8cc8 -> :sswitch_57
        -0x2d8d05df -> :sswitch_4c
        -0x1b108e49 -> :sswitch_41
        -0x14fe824a -> :sswitch_37
        0x8e61537 -> :sswitch_2c
        0x49de0b9e -> :sswitch_21
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_dc
        :pswitch_ac
        :pswitch_a2
        :pswitch_72
        :pswitch_82
        :pswitch_92
    .end packed-switch
.end method
