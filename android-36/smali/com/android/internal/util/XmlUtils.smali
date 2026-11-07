.class public Lcom/android/internal/util/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/XmlUtils$ForcedTypedXmlSerializer;,
        Lcom/android/internal/util/XmlUtils$ForcedTypedXmlPullParser;,
        Lcom/android/internal/util/XmlUtils$WriteMapCallback;,
        Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o STRING_ARRAY_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1691
    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_1

    .line 1696
    :cond_d
    if-ne v1, v2, :cond_41

    .line 1700
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1704
    return-void

    .line 1701
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_41
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final greylist convertValueToBoolean(Ljava/lang/CharSequence;Z)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # Z

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 293
    return p1

    .line 296
    :cond_8
    const-string v1, "1"

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 297
    const-string/jumbo v1, "true"

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 298
    const-string v1, "TRUE"

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 299
    :cond_21
    const/4 v0, 0x1

    .line 301
    :cond_22
    return v0
.end method

.method public static final greylist convertValueToInt(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "charSeq"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # I

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    return p1

    .line 312
    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "nm":Ljava/lang/String;
    const/4 v1, 0x1

    .line 319
    .local v1, "sign":I
    const/4 v2, 0x0

    .line 320
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 321
    .local v3, "len":I
    const/16 v4, 0xa

    .line 323
    .local v4, "base":I
    const/16 v5, 0x2d

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_1f

    .line 324
    const/4 v1, -0x1

    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 328
    :cond_1f
    const/16 v5, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_45

    .line 330
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_2c

    .line 331
    return v6

    .line 333
    :cond_2c
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 335
    .local v5, "c":C
    const/16 v6, 0x78

    if-eq v6, v5, :cond_40

    const/16 v6, 0x58

    if-ne v6, v5, :cond_3b

    goto :goto_40

    .line 339
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    .line 340
    const/16 v4, 0x8

    goto :goto_44

    .line 336
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x2

    .line 337
    const/16 v4, 0x10

    .line 342
    .end local v5    # "c":C
    :goto_44
    goto :goto_51

    .line 343
    :cond_45
    const/16 v5, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_51

    .line 345
    add-int/lit8 v2, v2, 0x1

    .line 346
    const/16 v4, 0x10

    .line 349
    :cond_51
    :goto_51
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/2addr v5, v1

    return v5
.end method

.method public static final greylist-max-o convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I
    .registers 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "options"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 278
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 279
    return v0

    .line 277
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 283
    .end local v0    # "i":I
    :cond_16
    return p2
.end method

.method public static greylist-max-o convertValueToUnsignedInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    return p1

    .line 357
    :cond_7
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static blacklist makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 255
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    if-eqz v0, :cond_8

    .line 256
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    return-object v0

    .line 258
    :cond_8
    new-instance v0, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlPullParser;

    invoke-direct {v0, p0}, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlPullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public static blacklist makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;
    .registers 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    if-eqz v0, :cond_8

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    return-object v0

    .line 135
    :cond_8
    new-instance v0, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlSerializer;

    invoke-direct {v0, p0}, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlSerializer;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-object v0
.end method

.method public static final greylist nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1710
    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_1

    .line 1714
    :cond_d
    return-void
.end method

.method public static greylist-max-o nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1719
    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1720
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 1721
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p1, :cond_12

    goto :goto_1f

    .line 1724
    :cond_12
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    .line 1725
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_1e

    .line 1726
    return v1

    .line 1728
    .end local v0    # "type":I
    :cond_1e
    goto :goto_1

    .line 1722
    .restart local v0    # "type":I
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I
    .registers 7
    .param p0, "charSeq"    # Ljava/lang/CharSequence;

    .line 361
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 365
    .local v1, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 366
    .local v2, "len":I
    const/16 v3, 0xa

    .line 368
    .local v3, "base":I
    const/16 v4, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_32

    .line 370
    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_19

    .line 371
    const/4 v4, 0x0

    return v4

    .line 373
    :cond_19
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 375
    .local v4, "c":C
    const/16 v5, 0x78

    if-eq v5, v4, :cond_2d

    const/16 v5, 0x58

    if-ne v5, v4, :cond_28

    goto :goto_2d

    .line 379
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 380
    const/16 v3, 0x8

    goto :goto_3f

    .line 376
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x2

    .line 377
    const/16 v3, 0x10

    goto :goto_3f

    .line 382
    .end local v4    # "c":C
    :cond_32
    const/16 v4, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3f

    .line 383
    add-int/lit8 v1, v1, 0x1

    .line 384
    const/16 v3, 0x10

    goto :goto_40

    .line 382
    :cond_3f
    :goto_3f
    nop

    .line 387
    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method public static greylist-max-o readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1926
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    .line 1927
    .local v0, "value":[B
    if-eqz v0, :cond_d

    .line 1928
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1930
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1846
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1852
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1853
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1855
    :cond_d
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1857
    return p2

    .line 1859
    :cond_18
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1898
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1900
    :try_start_5
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v0

    .line 1901
    :catch_d
    move-exception v0

    .line 1902
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    return-object v1

    .line 1905
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_f
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1907
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    .line 1909
    :cond_1f
    return-object v1
.end method

.method public static greylist-max-o readFloatAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1819
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1821
    :try_start_5
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return v0

    .line 1822
    :catch_d
    move-exception v0

    .line 1823
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1826
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_18
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, "value":Ljava/lang/String;
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1829
    :catch_21
    move-exception v1

    .line 1830
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1749
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1751
    :try_start_5
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return v0

    .line 1752
    :catch_d
    move-exception v0

    .line 1753
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1756
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_18
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1758
    .local v0, "value":Ljava/lang/String;
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1759
    :catch_21
    move-exception v1

    .line 1760
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1733
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1734
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1736
    :cond_d
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1737
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1738
    return p2

    .line 1741
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 1742
    :catch_1d
    move-exception v1

    .line 1743
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static final greylist-max-o readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 990
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 991
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public static greylist-max-o readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1792
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1794
    :try_start_5
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return-wide v0

    .line 1795
    :catch_d
    move-exception v0

    .line 1796
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1799
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_18
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "value":Ljava/lang/String;
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return-wide v1

    .line 1802
    :catch_21
    move-exception v1

    .line 1803
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1776
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1777
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 1779
    :cond_d
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1781
    return-wide p2

    .line 1784
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-wide v1

    .line 1785
    :catch_1d
    move-exception v1

    .line 1786
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public static final greylist readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 970
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 971
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    return-object v1
.end method

.method public static final greylist-max-o readSetXml(Ljava/io/InputStream;)Ljava/util/HashSet;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1012
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1013
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1014
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    return-object v1
.end method

.method public static greylist-max-o readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1886
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist readThisArrayMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/XmlUtils$ReadMapCallback;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1084
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1086
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_18

    .line 1087
    invoke-static {p0, p2, p3, v3}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1088
    .local v2, "val":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_4d

    .line 1089
    :cond_18
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4d

    .line 1090
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1091
    return-object v0

    .line 1093
    :cond_26
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1094
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1089
    :cond_4d
    :goto_4d
    nop

    .line 1096
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 1097
    if-eq v1, v3, :cond_55

    goto :goto_9

    .line 1099
    :cond_55
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist readThisBooleanArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1487
    const-string v0, "num"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1488
    .local v0, "num":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1490
    new-array v2, v0, [Z

    .line 1491
    .local v2, "array":[Z
    const/4 v3, 0x0

    .line 1493
    .local v3, "i":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1495
    .local v4, "eventType":I
    :goto_11
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_47

    .line 1496
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1497
    const-string/jumbo v5, "value"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v2, v3

    goto :goto_89

    .line 1499
    :cond_2a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1501
    :cond_47
    const/4 v5, 0x3

    if-ne v4, v5, :cond_89

    .line 1502
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1503
    return-object v2

    .line 1504
    :cond_55
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1505
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 1507
    :cond_62
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1508
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1511
    :cond_89
    :goto_89
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    .line 1512
    const/4 v5, 0x1

    if-eq v4, v5, :cond_91

    goto :goto_11

    .line 1514
    :cond_91
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist readThisByteArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[B
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    const/4 v0, 0x0

    const-string v1, "num"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1248
    .local v0, "num":I
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1250
    .local v1, "array":[B
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 1252
    .local v2, "eventType":I
    :goto_e
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 1253
    if-lez v0, :cond_74

    .line 1254
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1255
    .local v3, "values":Ljava/lang/String;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    if-ne v4, v5, :cond_26

    .line 1259
    invoke-static {v3}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 1260
    .end local v3    # "values":Ljava/lang/String;
    goto :goto_74

    .line 1256
    .restart local v3    # "values":Ljava/lang/String;
    :cond_26
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value found in byte-array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1261
    .end local v3    # "values":Ljava/lang/String;
    :cond_3f
    const/4 v3, 0x3

    if-ne v2, v3, :cond_74

    .line 1262
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1263
    return-object v1

    .line 1265
    :cond_4d
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1267
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1270
    :cond_74
    :goto_74
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    .line 1271
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7c

    goto :goto_e

    .line 1273
    :cond_7c
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document ended before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final blacklist readThisDoubleArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    const-string v0, "num"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1394
    .local v0, "num":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1396
    new-array v2, v0, [D

    .line 1397
    .local v2, "array":[D
    const/4 v3, 0x0

    .line 1399
    .local v3, "i":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1401
    .local v4, "eventType":I
    :goto_11
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_47

    .line 1402
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1403
    const-string/jumbo v5, "value"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v2, v3

    goto :goto_89

    .line 1405
    :cond_2a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1407
    :cond_47
    const/4 v5, 0x3

    if-ne v4, v5, :cond_89

    .line 1408
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1409
    return-object v2

    .line 1410
    :cond_55
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1411
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 1413
    :cond_62
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1414
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    :cond_89
    :goto_89
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    .line 1418
    const/4 v5, 0x1

    if-eq v4, v5, :cond_91

    goto :goto_11

    .line 1420
    :cond_91
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist readThisIntArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    const-string v0, "num"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1296
    .local v0, "num":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1298
    new-array v2, v0, [I

    .line 1299
    .local v2, "array":[I
    const/4 v3, 0x0

    .line 1301
    .local v3, "i":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1303
    .local v4, "eventType":I
    :goto_11
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_47

    .line 1304
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1305
    const-string/jumbo v5, "value"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v3

    goto :goto_89

    .line 1307
    :cond_2a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1308
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    :cond_47
    const/4 v5, 0x3

    if-ne v4, v5, :cond_89

    .line 1311
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1312
    return-object v2

    .line 1313
    :cond_55
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1314
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 1316
    :cond_62
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1318
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1321
    :cond_89
    :goto_89
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    .line 1322
    const/4 v5, 0x1

    if-eq v4, v5, :cond_91

    goto :goto_11

    .line 1324
    :cond_91
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p4, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v0, "list":Ljava/util/ArrayList;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1143
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 1144
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1145
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_49

    .line 1147
    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 1148
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1149
    return-object v0

    .line 1151
    :cond_22
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1152
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1147
    :cond_49
    :goto_49
    nop

    .line 1154
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 1155
    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    goto :goto_9

    .line 1157
    :cond_52
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist readThisLongArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    const-string v0, "num"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1347
    .local v0, "num":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1349
    new-array v2, v0, [J

    .line 1350
    .local v2, "array":[J
    const/4 v3, 0x0

    .line 1352
    .local v3, "i":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1354
    .local v4, "eventType":I
    :goto_11
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_47

    .line 1355
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1356
    const-string/jumbo v5, "value"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v3

    goto :goto_89

    .line 1358
    :cond_2a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1360
    :cond_47
    const/4 v5, 0x3

    if-ne v4, v5, :cond_89

    .line 1361
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1362
    return-object v2

    .line 1363
    :cond_55
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 1366
    :cond_62
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1367
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1370
    :cond_89
    :goto_89
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    .line 1371
    const/4 v5, 0x1

    if-eq v4, v5, :cond_91

    goto :goto_11

    .line 1373
    :cond_91
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/XmlUtils$ReadMapCallback;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1056
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1058
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 1059
    const/4 v2, 0x0

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v3

    .line 1060
    .local v3, "val":Ljava/lang/Object;
    aget-object v2, p2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_4c

    .line 1061
    :cond_17
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4c

    .line 1062
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1063
    return-object v0

    .line 1065
    :cond_25
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1066
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1061
    :cond_4c
    :goto_4c
    nop

    .line 1068
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 1069
    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    goto :goto_9

    .line 1071
    :cond_55
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final blacklist readThisPrimitiveValueXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1672
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1673
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1674
    :cond_15
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1675
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_26
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1677
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_37
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1679
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1680
    :cond_48
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1681
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1683
    :cond_59
    return-object v2
.end method

.method public static final blacklist readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1180
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p4, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1206
    .local v0, "set":Ljava/util/HashSet;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1208
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 1209
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1210
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_49

    .line 1212
    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 1213
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1214
    return-object v0

    .line 1216
    :cond_22
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1217
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1212
    :cond_49
    :goto_49
    nop

    .line 1219
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 1220
    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    goto :goto_9

    .line 1222
    :cond_52
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist readThisStringArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    const-string v0, "num"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1441
    .local v0, "num":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1443
    new-array v2, v0, [Ljava/lang/String;

    .line 1444
    .local v2, "array":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1446
    .local v3, "i":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1448
    .local v4, "eventType":I
    :goto_11
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_47

    .line 1449
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1450
    const-string/jumbo v5, "value"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    goto :goto_89

    .line 1452
    :cond_2a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1454
    :cond_47
    const/4 v5, 0x3

    if-ne v4, v5, :cond_89

    .line 1455
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1456
    return-object v2

    .line 1457
    :cond_55
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1458
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 1460
    :cond_62
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1461
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    :cond_89
    :goto_89
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    .line 1465
    const/4 v5, 0x1

    if-eq v4, v5, :cond_91

    goto :goto_11

    .line 1467
    :cond_91
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final blacklist readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;
    .registers 15
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p3, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1557
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    .local v0, "valueName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1564
    .local v1, "tagName":Ljava/lang/String;
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_1b

    .line 1565
    const/4 v2, 0x0

    .local v2, "res":Ljava/lang/Object;
    goto/16 :goto_9a

    .line 1566
    .end local v2    # "res":Ljava/lang/Object;
    :cond_1b
    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 1567
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    .local v8, "value":Ljava/lang/StringBuilder;
    :goto_29
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "eventType":I
    if-eq v9, v6, :cond_8a

    .line 1570
    if-ne v10, v5, :cond_60

    .line 1571
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1572
    aput-object v0, p1, v7

    .line 1574
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1576
    :cond_43
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected end tag in <string>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1577
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1578
    :cond_60
    if-ne v10, v4, :cond_6a

    .line 1579
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1580
    :cond_6a
    if-eq v10, v3, :cond_6d

    goto :goto_29

    .line 1581
    :cond_6d
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start tag in <string>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1582
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1585
    :cond_8a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected end of document in <string>"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1587
    .end local v8    # "value":Ljava/lang/StringBuilder;
    .end local v10    # "eventType":I
    :cond_92
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readThisPrimitiveValueXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    .local v8, "res":Ljava/lang/Object;
    if-eqz v2, :cond_145

    move-object v2, v8

    .line 1649
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    :goto_9a
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "eventType":I
    if-eq v8, v6, :cond_126

    .line 1650
    const-string v8, ">: "

    if-ne v9, v5, :cond_d7

    .line 1651
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 1652
    aput-object v0, p1, v7

    .line 1654
    return-object v2

    .line 1656
    :cond_b2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end tag in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1657
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1658
    :cond_d7
    if-eq v9, v4, :cond_101

    .line 1661
    if-eq v9, v3, :cond_dc

    goto :goto_9a

    .line 1662
    :cond_dc
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start tag in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1663
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1659
    :cond_101
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected text in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1660
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1666
    :cond_126
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of document in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1589
    .end local v2    # "res":Ljava/lang/Object;
    .end local v9    # "eventType":I
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_145
    const-string v2, "byte-array"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 1590
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisByteArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v2

    .line 1591
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1593
    return-object v2

    .line 1594
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_154
    const-string v2, "int-array"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 1595
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisIntArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v2

    .line 1596
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1598
    return-object v2

    .line 1599
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_163
    const-string v2, "long-array"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 1600
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisLongArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v2

    .line 1601
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1603
    return-object v2

    .line 1604
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_172
    const-string v2, "double-array"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 1605
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisDoubleArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D

    move-result-object v2

    .line 1606
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1608
    return-object v2

    .line 1609
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_181
    const-string/jumbo v2, "string-array"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 1610
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1611
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1613
    return-object v2

    .line 1614
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_191
    const-string v2, "boolean-array"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 1615
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisBooleanArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v2

    .line 1616
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1618
    return-object v2

    .line 1619
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1a0
    const-string v2, "map"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 1620
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1621
    if-eqz p3, :cond_1b2

    .line 1622
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v2

    goto :goto_1b6

    .line 1623
    :cond_1b2
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object v2

    :goto_1b6
    nop

    .line 1624
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1626
    return-object v2

    .line 1627
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1ba
    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cc

    .line 1628
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1629
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 1630
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1632
    return-object v2

    .line 1633
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1cc
    const-string/jumbo v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 1634
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1635
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    move-result-object v2

    .line 1636
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1638
    return-object v2

    .line 1639
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1df
    if-eqz p2, :cond_1e8

    .line 1640
    invoke-interface {p2, p0, v1}, Lcom/android/internal/util/XmlUtils$ReadMapCallback;->readThisUnknownObjectXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1641
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1642
    return-object v2

    .line 1644
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1e8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1874
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1875
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_b

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public static final blacklist readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1536
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 1538
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1539
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1540
    :cond_e
    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    .line 1543
    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1547
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    .line 1548
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    goto :goto_4

    .line 1550
    :cond_1c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1544
    :cond_24
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1545
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1541
    :cond_41
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end tag at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1542
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 267
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    const/4 v1, 0x3

    if-ne v2, v1, :cond_4

    .line 269
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_16

    goto :goto_4

    .line 271
    :cond_16
    return-void
.end method

.method public static greylist-max-o writeBitmapAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1937
    if-eqz p2, :cond_15

    .line 1938
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1939
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1940
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 1942
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_15
    return-void
.end method

.method public static final blacklist writeBooleanArrayXml([ZLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 10
    .param p0, "val"    # [Z
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 788
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    return-void

    .line 793
    :cond_c
    const-string v1, "boolean-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    if-eqz p1, :cond_18

    .line 795
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    :cond_18
    array-length v2, p0

    .line 799
    .local v2, "N":I
    const-string v3, "num"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_34

    .line 802
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    const-string/jumbo v5, "value"

    aget-boolean v6, p0, v3

    invoke-interface {p2, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 807
    .end local v3    # "i":I
    :cond_34
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    return-void
.end method

.method public static greylist-max-o writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1867
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1868
    return-void

    .line 1870
    :cond_c
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1871
    return-void
.end method

.method public static greylist-max-o writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1916
    if-eqz p2, :cond_16

    .line 1917
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1918
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 1919
    return-void

    .line 1921
    :cond_e
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1923
    :cond_16
    return-void
.end method

.method public static final blacklist writeByteArrayXml([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .param p0, "val"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 596
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    return-void

    .line 601
    :cond_c
    const-string v1, "byte-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    if-eqz p1, :cond_18

    .line 603
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    :cond_18
    array-length v2, p0

    .line 607
    .local v2, "N":I
    const-string v3, "num"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    return-void
.end method

.method public static final blacklist writeDoubleArrayXml([DLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 11
    .param p0, "val"    # [D
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 710
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    return-void

    .line 715
    :cond_c
    const-string v1, "double-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    if-eqz p1, :cond_18

    .line 717
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    :cond_18
    array-length v2, p0

    .line 721
    .local v2, "N":I
    const-string v3, "num"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_34

    .line 724
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    const-string/jumbo v5, "value"

    aget-wide v6, p0, v3

    invoke-interface {p2, v0, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 729
    .end local v3    # "i":I
    :cond_34
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    return-void
.end method

.method public static greylist-max-o writeFloatAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;F)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1837
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1838
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 1839
    return-void

    .line 1841
    :cond_c
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1842
    return-void
.end method

.method public static final blacklist writeIntArrayXml([ILjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 10
    .param p0, "val"    # [I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 632
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    return-void

    .line 637
    :cond_c
    const-string v1, "int-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    if-eqz p1, :cond_18

    .line 639
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    :cond_18
    array-length v2, p0

    .line 643
    .local v2, "N":I
    const-string v3, "num"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_34

    .line 646
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const-string/jumbo v5, "value"

    aget v6, p0, v3

    invoke-interface {p2, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 651
    .end local v3    # "i":I
    :cond_34
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    return-void
.end method

.method public static greylist-max-o writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1767
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1768
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1769
    return-void

    .line 1771
    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1772
    return-void
.end method

.method public static final greylist-max-o writeListXml(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "val"    # Ljava/util/List;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 429
    .local v0, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 430
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 431
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 432
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 433
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 434
    return-void
.end method

.method public static final blacklist writeListXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 8
    .param p0, "val"    # Ljava/util/List;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 539
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    return-void

    .line 544
    :cond_c
    const-string v1, "list"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    if-eqz p1, :cond_18

    .line 546
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    :cond_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 550
    .local v2, "N":I
    const/4 v3, 0x0

    .line 551
    .local v3, "i":I
    :goto_1d
    if-ge v3, v2, :cond_29

    .line 552
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 556
    :cond_29
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    return-void
.end method

.method public static final blacklist writeLongArrayXml([JLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 11
    .param p0, "val"    # [J
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 671
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    return-void

    .line 676
    :cond_c
    const-string v1, "long-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    if-eqz p1, :cond_18

    .line 678
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    :cond_18
    array-length v2, p0

    .line 682
    .local v2, "N":I
    const-string v3, "num"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_34

    .line 685
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 686
    const-string/jumbo v5, "value"

    aget-wide v6, p0, v3

    invoke-interface {p2, v0, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 687
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 690
    .end local v3    # "i":I
    :cond_34
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 691
    return-void
.end method

.method public static greylist-max-o writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1810
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1811
    move-object v0, p0

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1812
    return-void

    .line 1814
    :cond_c
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1815
    return-void
.end method

.method public static final blacklist writeMapXml(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .registers 8
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    if-nez p0, :cond_3

    .line 509
    return-void

    .line 512
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 513
    .local v0, "s":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 515
    .local v1, "i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 517
    .local v2, "e":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 518
    .end local v2    # "e":Ljava/util/Map$Entry;
    goto :goto_b

    .line 519
    :cond_25
    return-void
.end method

.method public static final greylist writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 406
    .local v0, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 407
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 409
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 410
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 411
    return-void
.end method

.method public static final blacklist writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 453
    return-void
.end method

.method public static final blacklist writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .registers 7
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 476
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    return-void

    .line 481
    :cond_c
    const-string v1, "map"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    if-eqz p1, :cond_18

    .line 483
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    :cond_18
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 488
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    return-void
.end method

.method public static final blacklist writeSetXml(Ljava/util/Set;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .param p0, "val"    # Ljava/util/Set;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 562
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    return-void

    .line 567
    :cond_c
    const-string/jumbo v1, "set"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    if-eqz p1, :cond_19

    .line 569
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    :cond_19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 573
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3, v0, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 574
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_1d

    .line 576
    :cond_2b
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    return-void
.end method

.method public static final blacklist writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 10
    .param p0, "val"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 749
    const-string v1, "null"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    return-void

    .line 754
    :cond_c
    const-string/jumbo v1, "string-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    if-eqz p1, :cond_19

    .line 756
    const-string v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    :cond_19
    array-length v2, p0

    .line 760
    .local v2, "N":I
    const-string v3, "num"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_35

    .line 763
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    const-string/jumbo v5, "value"

    aget-object v6, p0, v3

    invoke-interface {p2, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 768
    .end local v3    # "i":I
    :cond_35
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    return-void
.end method

.method public static greylist-max-o writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1891
    if-eqz p2, :cond_a

    .line 1892
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1894
    :cond_a
    return-void
.end method

.method public static greylist-max-o writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1880
    if-eqz p2, :cond_a

    .line 1881
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1883
    :cond_a
    return-void
.end method

.method public static final blacklist writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 835
    return-void
.end method

.method private static final blacklist writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .registers 11
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    const-string v0, "name"

    const/4 v1, 0x0

    if-nez p0, :cond_13

    .line 857
    const-string v2, "null"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    if-eqz p1, :cond_f

    .line 859
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    :cond_f
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    return-void

    .line 863
    :cond_13
    instance-of v2, p0, Ljava/lang/String;

    const-string/jumbo v3, "string"

    if-eqz v2, :cond_2d

    .line 864
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    if-eqz p1, :cond_22

    .line 866
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    return-void

    .line 871
    :cond_2d
    instance-of v2, p0, Ljava/lang/Integer;

    const-string/jumbo v4, "value"

    if-eqz v2, :cond_4d

    .line 872
    const-string v2, "int"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    if-eqz p1, :cond_3e

    .line 874
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    :cond_3e
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_bc

    .line 878
    :cond_4d
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_69

    .line 879
    const-string v2, "long"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    if-eqz p1, :cond_5b

    .line 881
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    :cond_5b
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {p2, v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bc

    .line 885
    :cond_69
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_85

    .line 886
    const-string v2, "float"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    if-eqz p1, :cond_77

    .line 888
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    :cond_77
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bc

    .line 892
    :cond_85
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_a1

    .line 893
    const-string v2, "double"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    if-eqz p1, :cond_93

    .line 895
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    :cond_93
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {p2, v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bc

    .line 899
    :cond_a1
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_bd

    .line 900
    const-string v2, "boolean"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 901
    if-eqz p1, :cond_af

    .line 902
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    :cond_af
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 950
    :goto_bc
    return-void

    .line 906
    :cond_bd
    instance-of v2, p0, [B

    if-eqz v2, :cond_c8

    .line 907
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeByteArrayXml([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 908
    return-void

    .line 909
    :cond_c8
    instance-of v2, p0, [I

    if-eqz v2, :cond_d3

    .line 910
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 911
    return-void

    .line 912
    :cond_d3
    instance-of v2, p0, [J

    if-eqz v2, :cond_de

    .line 913
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeLongArrayXml([JLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 914
    return-void

    .line 915
    :cond_de
    instance-of v2, p0, [D

    if-eqz v2, :cond_e9

    .line 916
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeDoubleArrayXml([DLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 917
    return-void

    .line 918
    :cond_e9
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_f4

    .line 919
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 920
    return-void

    .line 921
    :cond_f4
    instance-of v2, p0, [Z

    if-eqz v2, :cond_ff

    .line 922
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeBooleanArrayXml([ZLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 923
    return-void

    .line 924
    :cond_ff
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_10a

    .line 925
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 926
    return-void

    .line 927
    :cond_10a
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_115

    .line 928
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 929
    return-void

    .line 930
    :cond_115
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_120

    .line 931
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeSetXml(Ljava/util/Set;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 932
    return-void

    .line 933
    :cond_120
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_137

    .line 937
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    if-eqz p1, :cond_12c

    .line 939
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    :cond_12c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 942
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 943
    return-void

    .line 944
    :cond_137
    if-eqz p3, :cond_13d

    .line 945
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/util/XmlUtils$WriteMapCallback;->writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 946
    return-void

    .line 948
    :cond_13d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeValueXml: unable to write value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final greylist-max-o writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 814
    return-void
.end method
