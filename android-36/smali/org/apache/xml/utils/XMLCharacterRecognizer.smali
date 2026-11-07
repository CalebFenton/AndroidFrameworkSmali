.class public Lorg/apache/xml/utils/XMLCharacterRecognizer;
.super Ljava/lang/Object;
.source "XMLCharacterRecognizer.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist isWhiteSpace(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isWhiteSpace(Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_18

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isWhiteSpace(Ljava/lang/StringBuffer;)Z
    .registers 5

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isWhiteSpace([CII)Z
    .registers 4

    add-int/2addr p2, p1

    :goto_1
    if-ge p1, p2, :cond_10

    .line 59
    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_10
    const/4 p0, 0x1

    return p0
.end method
