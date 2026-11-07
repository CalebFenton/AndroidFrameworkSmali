.class public final Lsun/util/locale/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static blacklist caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 71
    if-ne p0, p1, :cond_4

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_4
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 52
    return v0

    .line 55
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 57
    return v3

    .line 60
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_2b

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 62
    .local v4, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 63
    .local v5, "c2":C
    if-eq v4, v5, :cond_28

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v6

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v7

    if-eq v6, v7, :cond_28

    .line 64
    return v3

    .line 60
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 67
    .end local v2    # "i":I
    :cond_2b
    return v0
.end method

.method static blacklist isAlpha(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 168
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static blacklist isAlphaNumeric(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 196
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isAlphaNumericString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 201
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 203
    const/4 v2, 0x0

    return v2

    .line 201
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 206
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method static blacklist isAlphaString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlpha(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 175
    const/4 v2, 0x0

    return v2

    .line 173
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 178
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 210
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 222
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 218
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)Z"
        }
    .end annotation

    .line 214
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static blacklist isLower(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 164
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static blacklist isNumeric(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 182
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static blacklist isNumericString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 187
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 189
    const/4 v2, 0x0

    return v2

    .line 187
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 192
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist isUpper(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 160
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static blacklist toLower(C)C
    .registers 2
    .param p0, "c"    # C

    .line 82
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    goto :goto_b

    :cond_a
    move v0, p0

    :goto_b
    return v0
.end method

.method public static blacklist toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, "len":I
    const/4 v1, 0x0

    .line 91
    .local v1, "idx":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 93
    goto :goto_15

    .line 91
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 96
    :cond_15
    :goto_15
    if-ne v1, v0, :cond_18

    .line 97
    return-object p0

    .line 100
    :cond_18
    new-array v2, v0, [C

    .line 101
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v0, :cond_2e

    .line 102
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 103
    .local v4, "c":C
    if-ge v3, v1, :cond_25

    move v5, v4

    goto :goto_29

    :cond_25
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    :goto_29
    aput-char v5, v2, v3

    .line 101
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 105
    .end local v3    # "i":I
    :cond_2e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static blacklist toTitleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "len":I
    if-nez v0, :cond_8

    .line 131
    return-object p0

    .line 133
    :cond_8
    const/4 v0, 0x0

    .line 134
    .local v0, "idx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    move-result v2

    if-nez v2, :cond_24

    .line 135
    const/4 v0, 0x1

    :goto_14
    if-ge v0, v1, :cond_24

    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 137
    goto :goto_24

    .line 135
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 141
    :cond_24
    :goto_24
    if-ne v0, v1, :cond_27

    .line 142
    return-object p0

    .line 145
    :cond_27
    new-array v2, v1, [C

    .line 146
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v1, :cond_49

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 148
    .local v4, "c":C
    if-nez v3, :cond_3b

    if-nez v0, :cond_3b

    .line 149
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toUpper(C)C

    move-result v5

    aput-char v5, v2, v3

    goto :goto_46

    .line 150
    :cond_3b
    if-ge v3, v0, :cond_40

    .line 151
    aput-char v4, v2, v3

    goto :goto_46

    .line 153
    :cond_40
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    aput-char v5, v2, v3

    .line 146
    .end local v4    # "c":C
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 156
    .end local v3    # "i":I
    :cond_49
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static blacklist toUpper(C)C
    .registers 2
    .param p0, "c"    # C

    .line 78
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, p0, -0x20

    int-to-char v0, v0

    goto :goto_b

    :cond_a
    move v0, p0

    :goto_b
    return v0
.end method

.method static blacklist toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 110
    .local v0, "len":I
    const/4 v1, 0x0

    .line 111
    .local v1, "idx":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 113
    goto :goto_15

    .line 111
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 116
    :cond_15
    :goto_15
    if-ne v1, v0, :cond_18

    .line 117
    return-object p0

    .line 120
    :cond_18
    new-array v2, v0, [C

    .line 121
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v0, :cond_2e

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 123
    .local v4, "c":C
    if-ge v3, v1, :cond_25

    move v5, v4

    goto :goto_29

    :cond_25
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toUpper(C)C

    move-result v5

    :goto_29
    aput-char v5, v2, v3

    .line 121
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 125
    .end local v3    # "i":I
    :cond_2e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
