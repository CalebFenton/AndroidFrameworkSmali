.class public final Llibcore/net/url/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 93
    :cond_0
    return-object p1

    #@9
    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    const-string/jumbo v0, "/"

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v1, "/"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public static canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "discardRelativePrefix"    # Z

    #@0
    .prologue
    const/16 v8, 0x2f

    #@2
    const/4 v7, 0x0

    #@3
    .line 36
    const/4 v4, 0x0

    #@4
    .line 39
    .local v4, "segmentStart":I
    const/4 v0, 0x0

    #@5
    .line 41
    .local v0, "deletableSegments":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    if-gt v1, v5, :cond_7

    #@c
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v5

    #@10
    if-ne v1, v5, :cond_0

    #@12
    .line 44
    move v2, v1

    #@13
    .line 57
    .local v2, "nextSegmentStart":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@15
    if-ne v1, v5, :cond_2

    #@17
    const-string/jumbo v5, "."

    #@1a
    const/4 v6, 0x1

    #@1b
    invoke-virtual {p0, v4, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p0

    #@3a
    .line 60
    move v1, v4

    #@3b
    goto :goto_0

    #@3c
    .line 45
    .end local v2    # "nextSegmentStart":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v5

    #@40
    if-ne v5, v8, :cond_1

    #@42
    .line 46
    add-int/lit8 v2, v1, 0x1

    #@44
    .restart local v2    # "nextSegmentStart":I
    goto :goto_1

    #@45
    .line 48
    .end local v2    # "nextSegmentStart":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@47
    .line 49
    goto :goto_0

    #@48
    .line 61
    .restart local v2    # "nextSegmentStart":I
    :cond_2
    add-int/lit8 v5, v4, 0x2

    #@4a
    if-ne v1, v5, :cond_5

    #@4c
    const-string/jumbo v5, ".."

    #@4f
    const/4 v6, 0x2

    #@50
    invoke-virtual {p0, v4, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_5

    #@56
    .line 62
    if-gtz v0, :cond_3

    #@58
    if-eqz p1, :cond_4

    #@5a
    .line 64
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@5c
    .line 65
    add-int/lit8 v5, v4, -0x2

    #@5e
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->lastIndexOf(II)I

    #@61
    move-result v5

    #@62
    add-int/lit8 v3, v5, 0x1

    #@64
    .line 66
    .local v3, "prevSegmentStart":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object p0

    #@7d
    .line 67
    move v4, v3

    #@7e
    move v1, v3

    #@7f
    goto :goto_0

    #@80
    .line 70
    .end local v3    # "prevSegmentStart":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@82
    .line 71
    move v4, v1

    #@83
    goto :goto_0

    #@84
    .line 74
    :cond_5
    if-lez v1, :cond_6

    #@86
    .line 75
    add-int/lit8 v0, v0, 0x1

    #@88
    .line 77
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@8a
    .line 78
    move v4, v1

    #@8b
    goto/16 :goto_0

    #@8d
    .line 81
    .end local v2    # "nextSegmentStart":I
    :cond_7
    return-object p0
.end method

.method public static findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 134
    move v1, p2

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@3
    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 136
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v2

    #@b
    const/4 v3, -0x1

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 137
    return v1

    #@f
    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 140
    .end local v0    # "c":C
    :cond_1
    return p3
.end method

.method public static getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "spec"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    const/16 v3, 0x3a

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    .line 104
    .local v1, "colon":I
    const/4 v3, 0x1

    #@8
    if-ge v1, v3, :cond_0

    #@a
    .line 105
    return-object v4

    #@b
    .line 108
    :cond_0
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@e
    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 110
    .local v0, "c":C
    invoke-static {v2, v0}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 111
    return-object v4

    #@19
    .line 108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 115
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x0

    #@1d
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method public static isValidSchemeChar(IC)Z
    .locals 3
    .param p0, "index"    # I
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 119
    const/16 v0, 0x61

    #@4
    if-lt p1, v0, :cond_1

    #@6
    const/16 v0, 0x7a

    #@8
    if-gt p1, v0, :cond_1

    #@a
    .line 120
    :cond_0
    return v2

    #@b
    .line 119
    :cond_1
    const/16 v0, 0x41

    #@d
    if-lt p1, v0, :cond_2

    #@f
    const/16 v0, 0x5a

    #@11
    if-le p1, v0, :cond_0

    #@13
    .line 122
    :cond_2
    if-lez p0, :cond_5

    #@15
    const/16 v0, 0x30

    #@17
    if-lt p1, v0, :cond_4

    #@19
    const/16 v0, 0x39

    #@1b
    if-gt p1, v0, :cond_4

    #@1d
    .line 123
    :cond_3
    return v2

    #@1e
    .line 122
    :cond_4
    const/16 v0, 0x2b

    #@20
    if-eq p1, v0, :cond_3

    #@22
    const/16 v0, 0x2d

    #@24
    if-eq p1, v0, :cond_3

    #@26
    const/16 v0, 0x2e

    #@28
    if-eq p1, v0, :cond_3

    #@2a
    .line 125
    :cond_5
    return v1
.end method
