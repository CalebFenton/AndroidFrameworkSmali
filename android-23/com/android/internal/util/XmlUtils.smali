.class public Lcom/android/internal/util/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/XmlUtils$WriteMapCallback;,
        Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    }
.end annotation


# static fields
.field private static final STRING_ARRAY_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1484
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4
    move-result v0

    #@5
    .local v0, "type":I
    if-eq v0, v2, :cond_1

    #@7
    .line 1485
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1489
    :cond_1
    if-eq v0, v2, :cond_2

    #@c
    .line 1490
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@e
    const-string/jumbo v2, "No start tag found"

    #@11
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 1493
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 1494
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Unexpected start tag: found "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 1495
    const-string/jumbo v3, ", expected "

    #@38
    .line 1494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 1481
    :cond_3
    return-void
.end method

.method public static final convertValueToBoolean(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    .line 79
    .local v0, "result":Z
    if-nez p0, :cond_0

    #@3
    .line 80
    return p1

    #@4
    .line 82
    :cond_0
    const-string/jumbo v1, "1"

    #@7
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_1

    #@d
    .line 83
    const-string/jumbo v1, "true"

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 82
    if-nez v1, :cond_1

    #@16
    .line 84
    const-string/jumbo v1, "TRUE"

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 82
    if-eqz v1, :cond_2

    #@1f
    .line 85
    :cond_1
    const/4 v0, 0x1

    #@20
    .line 87
    :cond_2
    return v0
.end method

.method public static final convertValueToInt(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "charSeq"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 93
    if-nez p0, :cond_0

    #@3
    .line 94
    return p1

    #@4
    .line 96
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 102
    .local v4, "nm":Ljava/lang/String;
    const/4 v5, 0x1

    #@9
    .line 103
    .local v5, "sign":I
    const/4 v2, 0x0

    #@a
    .line 104
    .local v2, "index":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    .line 105
    .local v3, "len":I
    const/16 v0, 0xa

    #@10
    .line 107
    .local v0, "base":I
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v6

    #@14
    const/16 v7, 0x2d

    #@16
    if-ne v7, v6, :cond_1

    #@18
    .line 108
    const/4 v5, -0x1

    #@19
    .line 109
    const/4 v2, 0x1

    #@1a
    .line 112
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v6

    #@1e
    const/16 v7, 0x30

    #@20
    if-ne v7, v6, :cond_6

    #@22
    .line 114
    add-int/lit8 v6, v3, -0x1

    #@24
    if-ne v2, v6, :cond_2

    #@26
    .line 115
    return v8

    #@27
    .line 117
    :cond_2
    add-int/lit8 v6, v2, 0x1

    #@29
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v1

    #@2d
    .line 119
    .local v1, "c":C
    const/16 v6, 0x78

    #@2f
    if-eq v6, v1, :cond_3

    #@31
    const/16 v6, 0x58

    #@33
    if-ne v6, v1, :cond_5

    #@35
    .line 120
    :cond_3
    add-int/lit8 v2, v2, 0x2

    #@37
    .line 121
    const/16 v0, 0x10

    #@39
    .line 133
    .end local v1    # "c":C
    :cond_4
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@40
    move-result v6

    #@41
    mul-int/2addr v6, v5

    #@42
    return v6

    #@43
    .line 123
    .restart local v1    # "c":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@45
    .line 124
    const/16 v0, 0x8

    #@47
    goto :goto_0

    #@48
    .line 127
    .end local v1    # "c":C
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v6

    #@4c
    const/16 v7, 0x23

    #@4e
    if-ne v7, v6, :cond_4

    #@50
    .line 129
    add-int/lit8 v2, v2, 0x1

    #@52
    .line 130
    const/16 v0, 0x10

    #@54
    goto :goto_0
.end method

.method public static final convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "options"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 64
    if-eqz p0, :cond_1

    #@2
    .line 65
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 66
    aget-object v1, p1, v0

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 67
    return v0

    #@f
    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 71
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static convertValueToUnsignedInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 137
    if-nez p0, :cond_0

    #@2
    .line 138
    return p1

    #@3
    .line 141
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1502
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3
    move-result v0

    #@4
    .local v0, "type":I
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_1

    #@7
    .line 1503
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1499
    :cond_1
    return-void
.end method

.method public static nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1511
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4
    move-result v0

    #@5
    .line 1512
    .local v0, "type":I
    if-eq v0, v3, :cond_1

    #@7
    .line 1513
    const/4 v1, 0x3

    #@8
    if-ne v0, v1, :cond_2

    #@a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@d
    move-result v1

    #@e
    if-ne v1, p1, :cond_2

    #@10
    .line 1514
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 1516
    :cond_2
    const/4 v1, 0x2

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 1517
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v2, p1, 0x1

    #@1b
    if-ne v1, v2, :cond_0

    #@1d
    .line 1518
    return v3
.end method

.method public static parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "charSeq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 145
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 148
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    #@6
    .line 149
    .local v2, "index":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    .line 150
    .local v3, "len":I
    const/16 v0, 0xa

    #@c
    .line 152
    .local v0, "base":I
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v5

    #@10
    const/16 v6, 0x30

    #@12
    if-ne v6, v5, :cond_4

    #@14
    .line 154
    add-int/lit8 v5, v3, -0x1

    #@16
    if-nez v5, :cond_0

    #@18
    .line 155
    return v7

    #@19
    .line 157
    :cond_0
    const/4 v5, 0x1

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v1

    #@1e
    .line 159
    .local v1, "c":C
    const/16 v5, 0x78

    #@20
    if-eq v5, v1, :cond_1

    #@22
    const/16 v5, 0x58

    #@24
    if-ne v5, v1, :cond_3

    #@26
    .line 160
    :cond_1
    const/4 v2, 0x2

    #@27
    .line 161
    const/16 v0, 0x10

    #@29
    .line 171
    .end local v1    # "c":C
    :cond_2
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@30
    move-result-wide v6

    #@31
    long-to-int v5, v6

    #@32
    return v5

    #@33
    .line 163
    .restart local v1    # "c":C
    :cond_3
    const/4 v2, 0x1

    #@34
    .line 164
    const/16 v0, 0x8

    #@36
    goto :goto_0

    #@37
    .line 166
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v5

    #@3b
    const/16 v6, 0x23

    #@3d
    if-ne v6, v5, :cond_2

    #@3f
    .line 167
    const/4 v2, 0x1

    #@40
    .line 168
    const/16 v0, 0x10

    #@42
    goto :goto_0
.end method

.method public static readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1643
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 1644
    .local v0, "value":[B
    if-eqz v0, :cond_0

    #@7
    .line 1645
    array-length v1, v0

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1647
    :cond_0
    return-object v1
.end method

.method public static readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1584
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1585
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    return v1
.end method

.method public static readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1590
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1591
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1592
    return p2

    #@8
    .line 1594
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public static readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1627
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1628
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1629
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1631
    :cond_0
    return-object v1
.end method

.method public static readFloatAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    .locals 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1570
    const/4 v2, 0x0

    #@1
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1572
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 1573
    :catch_0
    move-exception v0

    #@b
    .line 1574
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "problem parsing "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "="

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, " as long"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
.end method

.method public static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1533
    const/4 v2, 0x0

    #@1
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1535
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 1536
    :catch_0
    move-exception v0

    #@b
    .line 1537
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "problem parsing "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "="

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, " as int"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
.end method

.method public static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 1524
    const/4 v2, 0x0

    #@1
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1526
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 1527
    :catch_0
    move-exception v0

    #@b
    .line 1528
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static final readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 759
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v0

    #@4
    .line 760
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@d
    .line 761
    const/4 v1, 0x1

    #@e
    new-array v1, v1, [Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/ArrayList;

    #@16
    return-object v1
.end method

.method public static readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1556
    const/4 v2, 0x0

    #@1
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1558
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-wide v2

    #@9
    return-wide v2

    #@a
    .line 1559
    :catch_0
    move-exception v0

    #@b
    .line 1560
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "problem parsing "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "="

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, " as long"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
.end method

.method public static readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 1547
    const/4 v2, 0x0

    #@1
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1549
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-wide v2

    #@9
    return-wide v2

    #@a
    .line 1550
    :catch_0
    move-exception v0

    #@b
    .line 1551
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public static final readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
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

    #@0
    .prologue
    .line 738
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v0

    #@4
    .line 739
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@d
    .line 740
    const/4 v1, 0x1

    #@e
    new-array v1, v1, [Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/HashMap;

    #@16
    return-object v1
.end method

.method public static final readSetXml(Ljava/io/InputStream;)Ljava/util/HashSet;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 782
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v0

    #@4
    .line 783
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@8
    .line 784
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/util/HashSet;

    #@11
    return-object v1
.end method

.method public static readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1616
    const/4 v0, 0x0

    #@1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/XmlUtils$ReadMapCallback;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
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

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 854
    new-instance v1, Landroid/util/ArrayMap;

    #@3
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@6
    .line 856
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@9
    move-result v0

    #@a
    .line 858
    .local v0, "eventType":I
    :cond_0
    const/4 v3, 0x2

    #@b
    if-ne v0, v3, :cond_2

    #@d
    .line 859
    invoke-static {p0, p2, p3, v4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    .line 860
    .local v2, "val":Ljava/lang/Object;
    const/4 v3, 0x0

    #@12
    aget-object v3, p2, v3

    #@14
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 868
    .end local v2    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1a
    move-result v0

    #@1b
    .line 869
    if-ne v0, v4, :cond_0

    #@1d
    .line 871
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@1f
    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Document ended before "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, " end tag"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 871
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3

    #@3e
    .line 861
    :cond_2
    const/4 v3, 0x3

    #@3f
    if-ne v0, v3, :cond_1

    #@41
    .line 862
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_3

    #@4b
    .line 863
    return-object v1

    #@4c
    .line 865
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@4e
    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Expected "

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    const-string/jumbo v5, " end tag at: "

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 865
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@74
    throw v3
.end method

.method public static final readThisBooleanArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1267
    :try_start_0
    const-string/jumbo v6, "num"

    #@3
    const/4 v7, 0x0

    #@4
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v5

    #@c
    .line 1273
    .local v5, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f
    .line 1275
    new-array v0, v5, [Z

    #@11
    .line 1276
    .local v0, "array":[Z
    const/4 v4, 0x0

    #@12
    .line 1278
    .local v4, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@15
    move-result v3

    #@16
    .line 1280
    .local v3, "eventType":I
    :cond_0
    const/4 v6, 0x2

    #@17
    if-ne v3, v6, :cond_3

    #@19
    .line 1281
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, "item"

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 1283
    :try_start_1
    const-string/jumbo v6, "value"

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@35
    move-result v6

    #@36
    aput-boolean v6, v0, v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@38
    .line 1302
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3b
    move-result v3

    #@3c
    .line 1303
    const/4 v6, 0x1

    #@3d
    if-ne v3, v6, :cond_0

    #@3f
    .line 1305
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@41
    new-instance v7, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v8, "Document ended before "

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    const-string/jumbo v8, " end tag"

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v6

    #@60
    .line 1270
    .end local v0    # "array":[Z
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v5    # "num":I
    :catch_0
    move-exception v2

    #@61
    .line 1271
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@63
    const-string/jumbo v7, "Not a number in num attribute in string-array"

    #@66
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@69
    throw v6

    #@6a
    .line 1268
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@6b
    .line 1269
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@6d
    const-string/jumbo v7, "Need num attribute in string-array"

    #@70
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 1286
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "array":[Z
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v5    # "num":I
    :catch_2
    move-exception v2

    #@75
    .line 1287
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@77
    const-string/jumbo v7, "Not a number in value attribute in item"

    #@7a
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v6

    #@7e
    .line 1284
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@7f
    .line 1285
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@81
    const-string/jumbo v7, "Need value attribute in item"

    #@84
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@87
    throw v6

    #@88
    .line 1290
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@8a
    new-instance v7, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v8, "Expected item tag at: "

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v6

    #@a6
    .line 1292
    :cond_3
    const/4 v6, 0x3

    #@a7
    if-ne v3, v6, :cond_1

    #@a9
    .line 1293
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v6

    #@b1
    if-eqz v6, :cond_4

    #@b3
    .line 1294
    return-object v0

    #@b4
    .line 1295
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b7
    move-result-object v6

    #@b8
    const-string/jumbo v7, "item"

    #@bb
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v6

    #@bf
    if-eqz v6, :cond_5

    #@c1
    .line 1296
    add-int/lit8 v4, v4, 0x1

    #@c3
    goto/16 :goto_0

    #@c5
    .line 1298
    :cond_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@c7
    new-instance v7, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v8, "Expected "

    #@cf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v7

    #@d7
    const-string/jumbo v8, " end tag at: "

    #@da
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v7

    #@de
    .line 1299
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e1
    move-result-object v8

    #@e2
    .line 1298
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v7

    #@e6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v7

    #@ea
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v6
.end method

.method public static final readThisDoubleArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1147
    :try_start_0
    const-string/jumbo v6, "num"

    #@3
    const/4 v7, 0x0

    #@4
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v5

    #@c
    .line 1153
    .local v5, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f
    .line 1155
    new-array v0, v5, [D

    #@11
    .line 1156
    .local v0, "array":[D
    const/4 v4, 0x0

    #@12
    .line 1158
    .local v4, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@15
    move-result v3

    #@16
    .line 1160
    .local v3, "eventType":I
    :cond_0
    const/4 v6, 0x2

    #@17
    if-ne v3, v6, :cond_3

    #@19
    .line 1161
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, "item"

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 1163
    :try_start_1
    const-string/jumbo v6, "value"

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@31
    move-result-wide v6

    #@32
    aput-wide v6, v0, v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@34
    .line 1182
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@37
    move-result v3

    #@38
    .line 1183
    const/4 v6, 0x1

    #@39
    if-ne v3, v6, :cond_0

    #@3b
    .line 1185
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@3d
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "Document ended before "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    const-string/jumbo v8, " end tag"

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v6

    #@5c
    .line 1150
    .end local v0    # "array":[D
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v5    # "num":I
    :catch_0
    move-exception v2

    #@5d
    .line 1151
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    const-string/jumbo v7, "Not a number in num attribute in double-array"

    #@62
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6

    #@66
    .line 1148
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@67
    .line 1149
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@69
    const-string/jumbo v7, "Need num attribute in double-array"

    #@6c
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v6

    #@70
    .line 1166
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "array":[D
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v5    # "num":I
    :catch_2
    move-exception v2

    #@71
    .line 1167
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@73
    const-string/jumbo v7, "Not a number in value attribute in item"

    #@76
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@79
    throw v6

    #@7a
    .line 1164
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@7b
    .line 1165
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@7d
    const-string/jumbo v7, "Need value attribute in item"

    #@80
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v6

    #@84
    .line 1170
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@86
    new-instance v7, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v8, "Expected item tag at: "

    #@8e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6

    #@a2
    .line 1172
    :cond_3
    const/4 v6, 0x3

    #@a3
    if-ne v3, v6, :cond_1

    #@a5
    .line 1173
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v6

    #@ad
    if-eqz v6, :cond_4

    #@af
    .line 1174
    return-object v0

    #@b0
    .line 1175
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    const-string/jumbo v7, "item"

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v6

    #@bb
    if-eqz v6, :cond_5

    #@bd
    .line 1176
    add-int/lit8 v4, v4, 0x1

    #@bf
    goto/16 :goto_0

    #@c1
    .line 1178
    :cond_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@c3
    new-instance v7, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v8, "Expected "

    #@cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    const-string/jumbo v8, " end tag at: "

    #@d6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    .line 1179
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@dd
    move-result-object v8

    #@de
    .line 1178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v6
.end method

.method public static final readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1018
    :try_start_0
    const-string/jumbo v6, "num"

    #@3
    const/4 v7, 0x0

    #@4
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v5

    #@c
    .line 1026
    .local v5, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f
    .line 1028
    new-array v0, v5, [I

    #@11
    .line 1029
    .local v0, "array":[I
    const/4 v4, 0x0

    #@12
    .line 1031
    .local v4, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@15
    move-result v3

    #@16
    .line 1033
    .local v3, "eventType":I
    :cond_0
    const/4 v6, 0x2

    #@17
    if-ne v3, v6, :cond_3

    #@19
    .line 1034
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, "item"

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 1037
    :try_start_1
    const-string/jumbo v6, "value"

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 1036
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@31
    move-result v6

    #@32
    aput v6, v0, v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@34
    .line 1060
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@37
    move-result v3

    #@38
    .line 1061
    const/4 v6, 0x1

    #@39
    if-ne v3, v6, :cond_0

    #@3b
    .line 1063
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@3d
    .line 1064
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "Document ended before "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    const-string/jumbo v8, " end tag"

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    .line 1063
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v6

    #@5c
    .line 1022
    .end local v0    # "array":[I
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v5    # "num":I
    :catch_0
    move-exception v2

    #@5d
    .line 1023
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    .line 1024
    const-string/jumbo v7, "Not a number in num attribute in byte-array"

    #@62
    .line 1023
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6

    #@66
    .line 1019
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@67
    .line 1020
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@69
    .line 1021
    const-string/jumbo v7, "Need num attribute in byte-array"

    #@6c
    .line 1020
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v6

    #@70
    .line 1041
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "array":[I
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v5    # "num":I
    :catch_2
    move-exception v2

    #@71
    .line 1042
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@73
    .line 1043
    const-string/jumbo v7, "Not a number in value attribute in item"

    #@76
    .line 1042
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@79
    throw v6

    #@7a
    .line 1038
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@7b
    .line 1039
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@7d
    .line 1040
    const-string/jumbo v7, "Need value attribute in item"

    #@80
    .line 1039
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v6

    #@84
    .line 1046
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@86
    .line 1047
    new-instance v7, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v8, "Expected item tag at: "

    #@8e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    .line 1046
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6

    #@a2
    .line 1049
    :cond_3
    const/4 v6, 0x3

    #@a3
    if-ne v3, v6, :cond_1

    #@a5
    .line 1050
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v6

    #@ad
    if-eqz v6, :cond_4

    #@af
    .line 1051
    return-object v0

    #@b0
    .line 1052
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    const-string/jumbo v7, "item"

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v6

    #@bb
    if-eqz v6, :cond_5

    #@bd
    .line 1053
    add-int/lit8 v4, v4, 0x1

    #@bf
    goto/16 :goto_0

    #@c1
    .line 1055
    :cond_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@c3
    .line 1056
    new-instance v7, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v8, "Expected "

    #@cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    const-string/jumbo v8, " end tag at: "

    #@d6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    .line 1057
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@dd
    move-result-object v8

    #@de
    .line 1056
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    .line 1055
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v6
.end method

.method public static final readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 891
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static final readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
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

    #@0
    .prologue
    .line 911
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 913
    .local v1, "list":Ljava/util/ArrayList;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@8
    move-result v0

    #@9
    .line 915
    .local v0, "eventType":I
    :cond_0
    const/4 v3, 0x2

    #@a
    if-ne v0, v3, :cond_2

    #@c
    .line 916
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    .line 917
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 926
    .end local v2    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@16
    move-result v0

    #@17
    .line 927
    const/4 v3, 0x1

    #@18
    if-ne v0, v3, :cond_0

    #@1a
    .line 929
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@1c
    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Document ended before "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " end tag"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 929
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 919
    :cond_2
    const/4 v3, 0x3

    #@3c
    if-ne v0, v3, :cond_1

    #@3e
    .line 920
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_3

    #@48
    .line 921
    return-object v1

    #@49
    .line 923
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@4b
    .line 924
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v5, "Expected "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string/jumbo v5, " end tag at: "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 923
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3
.end method

.method public static final readThisLongArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1087
    :try_start_0
    const-string/jumbo v6, "num"

    #@3
    const/4 v7, 0x0

    #@4
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v5

    #@c
    .line 1093
    .local v5, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f
    .line 1095
    new-array v0, v5, [J

    #@11
    .line 1096
    .local v0, "array":[J
    const/4 v4, 0x0

    #@12
    .line 1098
    .local v4, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@15
    move-result v3

    #@16
    .line 1100
    .local v3, "eventType":I
    :cond_0
    const/4 v6, 0x2

    #@17
    if-ne v3, v6, :cond_3

    #@19
    .line 1101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, "item"

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 1103
    :try_start_1
    const-string/jumbo v6, "value"

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31
    move-result-wide v6

    #@32
    aput-wide v6, v0, v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@34
    .line 1122
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@37
    move-result v3

    #@38
    .line 1123
    const/4 v6, 0x1

    #@39
    if-ne v3, v6, :cond_0

    #@3b
    .line 1125
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@3d
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "Document ended before "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    const-string/jumbo v8, " end tag"

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v6

    #@5c
    .line 1090
    .end local v0    # "array":[J
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v5    # "num":I
    :catch_0
    move-exception v2

    #@5d
    .line 1091
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    const-string/jumbo v7, "Not a number in num attribute in long-array"

    #@62
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6

    #@66
    .line 1088
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@67
    .line 1089
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@69
    const-string/jumbo v7, "Need num attribute in long-array"

    #@6c
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v6

    #@70
    .line 1106
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "array":[J
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v5    # "num":I
    :catch_2
    move-exception v2

    #@71
    .line 1107
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@73
    const-string/jumbo v7, "Not a number in value attribute in item"

    #@76
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@79
    throw v6

    #@7a
    .line 1104
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@7b
    .line 1105
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@7d
    const-string/jumbo v7, "Need value attribute in item"

    #@80
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v6

    #@84
    .line 1110
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@86
    new-instance v7, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v8, "Expected item tag at: "

    #@8e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6

    #@a2
    .line 1112
    :cond_3
    const/4 v6, 0x3

    #@a3
    if-ne v3, v6, :cond_1

    #@a5
    .line 1113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v6

    #@ad
    if-eqz v6, :cond_4

    #@af
    .line 1114
    return-object v0

    #@b0
    .line 1115
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    const-string/jumbo v7, "item"

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v6

    #@bb
    if-eqz v6, :cond_5

    #@bd
    .line 1116
    add-int/lit8 v4, v4, 0x1

    #@bf
    goto/16 :goto_0

    #@c1
    .line 1118
    :cond_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@c3
    new-instance v7, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v8, "Expected "

    #@cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    const-string/jumbo v8, " end tag at: "

    #@d6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    .line 1119
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@dd
    move-result-object v8

    #@de
    .line 1118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v6
.end method

.method public static final readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
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

    #@0
    .prologue
    .line 803
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/XmlUtils$ReadMapCallback;",
            ")",
            "Ljava/util/HashMap",
            "<",
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

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 825
    new-instance v1, Ljava/util/HashMap;

    #@3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 827
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@9
    move-result v0

    #@a
    .line 829
    .local v0, "eventType":I
    :cond_0
    const/4 v3, 0x2

    #@b
    if-ne v0, v3, :cond_2

    #@d
    .line 830
    invoke-static {p0, p2, p3, v4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    .line 831
    .local v2, "val":Ljava/lang/Object;
    aget-object v3, p2, v4

    #@13
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 839
    .end local v2    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@19
    move-result v0

    #@1a
    .line 840
    const/4 v3, 0x1

    #@1b
    if-ne v0, v3, :cond_0

    #@1d
    .line 842
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@1f
    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Document ended before "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, " end tag"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 842
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3

    #@3e
    .line 832
    :cond_2
    const/4 v3, 0x3

    #@3f
    if-ne v0, v3, :cond_1

    #@41
    .line 833
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_3

    #@4b
    .line 834
    return-object v1

    #@4c
    .line 836
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@4e
    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Expected "

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    const-string/jumbo v5, " end tag at: "

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 836
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@74
    throw v3
.end method

.method private static final readThisPrimitiveValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1460
    :try_start_0
    const-string/jumbo v2, "int"

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1461
    const-string/jumbo v2, "value"

    #@d
    const/4 v3, 0x0

    #@e
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 1462
    :cond_0
    const-string/jumbo v2, "long"

    #@1e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1463
    const-string/jumbo v2, "value"

    #@27
    const/4 v3, 0x0

    #@28
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 1464
    :cond_1
    const-string/jumbo v2, "float"

    #@34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 1465
    new-instance v2, Ljava/lang/Float;

    #@3c
    const-string/jumbo v3, "value"

    #@3f
    const/4 v4, 0x0

    #@40
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    #@47
    return-object v2

    #@48
    .line 1466
    :cond_2
    const-string/jumbo v2, "double"

    #@4b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_3

    #@51
    .line 1467
    new-instance v2, Ljava/lang/Double;

    #@53
    const-string/jumbo v3, "value"

    #@56
    const/4 v4, 0x0

    #@57
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    #@5e
    return-object v2

    #@5f
    .line 1468
    :cond_3
    const-string/jumbo v2, "boolean"

    #@62
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_4

    #@68
    .line 1469
    const-string/jumbo v2, "value"

    #@6b
    const/4 v3, 0x0

    #@6c
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    move-result-object v2

    #@74
    return-object v2

    #@75
    .line 1471
    :cond_4
    return-object v3

    #@76
    .line 1475
    :catch_0
    move-exception v1

    #@77
    .line 1476
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@79
    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v4, "Not a number in value attribute in <"

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    const-string/jumbo v4, ">"

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    .line 1476
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@97
    throw v2

    #@98
    .line 1473
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    #@99
    .line 1474
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@9b
    new-instance v3, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v4, "Need value attribute in <"

    #@a3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    const-string/jumbo v4, ">"

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v2
.end method

.method public static final readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 952
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static final readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
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

    #@0
    .prologue
    .line 976
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 978
    .local v1, "set":Ljava/util/HashSet;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@8
    move-result v0

    #@9
    .line 980
    .local v0, "eventType":I
    :cond_0
    const/4 v3, 0x2

    #@a
    if-ne v0, v3, :cond_2

    #@c
    .line 981
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    .line 982
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@13
    .line 991
    .end local v2    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@16
    move-result v0

    #@17
    .line 992
    const/4 v3, 0x1

    #@18
    if-ne v0, v3, :cond_0

    #@1a
    .line 994
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@1c
    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Document ended before "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " end tag"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 994
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 984
    :cond_2
    const/4 v3, 0x3

    #@3c
    if-ne v0, v3, :cond_1

    #@3e
    .line 985
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_3

    #@48
    .line 986
    return-object v1

    #@49
    .line 988
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@4b
    .line 989
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v5, "Expected "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string/jumbo v5, " end tag at: "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 988
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3
.end method

.method public static final readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1207
    :try_start_0
    const-string/jumbo v6, "num"

    #@3
    const/4 v7, 0x0

    #@4
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v5

    #@c
    .line 1213
    .local v5, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f
    .line 1215
    new-array v0, v5, [Ljava/lang/String;

    #@11
    .line 1216
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    #@12
    .line 1218
    .local v4, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@15
    move-result v3

    #@16
    .line 1220
    .local v3, "eventType":I
    :cond_0
    const/4 v6, 0x2

    #@17
    if-ne v3, v6, :cond_3

    #@19
    .line 1221
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, "item"

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 1223
    :try_start_1
    const-string/jumbo v6, "value"

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    aput-object v6, v0, v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@30
    .line 1242
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@33
    move-result v3

    #@34
    .line 1243
    const/4 v6, 0x1

    #@35
    if-ne v3, v6, :cond_0

    #@37
    .line 1245
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@39
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "Document ended before "

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    const-string/jumbo v8, " end tag"

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@57
    throw v6

    #@58
    .line 1210
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v5    # "num":I
    :catch_0
    move-exception v2

    #@59
    .line 1211
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@5b
    const-string/jumbo v7, "Not a number in num attribute in string-array"

    #@5e
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@61
    throw v6

    #@62
    .line 1208
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@63
    .line 1209
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@65
    const-string/jumbo v7, "Need num attribute in string-array"

    #@68
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v6

    #@6c
    .line 1226
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v5    # "num":I
    :catch_2
    move-exception v2

    #@6d
    .line 1227
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@6f
    const-string/jumbo v7, "Not a number in value attribute in item"

    #@72
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@75
    throw v6

    #@76
    .line 1224
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@77
    .line 1225
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@79
    const-string/jumbo v7, "Need value attribute in item"

    #@7c
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v6

    #@80
    .line 1230
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@82
    new-instance v7, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v8, "Expected item tag at: "

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v6

    #@9e
    .line 1232
    :cond_3
    const/4 v6, 0x3

    #@9f
    if-ne v3, v6, :cond_1

    #@a1
    .line 1233
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v6

    #@a9
    if-eqz v6, :cond_4

    #@ab
    .line 1234
    return-object v0

    #@ac
    .line 1235
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    const-string/jumbo v7, "item"

    #@b3
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v6

    #@b7
    if-eqz v6, :cond_5

    #@b9
    .line 1236
    add-int/lit8 v4, v4, 0x1

    #@bb
    goto/16 :goto_0

    #@bd
    .line 1238
    :cond_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@bf
    new-instance v7, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v8, "Expected "

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    const-string/jumbo v8, " end tag at: "

    #@d2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    .line 1239
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    .line 1238
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v7

    #@de
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v7

    #@e2
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v6
.end method

.method private static final readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p3, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    .line 1348
    const-string/jumbo v5, "name"

    #@8
    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 1349
    .local v4, "valueName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 1355
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "null"

    #@13
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 1356
    const/4 v1, 0x0

    #@1a
    .line 1435
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d
    move-result v0

    #@1e
    .local v0, "eventType":I
    if-eq v0, v8, :cond_15

    #@20
    .line 1436
    if-ne v0, v10, :cond_13

    #@22
    .line 1437
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_12

    #@2c
    .line 1438
    aput-object v4, p1, v7

    #@2e
    .line 1440
    return-object v1

    #@2f
    .line 1357
    .end local v0    # "eventType":I
    :cond_1
    const-string/jumbo v5, "string"

    #@32
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_7

    #@38
    .line 1358
    const-string/jumbo v3, ""

    #@3b
    .line 1360
    .local v3, "value":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3e
    move-result v0

    #@3f
    .restart local v0    # "eventType":I
    if-eq v0, v8, :cond_6

    #@41
    .line 1361
    if-ne v0, v10, :cond_4

    #@43
    .line 1362
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    const-string/jumbo v6, "string"

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_3

    #@50
    .line 1363
    aput-object v4, p1, v7

    #@52
    .line 1365
    return-object v3

    #@53
    .line 1367
    :cond_3
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@55
    .line 1368
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v7, "Unexpected end tag in <string>: "

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    .line 1367
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@70
    throw v5

    #@71
    .line 1369
    :cond_4
    const/4 v5, 0x4

    #@72
    if-ne v0, v5, :cond_5

    #@74
    .line 1370
    new-instance v5, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    goto :goto_0

    #@8a
    .line 1371
    :cond_5
    if-ne v0, v9, :cond_2

    #@8c
    .line 1372
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@8e
    .line 1373
    new-instance v6, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v7, "Unexpected start tag in <string>: "

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v6

    #@a6
    .line 1372
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v5

    #@aa
    .line 1376
    :cond_6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@ac
    .line 1377
    const-string/jumbo v6, "Unexpected end of document in <string>"

    #@af
    .line 1376
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v5

    #@b3
    .line 1378
    .end local v0    # "eventType":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readThisPrimitiveValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    #@b6
    move-result-object v1

    #@b7
    .local v1, "res":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@b9
    .line 1380
    const-string/jumbo v5, "int-array"

    #@bc
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v5

    #@c0
    if-eqz v5, :cond_8

    #@c2
    .line 1381
    const-string/jumbo v5, "int-array"

    #@c5
    invoke-static {p0, v5, p1}, Lcom/android/internal/util/XmlUtils;->readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    #@c8
    move-result-object v1

    #@c9
    .line 1382
    aput-object v4, p1, v7

    #@cb
    .line 1384
    return-object v1

    #@cc
    .line 1385
    :cond_8
    const-string/jumbo v5, "long-array"

    #@cf
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v5

    #@d3
    if-eqz v5, :cond_9

    #@d5
    .line 1386
    const-string/jumbo v5, "long-array"

    #@d8
    invoke-static {p0, v5, p1}, Lcom/android/internal/util/XmlUtils;->readThisLongArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J

    #@db
    move-result-object v1

    #@dc
    .line 1387
    aput-object v4, p1, v7

    #@de
    .line 1389
    return-object v1

    #@df
    .line 1390
    :cond_9
    const-string/jumbo v5, "double-array"

    #@e2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v5

    #@e6
    if-eqz v5, :cond_a

    #@e8
    .line 1391
    const-string/jumbo v5, "double-array"

    #@eb
    invoke-static {p0, v5, p1}, Lcom/android/internal/util/XmlUtils;->readThisDoubleArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D

    #@ee
    move-result-object v1

    #@ef
    .line 1392
    aput-object v4, p1, v7

    #@f1
    .line 1394
    return-object v1

    #@f2
    .line 1395
    :cond_a
    const-string/jumbo v5, "string-array"

    #@f5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v5

    #@f9
    if-eqz v5, :cond_b

    #@fb
    .line 1396
    const-string/jumbo v5, "string-array"

    #@fe
    invoke-static {p0, v5, p1}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    .line 1397
    aput-object v4, p1, v7

    #@104
    .line 1399
    return-object v1

    #@105
    .line 1400
    :cond_b
    const-string/jumbo v5, "boolean-array"

    #@108
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10b
    move-result v5

    #@10c
    if-eqz v5, :cond_c

    #@10e
    .line 1401
    const-string/jumbo v5, "boolean-array"

    #@111
    invoke-static {p0, v5, p1}, Lcom/android/internal/util/XmlUtils;->readThisBooleanArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z

    #@114
    move-result-object v1

    #@115
    .line 1402
    aput-object v4, p1, v7

    #@117
    .line 1404
    return-object v1

    #@118
    .line 1405
    :cond_c
    const-string/jumbo v5, "map"

    #@11b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11e
    move-result v5

    #@11f
    if-eqz v5, :cond_e

    #@121
    .line 1406
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@124
    .line 1407
    if-eqz p3, :cond_d

    #@126
    .line 1408
    const-string/jumbo v5, "map"

    #@129
    invoke-static {p0, v5, p1, p2}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    #@12c
    move-result-object v1

    #@12d
    .line 1410
    :goto_1
    aput-object v4, p1, v7

    #@12f
    .line 1412
    return-object v1

    #@130
    .line 1409
    :cond_d
    const-string/jumbo v5, "map"

    #@133
    invoke-static {p0, v5, p1, p2}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    #@136
    move-result-object v1

    #@137
    goto :goto_1

    #@138
    .line 1413
    :cond_e
    const-string/jumbo v5, "list"

    #@13b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13e
    move-result v5

    #@13f
    if-eqz v5, :cond_f

    #@141
    .line 1414
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@144
    .line 1415
    const-string/jumbo v5, "list"

    #@147
    invoke-static {p0, v5, p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    #@14a
    move-result-object v1

    #@14b
    .line 1416
    aput-object v4, p1, v7

    #@14d
    .line 1418
    return-object v1

    #@14e
    .line 1419
    :cond_f
    const-string/jumbo v5, "set"

    #@151
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v5

    #@155
    if-eqz v5, :cond_10

    #@157
    .line 1420
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@15a
    .line 1421
    const-string/jumbo v5, "set"

    #@15d
    invoke-static {p0, v5, p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    #@160
    move-result-object v1

    #@161
    .line 1422
    aput-object v4, p1, v7

    #@163
    .line 1424
    return-object v1

    #@164
    .line 1425
    :cond_10
    if-eqz p2, :cond_11

    #@166
    .line 1426
    invoke-interface {p2, p0, v2}, Lcom/android/internal/util/XmlUtils$ReadMapCallback;->readThisUnknownObjectXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    #@169
    move-result-object v1

    #@16a
    .line 1427
    aput-object v4, p1, v7

    #@16c
    .line 1428
    return-object v1

    #@16d
    .line 1430
    :cond_11
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@16f
    new-instance v6, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v7, "Unknown tag: "

    #@177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v6

    #@17b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v6

    #@17f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v6

    #@183
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@186
    throw v5

    #@187
    .line 1442
    .end local v1    # "res":Ljava/lang/Object;
    .restart local v0    # "eventType":I
    :cond_12
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@189
    .line 1443
    new-instance v6, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v7, "Unexpected end tag in <"

    #@191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v6

    #@195
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v6

    #@199
    const-string/jumbo v7, ">: "

    #@19c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v6

    #@1a0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a3
    move-result-object v7

    #@1a4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v6

    #@1a8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v6

    #@1ac
    .line 1442
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1af
    throw v5

    #@1b0
    .line 1444
    :cond_13
    const/4 v5, 0x4

    #@1b1
    if-ne v0, v5, :cond_14

    #@1b3
    .line 1445
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@1b5
    .line 1446
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v7, "Unexpected text in <"

    #@1bd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v6

    #@1c1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v6

    #@1c5
    const-string/jumbo v7, ">: "

    #@1c8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v6

    #@1cc
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1cf
    move-result-object v7

    #@1d0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v6

    #@1d4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v6

    #@1d8
    .line 1445
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1db
    throw v5

    #@1dc
    .line 1447
    :cond_14
    if-ne v0, v9, :cond_0

    #@1de
    .line 1448
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@1e0
    .line 1449
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v7, "Unexpected start tag in <"

    #@1e8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v6

    #@1ec
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v6

    #@1f0
    const-string/jumbo v7, ">: "

    #@1f3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v6

    #@1f7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1fa
    move-result-object v7

    #@1fb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v6

    #@1ff
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v6

    #@203
    .line 1448
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@206
    throw v5

    #@207
    .line 1452
    :cond_15
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@209
    .line 1453
    new-instance v6, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    const-string/jumbo v7, "Unexpected end of document in <"

    #@211
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v6

    #@215
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v6

    #@219
    const-string/jumbo v7, ">"

    #@21c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v6

    #@220
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v6

    #@224
    .line 1452
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@227
    throw v5
.end method

.method public static readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1604
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1605
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public static final readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v0

    #@4
    .line 1329
    .local v0, "eventType":I
    :cond_0
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 1330
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1331
    :cond_1
    const/4 v1, 0x3

    #@f
    if-ne v0, v1, :cond_2

    #@11
    .line 1332
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    .line 1333
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Unexpected end tag at: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 1332
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 1334
    :cond_2
    const/4 v1, 0x4

    #@30
    if-ne v0, v1, :cond_3

    #@32
    .line 1335
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@34
    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "Unexpected text: "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 1335
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 1338
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@53
    move-result v0

    #@54
    .line 1339
    const/4 v1, 0x1

    #@55
    if-ne v0, v1, :cond_0

    #@57
    .line 1341
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@59
    .line 1342
    const-string/jumbo v2, "Unexpected end of document"

    #@5c
    .line 1341
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1
.end method

.method public static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 55
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v1

    #@8
    .local v1, "type":I
    const/4 v2, 0x1

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 56
    const/4 v2, 0x3

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v2

    #@12
    if-gt v2, v0, :cond_0

    #@14
    .line 52
    :cond_1
    return-void
.end method

.method public static writeBitmapAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
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

    #@0
    .prologue
    .line 1654
    if-eqz p2, :cond_0

    #@2
    .line 1655
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7
    .line 1656
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@9
    const/16 v2, 0x5a

    #@b
    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@e
    .line 1657
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@11
    move-result-object v1

    #@12
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    #@15
    .line 1653
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void
.end method

.method public static final writeBooleanArrayXml([ZLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p0, "val"    # [Z
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 579
    if-nez p0, :cond_0

    #@3
    .line 580
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 581
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 582
    return-void

    #@10
    .line 585
    :cond_0
    const-string/jumbo v2, "boolean-array"

    #@13
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 586
    if-eqz p1, :cond_1

    #@18
    .line 587
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 590
    :cond_1
    array-length v0, p0

    #@1f
    .line 591
    .local v0, "N":I
    const-string/jumbo v2, "num"

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 593
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@2c
    .line 594
    const-string/jumbo v2, "item"

    #@2f
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 595
    const-string/jumbo v2, "value"

    #@35
    aget-boolean v3, p0, v1

    #@37
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e
    .line 596
    const-string/jumbo v2, "item"

    #@41
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 593
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 599
    :cond_2
    const-string/jumbo v2, "boolean-array"

    #@4a
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 577
    return-void
.end method

.method public static writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1600
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 1599
    return-void
.end method

.method public static writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1637
    if-eqz p2, :cond_0

    #@3
    .line 1638
    const/4 v0, 0x0

    #@4
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 1636
    :cond_0
    return-void
.end method

.method public static final writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p0, "val"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, 0x0

    #@3
    .line 378
    if-nez p0, :cond_0

    #@5
    .line 379
    const-string/jumbo v5, "null"

    #@8
    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 380
    const-string/jumbo v5, "null"

    #@e
    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 381
    return-void

    #@12
    .line 384
    :cond_0
    const-string/jumbo v5, "byte-array"

    #@15
    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 385
    if-eqz p1, :cond_1

    #@1a
    .line 386
    const-string/jumbo v5, "name"

    #@1d
    invoke-interface {p2, v7, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20
    .line 389
    :cond_1
    array-length v0, p0

    #@21
    .line 390
    .local v0, "N":I
    const-string/jumbo v5, "num"

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    invoke-interface {p2, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    array-length v5, p0

    #@2e
    mul-int/lit8 v5, v5, 0x2

    #@30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@33
    .line 393
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@34
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    #@36
    .line 394
    aget-byte v1, p0, v3

    #@38
    .line 395
    .local v1, "b":I
    shr-int/lit8 v2, v1, 0x4

    #@3a
    .line 396
    .local v2, "h":I
    if-lt v2, v8, :cond_2

    #@3c
    add-int/lit8 v5, v2, 0x61

    #@3e
    add-int/lit8 v5, v5, -0xa

    #@40
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 397
    and-int/lit16 v2, v1, 0xff

    #@45
    .line 398
    if-lt v2, v8, :cond_3

    #@47
    add-int/lit8 v5, v2, 0x61

    #@49
    add-int/lit8 v5, v5, -0xa

    #@4b
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    .line 393
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_0

    #@51
    .line 396
    :cond_2
    add-int/lit8 v5, v2, 0x30

    #@53
    goto :goto_1

    #@54
    .line 398
    :cond_3
    add-int/lit8 v5, v2, 0x30

    #@56
    goto :goto_2

    #@57
    .line 401
    .end local v1    # "b":I
    .end local v2    # "h":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-interface {p2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5e
    .line 403
    const-string/jumbo v5, "byte-array"

    #@61
    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@64
    .line 376
    return-void
.end method

.method public static final writeDoubleArrayXml([DLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p0, "val"    # [D
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 501
    if-nez p0, :cond_0

    #@3
    .line 502
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 503
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 504
    return-void

    #@10
    .line 507
    :cond_0
    const-string/jumbo v2, "double-array"

    #@13
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 508
    if-eqz p1, :cond_1

    #@18
    .line 509
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v6, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 512
    :cond_1
    array-length v0, p0

    #@1f
    .line 513
    .local v0, "N":I
    const-string/jumbo v2, "num"

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 515
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@2c
    .line 516
    const-string/jumbo v2, "item"

    #@2f
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 517
    const-string/jumbo v2, "value"

    #@35
    aget-wide v4, p0, v1

    #@37
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e
    .line 518
    const-string/jumbo v2, "item"

    #@41
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 515
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 521
    :cond_2
    const-string/jumbo v2, "double-array"

    #@4a
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 499
    return-void
.end method

.method public static writeFloatAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;F)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1580
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 1579
    return-void
.end method

.method public static final writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p0, "val"    # [I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 423
    if-nez p0, :cond_0

    #@3
    .line 424
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 425
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 426
    return-void

    #@10
    .line 429
    :cond_0
    const-string/jumbo v2, "int-array"

    #@13
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 430
    if-eqz p1, :cond_1

    #@18
    .line 431
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 434
    :cond_1
    array-length v0, p0

    #@1f
    .line 435
    .local v0, "N":I
    const-string/jumbo v2, "num"

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 437
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@2c
    .line 438
    const-string/jumbo v2, "item"

    #@2f
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 439
    const-string/jumbo v2, "value"

    #@35
    aget v3, p0, v1

    #@37
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e
    .line 440
    const-string/jumbo v2, "item"

    #@41
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 437
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 443
    :cond_2
    const-string/jumbo v2, "int-array"

    #@4a
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 421
    return-void
.end method

.method public static writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1543
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 1542
    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "val"    # Ljava/util/List;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 211
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@5
    move-result-object v0

    #@6
    .line 212
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@f
    .line 213
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@16
    .line 214
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@19
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@1c
    .line 215
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@1f
    .line 216
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@22
    .line 209
    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p0, "val"    # Ljava/util/List;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 321
    if-nez p0, :cond_0

    #@3
    .line 322
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 323
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 324
    return-void

    #@10
    .line 327
    :cond_0
    const-string/jumbo v2, "list"

    #@13
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 328
    if-eqz p1, :cond_1

    #@18
    .line 329
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v3, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 332
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@21
    move-result v0

    #@22
    .line 333
    .local v0, "N":I
    const/4 v1, 0x0

    #@23
    .line 334
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@25
    .line 335
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    invoke-static {v2, v3, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@2c
    .line 336
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 339
    :cond_2
    const-string/jumbo v2, "list"

    #@32
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 319
    return-void
.end method

.method public static final writeLongArrayXml([JLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p0, "val"    # [J
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 462
    if-nez p0, :cond_0

    #@3
    .line 463
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 464
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 465
    return-void

    #@10
    .line 468
    :cond_0
    const-string/jumbo v2, "long-array"

    #@13
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 469
    if-eqz p1, :cond_1

    #@18
    .line 470
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v6, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 473
    :cond_1
    array-length v0, p0

    #@1f
    .line 474
    .local v0, "N":I
    const-string/jumbo v2, "num"

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 476
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@2c
    .line 477
    const-string/jumbo v2, "item"

    #@2f
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 478
    const-string/jumbo v2, "value"

    #@35
    aget-wide v4, p0, v1

    #@37
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e
    .line 479
    const-string/jumbo v2, "item"

    #@41
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 476
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 482
    :cond_2
    const-string/jumbo v2, "long-array"

    #@4a
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 460
    return-void
.end method

.method public static writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1566
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 1565
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 188
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    #@4
    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@7
    .line 189
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@10
    .line 190
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@17
    .line 191
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@1a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@1d
    .line 192
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@20
    .line 193
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@23
    .line 187
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    #@4
    .line 234
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .locals 2
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 258
    if-nez p0, :cond_0

    #@3
    .line 259
    const-string/jumbo v0, "null"

    #@6
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 260
    const-string/jumbo v0, "null"

    #@c
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 261
    return-void

    #@10
    .line 264
    :cond_0
    const-string/jumbo v0, "map"

    #@13
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 265
    if-eqz p1, :cond_1

    #@18
    .line 266
    const-string/jumbo v0, "name"

    #@1b
    invoke-interface {p2, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 269
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    #@21
    .line 271
    const-string/jumbo v0, "map"

    #@24
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 256
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .locals 5
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    if-nez p0, :cond_0

    #@2
    .line 292
    return-void

    #@3
    .line 295
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    .line 296
    .local v2, "s":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 298
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 300
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    invoke-static {v4, v3, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    #@24
    goto :goto_0

    #@25
    .line 290
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_1
    return-void
.end method

.method public static final writeSetXml(Ljava/util/Set;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p0, "val"    # Ljava/util/Set;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 344
    if-nez p0, :cond_0

    #@3
    .line 345
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 346
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 347
    return-void

    #@10
    .line 350
    :cond_0
    const-string/jumbo v2, "set"

    #@13
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 351
    if-eqz p1, :cond_1

    #@18
    .line 352
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v3, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 355
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    .line 356
    .local v0, "v":Ljava/lang/Object;
    invoke-static {v0, v3, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@2f
    goto :goto_0

    #@30
    .line 359
    .end local v0    # "v":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "set"

    #@33
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 343
    return-void
.end method

.method public static final writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p0, "val"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 540
    if-nez p0, :cond_0

    #@3
    .line 541
    const-string/jumbo v2, "null"

    #@6
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 542
    const-string/jumbo v2, "null"

    #@c
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 543
    return-void

    #@10
    .line 546
    :cond_0
    const-string/jumbo v2, "string-array"

    #@13
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 547
    if-eqz p1, :cond_1

    #@18
    .line 548
    const-string/jumbo v2, "name"

    #@1b
    invoke-interface {p2, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 551
    :cond_1
    array-length v0, p0

    #@1f
    .line 552
    .local v0, "N":I
    const-string/jumbo v2, "num"

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 554
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@2c
    .line 555
    const-string/jumbo v2, "item"

    #@2f
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 556
    const-string/jumbo v2, "value"

    #@35
    aget-object v3, p0, v1

    #@37
    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a
    .line 557
    const-string/jumbo v2, "item"

    #@3d
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@40
    .line 554
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 560
    :cond_2
    const-string/jumbo v2, "string-array"

    #@46
    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 538
    return-void
.end method

.method public static writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1621
    if-eqz p2, :cond_0

    #@3
    .line 1622
    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6
    .line 1620
    :cond_0
    return-void
.end method

.method public static writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1610
    if-eqz p2, :cond_0

    #@3
    .line 1611
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a
    .line 1609
    :cond_0
    return-void
.end method

.method public static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 620
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    #@4
    .line 619
    return-void
.end method

.method private static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .locals 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 643
    if-nez p0, :cond_1

    #@3
    .line 644
    const-string/jumbo v1, "null"

    #@6
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 645
    if-eqz p1, :cond_0

    #@b
    .line 646
    const-string/jumbo v1, "name"

    #@e
    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 648
    :cond_0
    const-string/jumbo v1, "null"

    #@14
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17
    .line 649
    return-void

    #@18
    .line 650
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 651
    const-string/jumbo v1, "string"

    #@1f
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@22
    .line 652
    if-eqz p1, :cond_2

    #@24
    .line 653
    const-string/jumbo v1, "name"

    #@27
    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 655
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 656
    const-string/jumbo v1, "string"

    #@34
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    .line 657
    return-void

    #@38
    .line 658
    :cond_3
    instance-of v1, p0, Ljava/lang/Integer;

    #@3a
    if-eqz v1, :cond_5

    #@3c
    .line 659
    const-string/jumbo v0, "int"

    #@3f
    .line 713
    .local v0, "typeStr":Ljava/lang/String;
    :goto_0
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 714
    if-eqz p1, :cond_4

    #@44
    .line 715
    const-string/jumbo v1, "name"

    #@47
    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 717
    :cond_4
    const-string/jumbo v1, "value"

    #@4d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-interface {p2, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@54
    .line 718
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 641
    return-void

    #@58
    .line 660
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_5
    instance-of v1, p0, Ljava/lang/Long;

    #@5a
    if-eqz v1, :cond_6

    #@5c
    .line 661
    const-string/jumbo v0, "long"

    #@5f
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 662
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_6
    instance-of v1, p0, Ljava/lang/Float;

    #@62
    if-eqz v1, :cond_7

    #@64
    .line 663
    const-string/jumbo v0, "float"

    #@67
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_0

    #@68
    .line 664
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_7
    instance-of v1, p0, Ljava/lang/Double;

    #@6a
    if-eqz v1, :cond_8

    #@6c
    .line 665
    const-string/jumbo v0, "double"

    #@6f
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_0

    #@70
    .line 666
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_8
    instance-of v1, p0, Ljava/lang/Boolean;

    #@72
    if-eqz v1, :cond_9

    #@74
    .line 667
    const-string/jumbo v0, "boolean"

    #@77
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_0

    #@78
    .line 668
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_9
    instance-of v1, p0, [B

    #@7a
    if-eqz v1, :cond_a

    #@7c
    .line 669
    check-cast p0, [B

    #@7e
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@81
    .line 670
    return-void

    #@82
    .line 671
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_a
    instance-of v1, p0, [I

    #@84
    if-eqz v1, :cond_b

    #@86
    .line 672
    check-cast p0, [I

    #@88
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@8b
    .line 673
    return-void

    #@8c
    .line 674
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_b
    instance-of v1, p0, [J

    #@8e
    if-eqz v1, :cond_c

    #@90
    .line 675
    check-cast p0, [J

    #@92
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeLongArrayXml([JLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@95
    .line 676
    return-void

    #@96
    .line 677
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v1, p0, [D

    #@98
    if-eqz v1, :cond_d

    #@9a
    .line 678
    check-cast p0, [D

    #@9c
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeDoubleArrayXml([DLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@9f
    .line 679
    return-void

    #@a0
    .line 680
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v1, p0, [Ljava/lang/String;

    #@a2
    if-eqz v1, :cond_e

    #@a4
    .line 681
    check-cast p0, [Ljava/lang/String;

    #@a6
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@a9
    .line 682
    return-void

    #@aa
    .line 683
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v1, p0, [Z

    #@ac
    if-eqz v1, :cond_f

    #@ae
    .line 684
    check-cast p0, [Z

    #@b0
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeBooleanArrayXml([ZLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@b3
    .line 685
    return-void

    #@b4
    .line 686
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v1, p0, Ljava/util/Map;

    #@b6
    if-eqz v1, :cond_10

    #@b8
    .line 687
    check-cast p0, Ljava/util/Map;

    #@ba
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@bd
    .line 688
    return-void

    #@be
    .line 689
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v1, p0, Ljava/util/List;

    #@c0
    if-eqz v1, :cond_11

    #@c2
    .line 690
    check-cast p0, Ljava/util/List;

    #@c4
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@c7
    .line 691
    return-void

    #@c8
    .line 692
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v1, p0, Ljava/util/Set;

    #@ca
    if-eqz v1, :cond_12

    #@cc
    .line 693
    check-cast p0, Ljava/util/Set;

    #@ce
    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeSetXml(Ljava/util/Set;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@d1
    .line 694
    return-void

    #@d2
    .line 695
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v1, p0, Ljava/lang/CharSequence;

    #@d4
    if-eqz v1, :cond_14

    #@d6
    .line 699
    const-string/jumbo v1, "string"

    #@d9
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@dc
    .line 700
    if-eqz p1, :cond_13

    #@de
    .line 701
    const-string/jumbo v1, "name"

    #@e1
    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e4
    .line 703
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e7
    move-result-object v1

    #@e8
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@eb
    .line 704
    const-string/jumbo v1, "string"

    #@ee
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f1
    .line 705
    return-void

    #@f2
    .line 706
    :cond_14
    if-eqz p3, :cond_15

    #@f4
    .line 707
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/util/XmlUtils$WriteMapCallback;->writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@f7
    .line 708
    return-void

    #@f8
    .line 710
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    #@fa
    new-instance v2, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v3, "writeValueXml: unable to write value "

    #@102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v2

    #@10a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v2

    #@10e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@111
    throw v1
.end method
