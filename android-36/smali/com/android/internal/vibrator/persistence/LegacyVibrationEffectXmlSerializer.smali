.class public final Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;
.super Ljava/lang/Object;
.source "LegacyVibrationEffectXmlSerializer.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 6
    .param p0, "vibration"    # Landroid/os/VibrationEffect;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_12

    instance-of v0, p0, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_12

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$VendorEffect;

    .line 67
    .local v0, "vendorEffect":Landroid/os/VibrationEffect$VendorEffect;
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "vendorEffect":Landroid/os/VibrationEffect$VendorEffect;
    :cond_12
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    const-string v1, "Unsupported VibrationEffect type %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 74
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unsupported empty VibrationEffect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 78
    .local v1, "firstSegment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v2, v1, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_47

    .line 79
    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v2

    return-object v2

    .line 81
    :cond_47
    instance-of v2, v1, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v2, :cond_50

    .line 82
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v2

    return-object v2

    .line 84
    :cond_50
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_5f

    instance-of v2, v1, Landroid/os/vibrator/PwleSegment;

    if-eqz v2, :cond_5f

    .line 85
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeWaveformEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v2

    return-object v2

    .line 87
    :cond_5f
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_6e

    instance-of v2, v1, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz v2, :cond_6e

    .line 88
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeBasicEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v2

    return-object v2

    .line 90
    :cond_6e
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist serializeBasicEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 9
    .param p0, "effect"    # Landroid/os/VibrationEffect$Composed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    .line 150
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const-string v3, "Unsupported repeating basic envelope effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 154
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/BasicPwleSegment;

    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 154
    const-string v5, "Unsupported segment for basic envelope effect %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/BasicPwleSegment;

    .line 158
    .local v3, "segment":Landroid/os/vibrator/BasicPwleSegment;
    if-nez v2, :cond_51

    invoke-virtual {v3}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v4

    invoke-virtual {v3}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_51

    .line 160
    invoke-virtual {v3}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    .line 163
    :cond_51
    invoke-virtual {v3}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v4

    invoke-virtual {v3}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v5

    .line 164
    invoke-virtual {v3}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v6

    .line 163
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 153
    .end local v3    # "segment":Landroid/os/vibrator/BasicPwleSegment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 167
    .end local v2    # "i":I
    :cond_63
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v2
.end method

.method private static blacklist serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .registers 9
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 198
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    const-string v1, "Unsupported segment for predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/PrebakedSegment;

    .line 202
    .local v0, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    nop

    .line 203
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    .line 202
    invoke-static {v1, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findById(II)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v1

    .line 205
    .local v1, "effectName":Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v2

    .line 206
    :goto_1e
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 205
    const-string v6, "Unsupported predefined effect id %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_4c

    .line 210
    nop

    .line 211
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v4

    if-ne v4, v3, :cond_3b

    move v2, v3

    .line 213
    :cond_3b
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 210
    const-string v4, "Unsupported predefined effect with should fallback %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_4c
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object v2
.end method

.method private static blacklist serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .param p0, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v4

    :goto_10
    const-string v2, "Unsupported repeating predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_20

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    const-string v1, "Unsupported multiple segments in predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2, p1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .param p0, "effect"    # Landroid/os/VibrationEffect$Composed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const-string v2, "Unsupported repeating primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 116
    .local v1, "primitives":[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v3

    aput-object v3, v1, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 120
    .end local v2    # "i":I
    :cond_33
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {v2, v1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v2
.end method

.method private static blacklist serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .registers 8
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 221
    instance-of v0, p0, Landroid/os/vibrator/PrimitiveSegment;

    const-string v1, "Unsupported segment for primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/PrimitiveSegment;

    .line 225
    .local v0, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    nop

    .line 226
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v1

    .line 228
    .local v1, "primitiveName":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    move v4, v2

    goto :goto_1e

    :cond_1d
    move v4, v3

    .line 229
    :goto_1e
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 228
    const-string v6, "Unsupported primitive effect id %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/4 v4, 0x0

    .line 233
    .local v4, "delayType":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v5

    const-string v6, "Unsupported primitive delay type %s"

    if-eqz v5, :cond_54

    .line 234
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v4

    .line 235
    if-eqz v4, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    .line 236
    :goto_44
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 235
    invoke-static {v2, v6, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 238
    :cond_54
    nop

    .line 239
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v3

    .line 240
    :goto_5d
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 238
    invoke-static {v2, v6, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_6c
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    .line 244
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v3

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v5

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V

    .line 243
    return-object v2
.end method

.method private static blacklist serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .registers 3
    .param p0, "effect"    # Landroid/os/VibrationEffect$VendorEffect;

    .line 106
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static blacklist serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .param p0, "effect"    # Landroid/os/VibrationEffect$Composed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 175
    .local v0, "serializedWaveformBuilder":Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 177
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/StepSegment;

    .line 178
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 177
    const-string v5, "Unsupported segment for waveform effect %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/StepSegment;

    .line 181
    .local v3, "segment":Landroid/os/vibrator/StepSegment;
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v4

    if-ne v4, v2, :cond_32

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    .line 185
    :cond_32
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    .line 186
    :goto_40
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 185
    const-string v6, "Unsupported segment with non-default frequency %f"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    nop

    .line 189
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v6

    invoke-static {v6}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->toAmplitudeInt(F)I

    move-result v6

    .line 188
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->addDurationAndAmplitude(JI)V

    .line 176
    .end local v3    # "segment":Landroid/os/vibrator/StepSegment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 192
    .end local v2    # "i":I
    :cond_64
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v2
.end method

.method private static blacklist serializeWaveformEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 9
    .param p0, "effect"    # Landroid/os/VibrationEffect$Composed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;-><init>()V

    .line 127
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const-string v3, "Unsupported repeating waveform envelope effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/PwleSegment;

    .line 132
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 131
    const-string v5, "Unsupported segment for waveform envelope effect %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/PwleSegment;

    .line 135
    .local v3, "segment":Landroid/os/vibrator/PwleSegment;
    if-nez v2, :cond_51

    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v4

    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_51

    .line 137
    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->setInitialFrequencyHz(F)V

    .line 140
    :cond_51
    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v4

    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v5

    .line 141
    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v6

    .line 140
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 130
    .end local v3    # "segment":Landroid/os/vibrator/PwleSegment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 144
    .end local v2    # "i":I
    :cond_63
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v2
.end method

.method private static blacklist toAmplitudeInt(F)I
    .registers 2
    .param p0, "amplitude"    # F

    .line 248
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a

    .line 249
    const/4 v0, -0x1

    goto :goto_11

    .line 250
    :cond_a
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 248
    :goto_11
    return v0
.end method
