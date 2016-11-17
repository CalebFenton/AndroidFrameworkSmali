.class public Lorg/apache/xml/utils/XMLCharacterRecognizer;
.super Ljava/lang/Object;
.source "XMLCharacterRecognizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isWhiteSpace(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 40
    const/16 v1, 0x20

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x9

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0xd

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0xa

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public static isWhiteSpace(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    if-eqz p0, :cond_1

    #@2
    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 99
    .local v1, "n":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 102
    const/4 v2, 0x0

    #@14
    return v2

    #@15
    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 106
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method public static isWhiteSpace(Ljava/lang/StringBuffer;)Z
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v1

    #@4
    .line 77
    .local v1, "n":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 80
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 83
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method public static isWhiteSpace([CII)Z
    .locals 3
    .param p0, "ch"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 55
    add-int v0, p1, p2

    #@2
    .line 57
    .local v0, "end":I
    move v1, p1

    #@3
    .local v1, "s":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@5
    .line 59
    aget-char v2, p0, v1

    #@7
    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 60
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 63
    :cond_1
    const/4 v2, 0x1

    #@13
    return v2
.end method
