.class final Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;
.super Ljava/lang/Object;
.source "SerializedBasicEnvelopeEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;,
        Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

.field private final blacklist mInitialSharpness:F


# direct methods
.method constructor blacklist <init>([Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;F)V
    .registers 3
    .param p1, "controlPoints"    # [Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;
    .param p2, "initialSharpness"    # F

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

    .line 51
    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 11
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 75
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    .line 77
    .local v0, "builder":Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_12

    .line 78
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 81
    :cond_12
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 82
    .local v4, "point":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;
    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmIntensity(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F

    move-result v5

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmSharpness(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F

    move-result v6

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 81
    .end local v4    # "point":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 84
    :cond_2c
    invoke-virtual {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 85
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedBasicEnvelopeEffect{initialSharpness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, ""

    goto :goto_1c

    :cond_16
    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controlPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

    .line 91
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
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

    .line 56
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v1, "basic-envelope-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_18

    .line 59
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "initialSharpness"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mInitialSharpness:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    :cond_18
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;->mControlPoints:[Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_51

    aget-object v4, v0, v3

    .line 63
    .local v4, "point":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v6, "control-point"

    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v7, "intensity"

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmIntensity(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F

    move-result v8

    invoke-interface {p1, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v7, "sharpness"

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmSharpness(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F

    move-result v8

    invoke-interface {p1, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v7, "durationMs"

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)J

    move-result-wide v8

    invoke-interface {p1, v5, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    .end local v4    # "point":Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 70
    :cond_51
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    return-void
.end method
