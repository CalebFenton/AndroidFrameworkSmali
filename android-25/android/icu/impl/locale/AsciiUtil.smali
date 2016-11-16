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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    if-ne p0, p1, :cond_0

    #@2
    .line 36
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 38
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 15
    if-ne p0, p1, :cond_0

    #@4
    .line 16
    return v4

    #@5
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 19
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v6

    #@d
    if-eq v3, v6, :cond_1

    #@f
    .line 20
    return v5

    #@10
    .line 22
    :cond_1
    const/4 v2, 0x0

    #@11
    .line 23
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@13
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 25
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 26
    .local v1, "c2":C
    if-eq v0, v1, :cond_3

    #@1d
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@20
    move-result v6

    #@21
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@24
    move-result v7

    #@25
    if-eq v6, v7, :cond_3

    #@27
    .line 31
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_2
    if-ne v2, v3, :cond_4

    #@29
    :goto_1
    return v4

    #@2a
    .line 29
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_4
    move v4, v5

    #@2e
    .line 31
    goto :goto_1
.end method

.method public static isAlpha(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 120
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

.method public static isAlphaNumeric(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 150
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

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

.method public static isAlphaNumericString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    const/4 v0, 0x1

    #@1
    .line 155
    .local v0, "b":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 157
    const/4 v0, 0x0

    #@13
    .line 161
    :cond_0
    return v0

    #@14
    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0
.end method

.method public static isAlphaString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    .line 125
    .local v0, "b":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 127
    const/4 v0, 0x0

    #@13
    .line 131
    :cond_0
    return v0

    #@14
    .line 125
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0
.end method

.method public static isNumeric(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 135
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

.method public static isNumericString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    const/4 v0, 0x1

    #@1
    .line 140
    .local v0, "b":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 142
    const/4 v0, 0x0

    #@13
    .line 146
    :cond_0
    return v0

    #@14
    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0
.end method

.method public static toLower(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 50
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 51
    add-int/lit8 v0, p0, 0x20

    #@a
    int-to-char p0, v0

    #@b
    .line 53
    :cond_0
    return p0
.end method

.method public static toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const/4 v2, 0x0

    #@1
    .line 58
    .local v2, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-ge v2, v3, :cond_0

    #@7
    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    .line 60
    .local v1, "c":C
    const/16 v3, 0x41

    #@d
    if-lt v1, v3, :cond_1

    #@f
    const/16 v3, 0x5a

    #@11
    if-gt v1, v3, :cond_1

    #@13
    .line 64
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v3

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 65
    return-object p0

    #@1a
    .line 58
    .restart local v1    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 67
    .end local v1    # "c":C
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    .line 68
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    if-ge v2, v3, :cond_3

    #@2d
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v3

    #@31
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@34
    move-result v3

    #@35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 68
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 71
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method

.method public static toTitleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 94
    return-object p0

    #@8
    .line 96
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 97
    .local v2, "idx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 98
    .local v1, "c":C
    const/16 v3, 0x61

    #@f
    if-lt v1, v3, :cond_1

    #@11
    const/16 v3, 0x7a

    #@13
    if-le v1, v3, :cond_2

    #@15
    .line 99
    :cond_1
    const/4 v2, 0x1

    #@16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    if-ge v2, v3, :cond_2

    #@1c
    .line 100
    const/16 v3, 0x41

    #@1e
    if-lt v1, v3, :cond_3

    #@20
    const/16 v3, 0x5a

    #@22
    if-gt v1, v3, :cond_3

    #@24
    .line 105
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v3

    #@28
    if-ne v2, v3, :cond_4

    #@2a
    .line 106
    return-object p0

    #@2b
    .line 99
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 108
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    .line 109
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-nez v2, :cond_5

    #@39
    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v3

    #@3d
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    #@40
    move-result v3

    #@41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 111
    add-int/lit8 v2, v2, 0x1

    #@46
    .line 113
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@49
    move-result v3

    #@4a
    if-ge v2, v3, :cond_6

    #@4c
    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@4f
    move-result v3

    #@50
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@53
    move-result v3

    #@54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    .line 113
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 116
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    return-object v3
.end method

.method public static toUpper(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 43
    const/16 v0, 0x61

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 44
    add-int/lit8 v0, p0, -0x20

    #@a
    int-to-char p0, v0

    #@b
    .line 46
    :cond_0
    return p0
.end method

.method public static toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    const/4 v2, 0x0

    #@1
    .line 76
    .local v2, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-ge v2, v3, :cond_0

    #@7
    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    .line 78
    .local v1, "c":C
    const/16 v3, 0x61

    #@d
    if-lt v1, v3, :cond_1

    #@f
    const/16 v3, 0x7a

    #@11
    if-gt v1, v3, :cond_1

    #@13
    .line 82
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v3

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 83
    return-object p0

    #@1a
    .line 76
    .restart local v1    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 85
    .end local v1    # "c":C
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    .line 86
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    if-ge v2, v3, :cond_3

    #@2d
    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v3

    #@31
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    #@34
    move-result v3

    #@35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 86
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 89
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method
