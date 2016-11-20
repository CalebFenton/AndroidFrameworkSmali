.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 45
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_1

    #@9
    .line 46
    :cond_0
    return-object p0

    #@a
    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    .line 49
    .local v4, "len":I
    new-array v0, v4, [C

    #@10
    .line 50
    .local v0, "chars":[C
    const/4 v1, 0x0

    #@11
    .line 51
    .local v1, "count":I
    const/4 v3, 0x0

    #@12
    .local v3, "i":I
    move v2, v1

    #@13
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_0
    if-ge v3, v4, :cond_2

    #@15
    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v5

    #@19
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_4

    #@1f
    .line 53
    add-int/lit8 v1, v2, 0x1

    #@21
    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v5

    #@25
    aput-char v5, v0, v2

    #@27
    .line 51
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@29
    move v2, v1

    #@2a
    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_0

    #@2b
    .line 56
    :cond_2
    if-ne v2, v4, :cond_3

    #@2d
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    return-object v5

    #@32
    .line 59
    :cond_3
    new-instance v5, Ljava/lang/String;

    #@34
    invoke-direct {v5, v0, v6, v2}, Ljava/lang/String;-><init>([CII)V

    #@37
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    return-object v5

    #@3c
    :cond_4
    move v1, v2

    #@3d
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "encoder"    # Lorg/apache/commons/codec/StringEncoder;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "es1"    # Ljava/lang/String;
    .param p1, "es2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 115
    :cond_0
    const/4 v3, 0x0

    #@5
    return v3

    #@6
    .line 117
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 118
    .local v2, "lengthToMatch":I
    const/4 v0, 0x0

    #@13
    .line 119
    .local v0, "diff":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@16
    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v3

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v4

    #@1e
    if-ne v3, v4, :cond_2

    #@20
    .line 121
    add-int/lit8 v0, v0, 0x1

    #@22
    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 124
    :cond_3
    return v0
.end method
