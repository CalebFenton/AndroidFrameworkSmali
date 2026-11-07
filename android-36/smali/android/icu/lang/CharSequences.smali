.class public Landroid/icu/lang/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method public static greylist-max-o codePoints(Ljava/lang/CharSequence;)[I
    .registers 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 291
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 292
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 293
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 294
    .local v3, "cp":C
    const v4, 0xdc00

    if-lt v3, v4, :cond_36

    const v4, 0xdfff

    if-gt v3, v4, :cond_36

    if-eqz v2, :cond_36

    .line 295
    add-int/lit8 v4, v1, -0x1

    aget v4, v0, v4

    int-to-char v4, v4

    .line 296
    .local v4, "last":C
    const v5, 0xd800

    if-lt v4, v5, :cond_36

    const v5, 0xdbff

    if-gt v4, v5, :cond_36

    .line 298
    add-int/lit8 v5, v1, -0x1

    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    aput v6, v0, v5

    .line 299
    goto :goto_3b

    .line 302
    .end local v4    # "last":C
    :cond_36
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    aput v3, v0, v1

    move v1, v4

    .line 292
    .end local v3    # "cp":C
    .end local v4    # "j":I
    .restart local v1    # "j":I
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 304
    .end local v2    # "i":I
    :cond_3e
    array-length v2, v0

    if-ne v1, v2, :cond_42

    .line 305
    return-object v0

    .line 307
    :cond_42
    new-array v2, v1, [I

    .line 308
    .local v2, "shortResult":[I
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-object v2
.end method

.method public static greylist-max-o compare(ILjava/lang/CharSequence;)I
    .registers 4
    .param p0, "codepoint"    # I
    .param p1, "a"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 180
    .local v0, "result":I
    if-lez v0, :cond_8

    const/4 v1, -0x1

    goto :goto_d

    :cond_8
    if-gez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static greylist-max-o compare(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "codePoint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    if-ltz p1, :cond_44

    const v0, 0x10ffff

    if-gt p1, v0, :cond_44

    .line 138
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 139
    .local v0, "stringLength":I
    if-nez v0, :cond_f

    .line 140
    const/4 v1, -0x1

    return v1

    .line 142
    :cond_f
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 143
    .local v1, "firstChar":C
    const/high16 v2, 0x10000

    sub-int v2, p1, v2

    .line 145
    .local v2, "offset":I
    if-gez v2, :cond_22

    .line 146
    sub-int v3, v1, p1

    .line 147
    .local v3, "result":I
    if-eqz v3, :cond_1f

    .line 148
    return v3

    .line 150
    :cond_1f
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 153
    .end local v3    # "result":I
    :cond_22
    ushr-int/lit8 v3, v2, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 154
    .local v3, "lead":C
    sub-int v4, v1, v3

    .line 155
    .local v4, "result":I
    if-eqz v4, :cond_2e

    .line 156
    return v4

    .line 158
    :cond_2e
    const/4 v5, 0x1

    if-le v0, v5, :cond_41

    .line 159
    and-int/lit16 v6, v2, 0x3ff

    const v7, 0xdc00

    add-int/2addr v6, v7

    int-to-char v6, v6

    .line 160
    .local v6, "trail":C
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int v4, v5, v6

    .line 161
    if-eqz v4, :cond_41

    .line 162
    return v4

    .line 165
    .end local v6    # "trail":C
    :cond_41
    add-int/lit8 v5, v0, -0x2

    return v5

    .line 136
    .end local v0    # "stringLength":I
    .end local v1    # "firstChar":C
    .end local v2    # "offset":I
    .end local v3    # "lead":C
    .end local v4    # "result":I
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static greylist-max-o compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 222
    .local v0, "alength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 223
    .local v1, "blength":I
    if-gt v0, v1, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 224
    .local v2, "min":I
    :goto_d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_1f

    .line 225
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v4, v5

    .line 226
    .local v4, "diff":I
    if-eqz v4, :cond_1c

    .line 227
    return v4

    .line 224
    .end local v4    # "diff":I
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 230
    .end local v3    # "i":I
    :cond_1f
    sub-int v3, v0, v1

    return v3
.end method

.method public static final greylist-max-o equals(ILjava/lang/CharSequence;)Z
    .registers 5
    .param p0, "codepoint"    # I
    .param p1, "other"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 105
    return v0

    .line 107
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_22

    .line 110
    return v0

    .line 109
    :pswitch_d
    const v1, 0xffff

    if-le p0, v1, :cond_19

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne p0, v1, :cond_19

    move v0, v2

    :cond_19
    return v0

    .line 108
    :pswitch_1a
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne p0, v1, :cond_21

    move v0, v2

    :cond_21
    return v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_d
    .end packed-switch
.end method

.method public static final greylist-max-o equals(Ljava/lang/CharSequence;I)Z
    .registers 3
    .param p0, "other"    # Ljava/lang/CharSequence;
    .param p1, "codepoint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final greylist-max-o equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    .line 209
    :cond_7
    if-nez p1, :cond_a

    goto :goto_e

    .line 210
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    :cond_e
    :goto_e
    return v0
.end method

.method public static greylist-max-o equalsChars(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_12

    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static greylist-max-o getSingleCodePoint(Ljava/lang/CharSequence;)I
    .registers 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 192
    .local v0, "length":I
    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-lt v0, v2, :cond_22

    const/4 v3, 0x2

    if-le v0, v3, :cond_e

    goto :goto_22

    .line 195
    :cond_e
    const/4 v3, 0x0

    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 196
    .local v4, "result":I
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_19

    move v5, v2

    goto :goto_1a

    :cond_19
    move v5, v3

    :goto_1a
    if-ne v0, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    if-ne v5, v2, :cond_21

    move v1, v4

    :cond_21
    return v1

    .line 193
    .end local v4    # "result":I
    :cond_22
    :goto_22
    return v1
.end method

.method public static greylist-max-o indexOf(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "codePoint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 269
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 270
    .local v1, "cp":I
    if-ne v1, p1, :cond_e

    .line 271
    return v0

    .line 268
    :cond_e
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 274
    .end local v0    # "i":I
    .end local v1    # "cp":I
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o matchAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 10
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    move v0, p2

    .local v0, "i":I
    move v1, p3

    .line 57
    .local v1, "j":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 58
    .local v2, "alen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 59
    .local v3, "blen":I
    :goto_a
    if-ge v0, v2, :cond_1e

    if-ge v1, v3, :cond_1e

    .line 60
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 61
    .local v4, "ca":C
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 62
    .local v5, "cb":C
    if-eq v4, v5, :cond_19

    .line 63
    goto :goto_1e

    .line 59
    .end local v4    # "ca":C
    .end local v5    # "cb":C
    :cond_19
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 67
    :cond_1e
    :goto_1e
    sub-int v4, v0, p2

    .line 68
    .local v4, "result":I
    if-eqz v4, :cond_30

    invoke-static {p0, v0}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_30

    invoke-static {p1, v1}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_30

    .line 69
    add-int/lit8 v4, v4, -0x1

    .line 71
    :cond_30
    return v4
.end method

.method public static greylist-max-o onCharacterBoundary(Ljava/lang/CharSequence;I)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    if-lez p1, :cond_21

    .line 254
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_21

    add-int/lit8 v0, p1, -0x1

    .line 255
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 256
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 253
    :goto_22
    return v0
.end method


# virtual methods
.method public greylist-max-o codePointLength(Ljava/lang/CharSequence;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method
