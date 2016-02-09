.class public Landroid/icu/lang/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static codePoints(Ljava/lang/CharSequence;)[I
    .locals 10
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 285
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v7

    #@5
    new-array v5, v7, [I

    #@7
    .line 286
    .local v5, "result":[I
    const/4 v2, 0x0

    #@8
    .line 287
    .local v2, "j":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v7

    #@d
    if-ge v1, v7, :cond_1

    #@f
    .line 288
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 289
    .local v0, "cp":C
    const v7, 0xdc00

    #@16
    if-lt v0, v7, :cond_0

    #@18
    const v7, 0xdfff

    #@1b
    if-gt v0, v7, :cond_0

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 290
    add-int/lit8 v7, v2, -0x1

    #@21
    aget v7, v5, v7

    #@23
    int-to-char v4, v7

    #@24
    .line 291
    .local v4, "last":C
    const v7, 0xd800

    #@27
    if-lt v4, v7, :cond_0

    #@29
    const v7, 0xdbff

    #@2c
    if-gt v4, v7, :cond_0

    #@2e
    .line 293
    add-int/lit8 v7, v2, -0x1

    #@30
    invoke-static {v4, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@33
    move-result v8

    #@34
    aput v8, v5, v7

    #@36
    .line 287
    .end local v4    # "last":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 297
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@3b
    .end local v2    # "j":I
    .local v3, "j":I
    aput v0, v5, v2

    #@3d
    move v2, v3

    #@3e
    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    #@3f
    .line 299
    .end local v0    # "cp":C
    :cond_1
    array-length v7, v5

    #@40
    if-ne v2, v7, :cond_2

    #@42
    .line 300
    return-object v5

    #@43
    .line 302
    :cond_2
    new-array v6, v2, [I

    #@45
    .line 303
    .local v6, "shortResult":[I
    invoke-static {v5, v9, v6, v9, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@48
    .line 304
    return-object v6
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 1
    .param p0, "codepoint"    # I
    .param p1, "a"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    neg-int v0, v0

    #@5
    return v0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "codePoint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 131
    if-ltz p1, :cond_0

    #@4
    const v6, 0x10ffff

    #@7
    if-le p1, v6, :cond_1

    #@9
    .line 132
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v6

    #@f
    .line 134
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v4

    #@13
    .line 135
    .local v4, "stringLength":I
    if-nez v4, :cond_2

    #@15
    .line 136
    const/4 v6, -0x1

    #@16
    return v6

    #@17
    .line 138
    :cond_2
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 139
    .local v0, "firstChar":C
    const/high16 v6, 0x10000

    #@1d
    sub-int v2, p1, v6

    #@1f
    .line 141
    .local v2, "offset":I
    if-gez v2, :cond_4

    #@21
    .line 142
    sub-int v3, v0, p1

    #@23
    .line 143
    .local v3, "result":I
    if-eqz v3, :cond_3

    #@25
    .line 144
    return v3

    #@26
    .line 146
    :cond_3
    add-int/lit8 v6, v4, -0x1

    #@28
    return v6

    #@29
    .line 149
    .end local v3    # "result":I
    :cond_4
    ushr-int/lit8 v6, v2, 0xa

    #@2b
    const v7, 0xd800

    #@2e
    add-int/2addr v6, v7

    #@2f
    int-to-char v1, v6

    #@30
    .line 150
    .local v1, "lead":C
    sub-int v3, v0, v1

    #@32
    .line 151
    .restart local v3    # "result":I
    if-eqz v3, :cond_5

    #@34
    .line 152
    return v3

    #@35
    .line 154
    :cond_5
    if-le v4, v8, :cond_6

    #@37
    .line 155
    and-int/lit16 v6, v2, 0x3ff

    #@39
    const v7, 0xdc00

    #@3c
    add-int/2addr v6, v7

    #@3d
    int-to-char v5, v6

    #@3e
    .line 156
    .local v5, "trail":C
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@41
    move-result v6

    #@42
    sub-int v3, v6, v5

    #@44
    .line 157
    if-eqz v3, :cond_6

    #@46
    .line 158
    return v3

    #@47
    .line 161
    .end local v5    # "trail":C
    :cond_6
    add-int/lit8 v6, v4, -0x2

    #@49
    return v6
.end method

.method public static compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    .line 217
    .local v0, "alength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v1

    #@8
    .line 218
    .local v1, "blength":I
    if-gt v0, v1, :cond_0

    #@a
    move v4, v0

    #@b
    .line 219
    .local v4, "min":I
    :goto_0
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    #@e
    .line 220
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v5

    #@12
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v6

    #@16
    sub-int v2, v5, v6

    #@18
    .line 221
    .local v2, "diff":I
    if-eqz v2, :cond_1

    #@1a
    .line 222
    return v2

    #@1b
    .line 218
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v4    # "min":I
    :cond_0
    move v4, v1

    #@1c
    .restart local v4    # "min":I
    goto :goto_0

    #@1d
    .line 219
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 225
    .end local v2    # "diff":I
    :cond_2
    sub-int v5, v0, v1

    #@22
    return v5
.end method

.method public static final equals(ILjava/lang/CharSequence;)Z
    .locals 3
    .param p0, "codepoint"    # I
    .param p1, "other"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 100
    if-nez p1, :cond_0

    #@4
    .line 101
    return v1

    #@5
    .line 103
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v2

    #@9
    packed-switch v2, :pswitch_data_0

    #@c
    .line 106
    return v1

    #@d
    .line 104
    :pswitch_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v2

    #@11
    if-ne p0, v2, :cond_1

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    move v0, v1

    #@15
    goto :goto_0

    #@16
    .line 105
    :pswitch_1
    const v2, 0xffff

    #@19
    if-le p0, v2, :cond_2

    #@1b
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@1e
    move-result v2

    #@1f
    if-ne p0, v2, :cond_2

    #@21
    move v1, v0

    #@22
    :cond_2
    return v1

    #@23
    .line 103
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final equals(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "other"    # Ljava/lang/CharSequence;
    .param p1, "codepoint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    .line 203
    if-nez p0, :cond_1

    #@3
    if-nez p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    .line 204
    :cond_1
    if-eqz p1, :cond_0

    #@9
    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method public static equalsChars(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 237
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    .line 186
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    .line 187
    .local v0, "length":I
    if-lt v0, v3, :cond_0

    #@b
    const/4 v5, 0x2

    #@c
    if-le v0, v5, :cond_1

    #@e
    .line 188
    :cond_0
    return v2

    #@f
    .line 190
    :cond_1
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@12
    move-result v1

    #@13
    .line 191
    .local v1, "result":I
    const/high16 v5, 0x10000

    #@15
    if-ge v1, v5, :cond_2

    #@17
    move v5, v3

    #@18
    :goto_0
    if-ne v0, v3, :cond_3

    #@1a
    :goto_1
    if-ne v5, v3, :cond_4

    #@1c
    .end local v1    # "result":I
    :goto_2
    return v1

    #@1d
    .restart local v1    # "result":I
    :cond_2
    move v5, v4

    #@1e
    goto :goto_0

    #@1f
    :cond_3
    move v3, v4

    #@20
    goto :goto_1

    #@21
    :cond_4
    move v1, v2

    #@22
    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "codePoint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 263
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 264
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@a
    move-result v0

    #@b
    .line 265
    .local v0, "cp":I
    if-ne v0, p1, :cond_0

    #@d
    .line 266
    return v1

    #@e
    .line 263
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    goto :goto_0

    #@14
    .line 269
    .end local v0    # "cp":I
    :cond_1
    const/4 v2, -0x1

    #@15
    return v2
.end method

.method public static matchAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 52
    move v4, p2

    #@1
    .local v4, "i":I
    move v5, p3

    #@2
    .line 53
    .local v5, "j":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    .line 54
    .local v0, "alen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v1

    #@a
    .line 55
    .local v1, "blen":I
    :goto_0
    if-ge v4, v0, :cond_0

    #@c
    if-ge v5, v1, :cond_0

    #@e
    .line 56
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v2

    #@12
    .line 57
    .local v2, "ca":C
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v3

    #@16
    .line 58
    .local v3, "cb":C
    if-eq v2, v3, :cond_2

    #@18
    .line 63
    .end local v2    # "ca":C
    .end local v3    # "cb":C
    :cond_0
    sub-int v6, v4, p2

    #@1a
    .line 64
    .local v6, "result":I
    if-eqz v6, :cond_1

    #@1c
    invoke-static {p0, v4}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_3

    #@22
    .line 67
    :cond_1
    :goto_1
    return v6

    #@23
    .line 55
    .end local v6    # "result":I
    .restart local v2    # "ca":C
    .restart local v3    # "cb":C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@25
    add-int/lit8 v5, v5, 0x1

    #@27
    goto :goto_0

    #@28
    .line 64
    .end local v2    # "ca":C
    .end local v3    # "cb":C
    .restart local v6    # "result":I
    :cond_3
    invoke-static {p1, v5}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    #@2b
    move-result v7

    #@2c
    if-nez v7, :cond_1

    #@2e
    .line 65
    add-int/lit8 v6, v6, -0x1

    #@30
    goto :goto_1
.end method

.method public static onCharacterBoundary(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 248
    if-lez p1, :cond_0

    #@4
    .line 249
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    if-lt p1, v2, :cond_2

    #@a
    :cond_0
    move v0, v1

    #@b
    .line 248
    :cond_1
    :goto_0
    return v0

    #@c
    .line 250
    :cond_2
    add-int/lit8 v2, p1, -0x1

    #@e
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 251
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v2

    #@1c
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_1

    #@22
    move v0, v1

    #@23
    goto :goto_0
.end method


# virtual methods
.method public codePointLength(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p1, v1, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    #@8
    move-result v0

    #@9
    return v0
.end method
