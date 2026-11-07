.class public Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;
.super Ljava/lang/Object;
.source "VibrationEffectSerializer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibrationEffectSerializer"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 57
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

    .line 68
    invoke-static {}, Landroid/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_12

    instance-of v0, p0, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_12

    .line 69
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$VendorEffect;

    .line 70
    .local v0, "vendorEffect":Landroid/os/VibrationEffect$VendorEffect;
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object v1

    return-object v1

    .line 73
    .end local v0    # "vendorEffect":Landroid/os/VibrationEffect$VendorEffect;
    :cond_12
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    const-string v1, "Unsupported VibrationEffect type %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 77
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

    .line 80
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    .line 84
    .local v2, "repeatIndex":I
    if-ltz v2, :cond_48

    .line 85
    invoke-static {v1, v2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->trySerializeRepeatingAmplitudeWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v3

    .line 86
    .local v3, "serializedEffect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    if-nez v3, :cond_4c

    .line 87
    invoke-static {v1, v2, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeRepeatingEffect(Ljava/util/List;II)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v3

    goto :goto_4c

    .line 90
    .end local v3    # "serializedEffect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    :cond_48
    invoke-static {v1, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeNonRepeatingEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v3

    .line 93
    .restart local v3    # "serializedEffect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    :cond_4c
    :goto_4c
    return-object v3
.end method

.method private static blacklist serializeBasicEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 206
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    .line 207
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 208
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/BasicPwleSegment;

    .line 209
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 208
    const-string v4, "Unsupported segment for basic envelope effect %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/BasicPwleSegment;

    .line 212
    .local v2, "segment":Landroid/os/vibrator/BasicPwleSegment;
    if-nez v1, :cond_3a

    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3a

    .line 214
    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    .line 217
    :cond_3a
    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v4

    .line 218
    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v5

    .line 217
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 207
    .end local v2    # "segment":Landroid/os/vibrator/BasicPwleSegment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 221
    .end local v1    # "i":I
    :cond_4c
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializeEffectEntries(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 130
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->trySerializeNonWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 131
    .local v0, "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    if-nez v0, :cond_a

    .line 132
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeWaveformEffectEntries(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 135
    :cond_a
    return-object v0
.end method

.method private static blacklist serializeNonRepeatingEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 118
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->trySerializeNonWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 119
    .local v0, "effect":Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    if-nez v0, :cond_a

    .line 120
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeWaveformEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 123
    :cond_a
    return-object v0
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

    .line 282
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    const-string v1, "Unsupported segment for predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/PrebakedSegment;

    .line 286
    .local v0, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    nop

    .line 287
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    .line 286
    invoke-static {v1, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findById(II)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v1

    .line 289
    .local v1, "effectName":Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v2

    .line 290
    :goto_1e
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 289
    const-string v6, "Unsupported predefined effect id %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_4c

    .line 294
    nop

    .line 295
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v4

    if-ne v4, v3, :cond_3b

    move v2, v3

    .line 297
    :cond_3b
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 294
    const-string v4, "Unsupported predefined effect with should fallback %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_4c
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object v2
.end method

.method private static blacklist serializePredefinedEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 162
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v0, "Unsupported multiple segments in predefined effect: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v0
.end method

.method private static blacklist serializePrimitiveEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 174
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    nop

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 176
    .local v0, "primitives":[Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 177
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 180
    .end local v1    # "i":I
    :cond_1d
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {v1, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .registers 8
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 305
    instance-of v0, p0, Landroid/os/vibrator/PrimitiveSegment;

    const-string v1, "Unsupported segment for primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/PrimitiveSegment;

    .line 309
    .local v0, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    nop

    .line 310
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v1

    .line 312
    .local v1, "primitiveName":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    move v4, v2

    goto :goto_1e

    :cond_1d
    move v4, v3

    .line 313
    :goto_1e
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 312
    const-string v6, "Unsupported primitive effect id %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    const/4 v4, 0x0

    .line 317
    .local v4, "delayType":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v5

    const-string v6, "Unsupported primitive delay type %s"

    if-eqz v5, :cond_54

    .line 318
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v4

    .line 319
    if-eqz v4, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    .line 320
    :goto_44
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 319
    invoke-static {v2, v6, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 322
    :cond_54
    nop

    .line 323
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v3

    .line 324
    :goto_5d
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 322
    invoke-static {v2, v6, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :goto_6c
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    .line 328
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v3

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v5

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V

    .line 327
    return-object v2
.end method

.method private static blacklist serializeRepeatingEffect(Ljava/util/List;II)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 6
    .param p1, "repeatIndex"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;II)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 100
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;-><init>()V

    .line 101
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;
    if-lez p1, :cond_1b

    .line 102
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "preambleSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-static {v1, p2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeEffectEntries(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setPreamble(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 109
    .end local v1    # "preambleSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    :cond_1b
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeEffectEntries(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setRepeating(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 111
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V
    .registers 5
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 267
    .local p1, "builder":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Long;Ljava/lang/Integer;>;"
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const-string v1, "Unsupported segment for waveform effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    .line 271
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    move-object v1, p0

    check-cast v1, Landroid/os/vibrator/StepSegment;

    .line 273
    invoke-virtual {v1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 270
    const-string v2, "Unsupported segment with non-default frequency %f"

    invoke-static {v0, v2, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/os/vibrator/StepSegment;

    .line 276
    invoke-virtual {v1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->toAmplitudeInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 275
    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method private static blacklist serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .registers 3
    .param p0, "effect"    # Landroid/os/VibrationEffect$VendorEffect;

    .line 169
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static blacklist serializeWaveformEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 245
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 247
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 248
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    invoke-static {v2, v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 251
    .end local v1    # "i":I
    :cond_20
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializeWaveformEffectEntries(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 256
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;-><init>()V

    .line 258
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 259
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V

    invoke-static {v2, v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 262
    .end local v1    # "i":I
    :cond_20
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializeWaveformEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 185
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;-><init>()V

    .line 187
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 188
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/PwleSegment;

    .line 189
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 188
    const-string v4, "Unsupported segment for waveform envelope effect %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PwleSegment;

    .line 192
    .local v2, "segment":Landroid/os/vibrator/PwleSegment;
    if-nez v1, :cond_3a

    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3a

    .line 194
    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->setInitialFrequencyHz(F)V

    .line 197
    :cond_3a
    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v4

    .line 198
    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v5

    .line 197
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 187
    .end local v2    # "segment":Landroid/os/vibrator/PwleSegment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 201
    .end local v1    # "i":I
    :cond_4c
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist toAmplitudeInt(F)I
    .registers 2
    .param p0, "amplitude"    # F

    .line 332
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a

    .line 333
    const/4 v0, -0x1

    goto :goto_11

    .line 334
    :cond_a
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 332
    :goto_11
    return v0
.end method

.method private static blacklist trySerializeNonWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 141
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 143
    .local v0, "firstSegment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v1, v0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_f

    .line 144
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePredefinedEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    return-object v1

    .line 146
    :cond_f
    instance-of v1, v0, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v1, :cond_18

    .line 147
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePrimitiveEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    return-object v1

    .line 149
    :cond_18
    instance-of v1, v0, Landroid/os/vibrator/PwleSegment;

    if-eqz v1, :cond_21

    .line 150
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeWaveformEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    return-object v1

    .line 152
    :cond_21
    instance-of v1, v0, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz v1, :cond_2a

    .line 153
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeBasicEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    return-object v1

    .line 156
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist trySerializeRepeatingAmplitudeWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 6
    .param p1, "repeatingIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .line 226
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 229
    .local v0, "builder":Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 230
    if-ne p1, v1, :cond_11

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    .line 234
    :cond_11
    :try_start_11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    invoke-static {v2, v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V
    :try_end_22
    .catch Lcom/android/internal/vibrator/persistence/XmlSerializerException; {:try_start_11 .. :try_end_22} :catch_26

    .line 237
    nop

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 235
    :catch_26
    move-exception v2

    .line 236
    .local v2, "e":Lcom/android/internal/vibrator/persistence/XmlSerializerException;
    const/4 v3, 0x0

    return-object v3

    .line 240
    .end local v1    # "i":I
    .end local v2    # "e":Lcom/android/internal/vibrator/persistence/XmlSerializerException;
    :cond_29
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v1
.end method
