.class final Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
.super Ljava/lang/Object;
.source "SerializedCompositionPrimitive.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;
    }
.end annotation


# instance fields
.field private final blacklist mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

.field private final blacklist mPrimitiveDelayMs:I

.field private final blacklist mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field private final blacklist mPrimitiveScale:F


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V
    .registers 5
    .param p1, "primitiveName"    # Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .param p2, "scale"    # F
    .param p3, "delayMs"    # I
    .param p4, "delayType"    # Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    .line 58
    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    .line 59
    iput p3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    .line 60
    iput-object p4, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 6
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 65
    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    if-eqz v0, :cond_1e

    .line 66
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->getPrimitiveId()I

    move-result v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    iget-object v3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    .line 67
    invoke-virtual {v3}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->getDelayType()I

    move-result v3

    .line 66
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    goto :goto_2b

    .line 69
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->getPrimitiveId()I

    move-result v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 72
    :goto_2b
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedCompositionPrimitive{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "primitive-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_29

    .line 80
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "scale"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    :cond_29
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    if-eqz v0, :cond_36

    .line 84
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "delayMs"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    :cond_36
    invoke-static {}, Landroid/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    if-eqz v0, :cond_55

    .line 88
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->getDelayType()I

    move-result v0

    if-eqz v0, :cond_55

    .line 89
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mDelayType:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-virtual {v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "delayType"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    :cond_55
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    return-void
.end method
