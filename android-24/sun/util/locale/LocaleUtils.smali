.class public final Lsun/util/locale/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    if-ne p0, p1, :cond_0

    #@2
    .line 72
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 74
    :cond_0
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 51
    if-ne p0, p1, :cond_0

    #@4
    .line 52
    return v7

    #@5
    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 56
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    if-eq v3, v4, :cond_1

    #@f
    .line 57
    return v6

    #@10
    .line 60
    :cond_1
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@13
    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 62
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 63
    .local v1, "c2":C
    if-eq v0, v1, :cond_2

    #@1d
    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@20
    move-result v4

    #@21
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@24
    move-result v5

    #@25
    if-eq v4, v5, :cond_2

    #@27
    .line 64
    return v6

    #@28
    .line 60
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 67
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_3
    return v7
.end method

.method static isAlpha(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 168
    const/16 v2, 0x41

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x5a

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x61

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0x7a

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method static isAlphaNumeric(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 196
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlpha(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method static isAlphaNumericString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 201
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 203
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 206
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method static isAlphaString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 173
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlpha(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 175
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 178
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method static isEmpty(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 210
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method static isEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 222
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method static isEmpty(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method private static isLower(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 164
    const/16 v1, 0x61

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x7a

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method static isNumeric(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 182
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method static isNumericString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 187
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 189
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 192
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method private static isUpper(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 160
    const/16 v1, 0x41

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x5a

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method static toLower(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 82
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    add-int/lit8 v0, p0, 0x20

    #@8
    int-to-char p0, v0

    #@9
    .end local p0    # "c":C
    :cond_0
    return p0
.end method

.method public static toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 90
    .local v4, "len":I
    const/4 v3, 0x0

    #@5
    .line 91
    .local v3, "idx":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@7
    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v5

    #@b
    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 96
    :cond_0
    if-ne v3, v4, :cond_2

    #@13
    .line 97
    return-object p0

    #@14
    .line 91
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 100
    :cond_2
    new-array v0, v4, [C

    #@19
    .line 101
    .local v0, "buf":[C
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    #@1c
    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 103
    .local v1, "c":C
    if-ge v2, v3, :cond_3

    #@22
    .end local v1    # "c":C
    :goto_2
    aput-char v1, v0, v2

    #@24
    .line 101
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_1

    #@27
    .line 103
    .restart local v1    # "c":C
    :cond_3
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@2a
    move-result v1

    #@2b
    goto :goto_2

    #@2c
    .line 105
    .end local v1    # "c":C
    :cond_4
    new-instance v5, Ljava/lang/String;

    #@2e
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    #@31
    return-object v5
.end method

.method static toTitleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .local v4, "len":I
    if-nez v4, :cond_0

    #@6
    .line 131
    return-object p0

    #@7
    .line 133
    :cond_0
    const/4 v3, 0x0

    #@8
    .line 134
    .local v3, "idx":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v5

    #@c
    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_1

    #@12
    .line 135
    const/4 v3, 0x1

    #@13
    :goto_0
    if-ge v3, v4, :cond_1

    #@15
    .line 136
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v5

    #@19
    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    .line 141
    :cond_1
    if-ne v3, v4, :cond_3

    #@21
    .line 142
    return-object p0

    #@22
    .line 135
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 145
    :cond_3
    new-array v0, v4, [C

    #@27
    .line 146
    .local v0, "buf":[C
    const/4 v2, 0x0

    #@28
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_6

    #@2a
    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v1

    #@2e
    .line 148
    .local v1, "c":C
    if-nez v2, :cond_4

    #@30
    if-nez v3, :cond_4

    #@32
    .line 149
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toUpper(C)C

    #@35
    move-result v5

    #@36
    aput-char v5, v0, v2

    #@38
    .line 146
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 150
    :cond_4
    if-ge v2, v3, :cond_5

    #@3d
    .line 151
    aput-char v1, v0, v2

    #@3f
    goto :goto_2

    #@40
    .line 153
    :cond_5
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@43
    move-result v5

    #@44
    aput-char v5, v0, v2

    #@46
    goto :goto_2

    #@47
    .line 156
    .end local v1    # "c":C
    :cond_6
    new-instance v5, Ljava/lang/String;

    #@49
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    #@4c
    return-object v5
.end method

.method static toUpper(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 78
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    add-int/lit8 v0, p0, -0x20

    #@8
    int-to-char p0, v0

    #@9
    .end local p0    # "c":C
    :cond_0
    return p0
.end method

.method static toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 110
    .local v4, "len":I
    const/4 v3, 0x0

    #@5
    .line 111
    .local v3, "idx":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@7
    .line 112
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v5

    #@b
    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 116
    :cond_0
    if-ne v3, v4, :cond_2

    #@13
    .line 117
    return-object p0

    #@14
    .line 111
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 120
    :cond_2
    new-array v0, v4, [C

    #@19
    .line 121
    .local v0, "buf":[C
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    #@1c
    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 123
    .local v1, "c":C
    if-ge v2, v3, :cond_3

    #@22
    .end local v1    # "c":C
    :goto_2
    aput-char v1, v0, v2

    #@24
    .line 121
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_1

    #@27
    .line 123
    .restart local v1    # "c":C
    :cond_3
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toUpper(C)C

    #@2a
    move-result v1

    #@2b
    goto :goto_2

    #@2c
    .line 125
    .end local v1    # "c":C
    :cond_4
    new-instance v5, Ljava/lang/String;

    #@2e
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    #@31
    return-object v5
.end method
