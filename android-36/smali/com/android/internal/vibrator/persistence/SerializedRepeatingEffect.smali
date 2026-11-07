.class public Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
.super Ljava/lang/Object;
.source "SerializedRepeatingEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

.field private final blacklist mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V
    .registers 3
    .param p1, "serializedPreamble"    # Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .param p2, "serializedRepeating"    # Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 56
    iput-object p2, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 4
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 78
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    if-eqz v0, :cond_18

    .line 79
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 80
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 81
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 82
    return-void

    .line 85
    :cond_18
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 86
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->deserialize()Landroid/os/VibrationEffect$Composed;

    move-result-object v0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 87
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedRepeatingEffect{preamble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

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
    .registers 5
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "repeating-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    if-eqz v0, :cond_1e

    .line 64
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "preamble"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 66
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    :cond_1e
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "repeating"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;->mSerializedRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 71
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    return-void
.end method
