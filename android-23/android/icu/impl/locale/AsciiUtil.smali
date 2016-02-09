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
    .line 9
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
    .line 31
    if-ne p0, p1, :cond_0

    #@2
    .line 32
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 34
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
    .line 11
    if-ne p0, p1, :cond_0

    #@4
    .line 12
    return v4

    #@5
    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 15
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v6

    #@d
    if-eq v3, v6, :cond_1

    #@f
    .line 16
    return v5

    #@10
    .line 18
    :cond_1
    const/4 v2, 0x0

    #@11
    .line 19
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@13
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 21
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 22
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
    .line 27
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_2
    if-ne v2, v3, :cond_4

    #@29
    :goto_1
    return v4

    #@2a
    .line 25
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
    .line 27
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
    .line 116
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
    .line 146
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
    .line 150
    const/4 v0, 0x1

    #@1
    .line 151
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
    .line 152
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
    .line 153
    const/4 v0, 0x0

    #@13
    .line 157
    :cond_0
    return v0

    #@14
    .line 151
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
    .line 120
    const/4 v0, 0x1

    #@1
    .line 121
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
    .line 122
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
    .line 123
    const/4 v0, 0x0

    #@13
    .line 127
    :cond_0
    return v0

    #@14
    .line 121
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
    .line 131
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
    .line 135
    const/4 v0, 0x1

    #@1
    .line 136
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
    .line 137
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
    .line 138
    const/4 v0, 0x0

    #@13
    .line 142
    :cond_0
    return v0

    #@14
    .line 136
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
    .line 46
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 47
    add-int/lit8 v0, p0, 0x20

    #@a
    int-to-char p0, v0

    #@b
    .line 49
    :cond_0
    return p0
.end method

.method public static toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    const/4 v2, 0x0

    #@1
    .line 54
    .local v2, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-ge v2, v3, :cond_0

    #@7
    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    .line 56
    .local v1, "c":C
    const/16 v3, 0x41

    #@d
    if-lt v1, v3, :cond_1

    #@f
    const/16 v3, 0x5a

    #@11
    if-gt v1, v3, :cond_1

    #@13
    .line 60
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v3

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 61
    return-object p0

    #@1a
    .line 54
    .restart local v1    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 63
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
    .line 64
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    if-ge v2, v3, :cond_3

    #@2d
    .line 65
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
    .line 64
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 67
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
    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 90
    return-object p0

    #@8
    .line 92
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 93
    .local v2, "idx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 94
    .local v1, "c":C
    const/16 v3, 0x61

    #@f
    if-lt v1, v3, :cond_1

    #@11
    const/16 v3, 0x7a

    #@13
    if-le v1, v3, :cond_2

    #@15
    .line 95
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
    .line 96
    const/16 v3, 0x41

    #@1e
    if-lt v1, v3, :cond_3

    #@20
    const/16 v3, 0x5a

    #@22
    if-gt v1, v3, :cond_3

    #@24
    .line 101
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v3

    #@28
    if-ne v2, v3, :cond_4

    #@2a
    .line 102
    return-object p0

    #@2b
    .line 95
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 104
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    .line 105
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-nez v2, :cond_5

    #@39
    .line 106
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
    .line 107
    add-int/lit8 v2, v2, 0x1

    #@46
    .line 109
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@49
    move-result v3

    #@4a
    if-ge v2, v3, :cond_6

    #@4c
    .line 110
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
    .line 109
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 112
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
    .line 39
    const/16 v0, 0x61

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 40
    add-int/lit8 v0, p0, -0x20

    #@a
    int-to-char p0, v0

    #@b
    .line 42
    :cond_0
    return p0
.end method

.method public static toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const/4 v2, 0x0

    #@1
    .line 72
    .local v2, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-ge v2, v3, :cond_0

    #@7
    .line 73
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    .line 74
    .local v1, "c":C
    const/16 v3, 0x61

    #@d
    if-lt v1, v3, :cond_1

    #@f
    const/16 v3, 0x7a

    #@11
    if-gt v1, v3, :cond_1

    #@13
    .line 78
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v3

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 79
    return-object p0

    #@1a
    .line 72
    .restart local v1    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 81
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
    .line 82
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    if-ge v2, v3, :cond_3

    #@2d
    .line 83
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
    .line 82
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method
