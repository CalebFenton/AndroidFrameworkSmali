.class public final Lcom/android/internal/vibrator/persistence/XmlValidator;
.super Ljava/lang/Object;
.source "XmlValidator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 114
    if-eqz p0, :cond_3

    .line 117
    return-void

    .line 115
    :cond_3
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkSerializedVibration(Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;Landroid/os/VibrationEffect;)V
    .registers 6
    .param p1, "expectedVibration"    # Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/os/VibrationEffect;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 89
    .local p0, "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    invoke-interface {p0}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->deserialize()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    .line 90
    .local v0, "deserializedVibration":Landroid/os/VibrationEffect;
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Unexpected serialized vibration %s: found deserialization %s, expected %s"

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static varargs blacklist checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_3

    .line 105
    return-void

    .line 103
    :cond_3
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlSerializerException;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/XmlSerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 54
    nop

    .line 55
    :try_start_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected start tag, got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_28} :catch_2a

    .line 59
    nop

    .line 60
    return-void

    .line 57
    :catch_2a
    move-exception v0

    .line 58
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "expectedTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 46
    nop

    .line 47
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 46
    const-string v2, "Unexpected start tag found %s, expected %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static varargs blacklist checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "expectedAttributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 65
    if-eqz p1, :cond_26

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_26

    .line 71
    :cond_6
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "tagName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v1

    .line 74
    .local v1, "attributeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_25

    .line 75
    invoke-interface {p0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "attributeName":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Unexpected attribute %s found in tag %s"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .end local v3    # "attributeName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 79
    .end local v2    # "i":I
    :cond_25
    return-void

    .line 66
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v1    # "attributeCount":I
    :cond_26
    :goto_26
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 67
    :goto_2f
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 66
    const-string v2, "Unexpected attributes in tag %s, expected no attributes"

    invoke-static {v0, v2, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method
