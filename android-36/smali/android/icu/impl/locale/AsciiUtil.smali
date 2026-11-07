.class public final Landroid/icu/impl/locale/AsciiUtil;
.super Ljava/lang/Object;
.source "AsciiUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_8
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 19
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 20
    return v1

    .line 22
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 23
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    .line 24
    return v3

    .line 26
    :cond_14
    const/4 v2, 0x0

    .line 27
    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_30

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 29
    .local v4, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 30
    .local v5, "c2":C
    if-eq v4, v5, :cond_2c

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v6

    invoke-static {v5}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v7

    if-eq v6, v7, :cond_2c

    .line 31
    goto :goto_30

    .line 33
    :cond_2c
    nop

    .end local v4    # "c1":C
    .end local v5    # "c2":C
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_15

    .line 35
    :cond_30
    :goto_30
    if-ne v2, v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v3

    :goto_34
    return v1
.end method

.method public static blacklist isAlpha(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 124
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

.method public static blacklist isAlphaNumeric(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 154
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

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

    .line 158
    const/4 v0, 0x1

    .line 159
    .local v0, "b":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-nez v2, :cond_14

    .line 161
    const/4 v0, 0x0

    .line 162
    goto :goto_17

    .line 159
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    .end local v1    # "i":I
    :cond_17
    :goto_17
    return v0
.end method

.method public static blacklist isAlphaString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, "b":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v2

    if-nez v2, :cond_14

    .line 131
    const/4 v0, 0x0

    .line 132
    goto :goto_17

    .line 129
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    .end local v1    # "i":I
    :cond_17
    :goto_17
    return v0
.end method

.method public static blacklist isNumeric(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 139
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

.method public static blacklist isNumericString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, "b":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v2

    if-nez v2, :cond_14

    .line 146
    const/4 v0, 0x0

    .line 147
    goto :goto_17

    .line 144
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v1    # "i":I
    :cond_17
    :goto_17
    return v0
.end method

.method public static blacklist toLower(C)C
    .registers 2
    .param p0, "c"    # C

    .line 54
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 55
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 57
    :cond_b
    return p0
.end method

.method public static blacklist toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "idx":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 64
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_14

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_14

    .line 65
    goto :goto_17

    .line 62
    .end local v1    # "c":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_17
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 69
    return-object p0

    .line 71
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 75
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist toTitleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 98
    return-object p0

    .line 100
    :cond_7
    const/4 v0, 0x0

    .line 101
    .local v0, "idx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 102
    .local v1, "c":C
    const/16 v2, 0x61

    if-lt v1, v2, :cond_14

    const/16 v2, 0x7a

    if-le v1, v2, :cond_27

    .line 103
    :cond_14
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 104
    const/16 v2, 0x41

    if-lt v1, v2, :cond_24

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_24

    .line 105
    goto :goto_27

    .line 103
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 109
    :cond_27
    :goto_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2e

    .line 110
    return-object p0

    .line 112
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "buf":Ljava/lang/StringBuilder;
    if-nez v0, :cond_47

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_47
    :goto_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 120
    :cond_5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist toUpper(C)C
    .registers 2
    .param p0, "c"    # C

    .line 47
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    .line 48
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .line 50
    :cond_b
    return p0
.end method

.method public static blacklist toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "idx":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 82
    .local v1, "c":C
    const/16 v2, 0x61

    if-lt v1, v2, :cond_14

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_14

    .line 83
    goto :goto_17

    .line 80
    .end local v1    # "c":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_17
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 87
    return-object p0

    .line 89
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 93
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
