.class public final Lcom/android/internal/vibrator/persistence/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist readAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 297
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "tagName":Ljava/lang/String;
    :try_start_4
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_a} :catch_b

    return v1

    .line 300
    :catch_b
    move-exception v1

    .line 301
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v2, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "rawValue":Ljava/lang/String;
    invoke-static {v0, p1, v2, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v3

    throw v3
.end method

.method public static blacklist readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F
    .registers 12
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "lowerInclusive"    # F
    .param p3, "upperInclusive"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 234
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "tagName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v6

    .line 237
    .local v6, "value":F
    cmpl-float v0, v6, p2

    if-ltz v0, :cond_12

    cmpg-float v0, v6, p3

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v7, v0

    .line 238
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 239
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v3, p1

    move-object v0, p1

    .end local p1    # "attrName":Ljava/lang/String;
    .local v0, "attrName":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 237
    const-string v1, "Unexpected %s = %f in tag %s, expected %s in [%f, %f]"

    invoke-static {v7, v1, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return v6
.end method

.method public static blacklist readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FFF)F
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "lowerInclusive"    # F
    .param p3, "upperInclusive"    # F
    .param p4, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    .line 222
    return p4

    .line 225
    :cond_9
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F

    move-result v0

    return v0
.end method

.method private static blacklist readAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 286
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "tagName":Ljava/lang/String;
    :try_start_4
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_a} :catch_b

    return v1

    .line 289
    :catch_b
    move-exception v1

    .line 290
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v2, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "rawValue":Ljava/lang/String;
    invoke-static {v0, p1, v2, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v3

    throw v3
.end method

.method public static blacklist readAttributeIntInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;II)I
    .registers 12
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "lowerInclusive"    # I
    .param p3, "upperInclusive"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 204
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "tagName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 207
    .local v6, "value":I
    if-lt v6, p2, :cond_e

    if-gt v6, p3, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v7, v0

    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v0, p1

    .end local p1    # "attrName":Ljava/lang/String;
    .local v0, "attrName":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 207
    const-string v1, "Unexpected %s = %d in tag %s, expected %s in [%d, %d]"

    invoke-static {v7, v1, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return v6
.end method

.method public static blacklist readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 191
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, "value":I
    if-ltz v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 196
    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3, v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 194
    const-string v4, "Unexpected %s = %d in tag %s, expected %s >= 0"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return v1
.end method

.method public static blacklist readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    .line 183
    return p2

    .line 185
    :cond_9
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist readAttributeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 308
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "tagName":Ljava/lang/String;
    :try_start_4
    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_a} :catch_b

    return-wide v1

    .line 311
    :catch_b
    move-exception v1

    .line 312
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v2, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "rawValue":Ljava/lang/String;
    invoke-static {v0, p1, v2, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v3

    throw v3
.end method

.method public static blacklist readAttributePositiveFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 261
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v1

    .line 264
    .local v1, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 265
    :goto_10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {p1, v3, v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 264
    const-string v4, "Unexpected %s = %d in tag %s, expected %s > 0"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    return v1
.end method

.method public static blacklist readAttributePositiveFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    .line 250
    return p2

    .line 253
    :cond_9
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributePositiveFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static blacklist readAttributePositiveLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J
    .registers 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 275
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    .line 278
    .local v1, "value":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 279
    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {p1, v4, v0, p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 278
    const-string v5, "Unexpected %s = %d in tag %s, expected %s > 0"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    return-wide v1
.end method

.method public static blacklist readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 79
    .local v0, "type":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    const-string v4, "Unexpected element at document end, expected end of root tag"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 83
    .end local v0    # "type":I
    .local v1, "type":I
    const/4 v0, 0x4

    if-ne v1, v0, :cond_25

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 84
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    move v1, v0

    .line 87
    :cond_25
    if-ne v1, v2, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    const-string v0, "Unexpected tag found %s, expected document end"

    .line 88
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 87
    invoke-static {v2, v0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_36} :catch_38

    .line 91
    .end local v1    # "type":I
    nop

    .line 92
    return-void

    .line 89
    :catch_38
    move-exception v0

    .line 90
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "document end tag"

    invoke-static {v1, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readDocumentStart(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 60
    .local v0, "type":I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Unexpected type, expected %d"

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 66
    nop

    .line 67
    .end local v0    # "type":I
    return-void

    .line 64
    :catch_1b
    move-exception v0

    .line 65
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "document start tag"

    invoke-static {v1, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readDocumentStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "expectedRootTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentStart(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 46
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "tagName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Unexpected root tag found %s, expected %s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static blacklist readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public static blacklist readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "tagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v0

    .line 171
    .local v0, "hasNestedTag":Z
    xor-int/lit8 v1, v0, 0x1

    .line 172
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 171
    const-string v3, "Unexpected nested tag %s found in tag %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public static blacklist readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z
    .registers 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 109
    .local v0, "type":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, p1, :cond_f

    .line 111
    return v2

    .line 114
    :cond_f
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move-result v3
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_13} :catch_3d

    .line 117
    .end local v0    # "type":I
    .local v3, "type":I
    nop

    .line 119
    const/4 v0, 0x2

    const/4 v4, 0x1

    if-ne v3, v0, :cond_21

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v5, p1, 0x1

    if-ne v0, v5, :cond_21

    .line 120
    return v4

    .line 124
    :cond_21
    if-ne v3, v1, :cond_2a

    .line 125
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v4, v2

    .line 127
    :goto_2b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    const-string v1, "Unexpected tag found %s, expected end tag at depth %d"

    invoke-static {v4, v1, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return v2

    .line 115
    .end local v3    # "type":I
    :catch_3d
    move-exception v0

    .line 116
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readNextText(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    .line 143
    .local v0, "type":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "Unexpected event %s of type %d, expected text event inside tag %s"

    .line 145
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 143
    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 148
    .end local v0    # "type":I
    nop

    .line 149
    return-void

    .line 146
    :catch_1d
    move-exception v0

    .line 147
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v1, "text event"

    invoke-static {v1, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;->createFromPullParserException(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;

    move-result-object v1

    throw v1
.end method
