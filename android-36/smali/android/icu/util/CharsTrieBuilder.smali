.class public final Landroid/icu/util/CharsTrieBuilder;
.super Landroid/icu/util/StringTrieBuilder;
.source "CharsTrieBuilder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o chars:[C

.field private greylist-max-o charsLength:I

.field private final greylist-max-o intUnits:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    .line 188
    const/4 v0, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    .line 30
    return-void
.end method

.method private greylist-max-o buildChars(Landroid/icu/util/StringTrieBuilder$Option;)V
    .registers 3
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    .line 83
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    if-nez v0, :cond_a

    .line 84
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    .line 86
    :cond_a
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 87
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 8
    .param p1, "length"    # I

    .line 136
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v0, v0

    if-le p1, v0, :cond_21

    .line 137
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v0, v0

    .line 139
    .local v0, "newCapacity":I
    :cond_8
    mul-int/lit8 v0, v0, 0x2

    .line 140
    if-le v0, p1, :cond_8

    .line 141
    new-array v1, v0, [C

    .line 142
    .local v1, "newChars":[C
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v3, v3

    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v3, v4

    array-length v4, v1

    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    .line 146
    .end local v0    # "newCapacity":I
    .end local v1    # "newChars":[C
    :cond_21
    return-void
.end method

.method private greylist-max-o write([CI)I
    .registers 7
    .param p1, "s"    # [C
    .param p2, "length"    # I

    .line 180
    iget v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    add-int/2addr v0, p2

    .line 181
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    .line 182
    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    .line 183
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return v1
.end method


# virtual methods
.method public greylist-max-o add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/CharsTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    .line 43
    return-object p0
.end method

.method public greylist-max-o build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;
    .registers 5
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    .line 60
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public greylist-max-o buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    .line 77
    invoke-direct {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildChars(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 78
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o clear()Landroid/icu/util/CharsTrieBuilder;
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/icu/util/CharsTrieBuilder;->clearImpl()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    .line 98
    return-object p0
.end method

.method protected greylist-max-o getMaxBranchLinearSubNodeLength()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    const/4 v0, 0x5

    return v0
.end method

.method protected greylist-max-o getMaxLinearMatchLength()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    const/16 v0, 0x10

    return v0
.end method

.method protected greylist-max-o getMinLinearMatch()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/16 v0, 0x30

    return v0
.end method

.method protected greylist-max-o matchNodesCanHaveValues()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o write(I)I
    .registers 6
    .param p1, "unit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    add-int/lit8 v0, v0, 0x1

    .line 156
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    .line 157
    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    .line 158
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v2, v3

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 159
    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return v1
.end method

.method protected greylist-max-o write(II)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    add-int/2addr v0, p2

    .line 170
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    .line 171
    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    .line 172
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v1, v2

    .line 173
    .local v1, "charsOffset":I
    :goto_e
    if-lez p2, :cond_23

    .line 174
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "charsOffset":I
    .local v3, "charsOffset":I
    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->strings:Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    .end local p1    # "offset":I
    .local v5, "offset":I
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    aput-char p1, v2, v1

    .line 175
    add-int/lit8 p2, p2, -0x1

    move v1, v3

    move p1, v5

    goto :goto_e

    .line 177
    .end local v3    # "charsOffset":I
    .end local v5    # "offset":I
    .restart local v1    # "charsOffset":I
    .restart local p1    # "offset":I
    :cond_23
    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return v2
.end method

.method protected greylist-max-o writeDeltaTo(I)I
    .registers 7
    .param p1, "jumpTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    iget v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v0, p1

    .line 255
    .local v0, "i":I
    nop

    .line 256
    const v1, 0xfbff

    if-gt v0, v1, :cond_e

    .line 257
    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    move-result v1

    return v1

    .line 260
    :cond_e
    const v1, 0x3feffff

    const/4 v2, 0x0

    if-gt v0, v1, :cond_21

    .line 261
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const v3, 0xfc00

    shr-int/lit8 v4, v0, 0x10

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 262
    const/4 v1, 0x1

    .local v1, "length":I
    goto :goto_31

    .line 264
    .end local v1    # "length":I
    :cond_21
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const v3, 0xffff

    aput-char v3, v1, v2

    .line 265
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    const/4 v3, 0x1

    aput-char v2, v1, v3

    .line 266
    const/4 v1, 0x2

    .line 268
    .restart local v1    # "length":I
    :goto_31
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "length":I
    .local v3, "length":I
    int-to-char v4, v0

    aput-char v4, v2, v1

    .line 269
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    invoke-direct {p0, v1, v3}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    move-result v1

    return v1
.end method

.method protected greylist-max-o writeValueAndFinal(IZ)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "isFinal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    const v0, 0x8000

    const/4 v1, 0x0

    if-ltz p1, :cond_14

    const/16 v2, 0x3fff

    if-gt p1, v2, :cond_14

    .line 199
    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    move-result v0

    return v0

    .line 202
    :cond_14
    const/4 v2, 0x1

    if-ltz p1, :cond_2d

    const v3, 0x3ffeffff

    if-le p1, v3, :cond_1d

    goto :goto_2d

    .line 211
    :cond_1d
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v4, p1, 0x10

    add-int/lit16 v4, v4, 0x4000

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 212
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    int-to-char v4, p1

    aput-char v4, v3, v2

    .line 213
    const/4 v2, 0x2

    .local v2, "length":I
    goto :goto_41

    .line 203
    .end local v2    # "length":I
    :cond_2d
    :goto_2d
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const/16 v4, 0x7fff

    aput-char v4, v3, v1

    .line 204
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v4, p1, 0x10

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 205
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const/4 v3, 0x2

    int-to-char v4, p1

    aput-char v4, v2, v3

    .line 206
    const/4 v2, 0x3

    .line 215
    .restart local v2    # "length":I
    :goto_41
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    aget-char v4, v4, v1

    if-eqz p2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :goto_4b
    or-int/2addr v0, v4

    int-to-char v0, v0

    aput-char v0, v3, v1

    .line 216
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    invoke-direct {p0, v0, v2}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o writeValueAndType(ZII)I
    .registers 9
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I
    .param p3, "node"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    if-nez p1, :cond_7

    .line 227
    invoke-virtual {p0, p3}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    move-result v0

    return v0

    .line 230
    :cond_7
    const/16 v0, 0x7fc0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_33

    const v3, 0xfdffff

    if-le p2, v3, :cond_13

    goto :goto_33

    .line 235
    :cond_13
    const/16 v3, 0xff

    if-gt p2, v3, :cond_22

    .line 236
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    add-int/lit8 v1, p2, 0x1

    shl-int/lit8 v1, v1, 0x6

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 237
    const/4 v0, 0x1

    .local v0, "length":I
    goto :goto_45

    .line 239
    .end local v0    # "length":I
    :cond_22
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v4, p2, 0xa

    and-int/2addr v0, v4

    add-int/lit16 v0, v0, 0x4040

    int-to-char v0, v0

    aput-char v0, v3, v2

    .line 240
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    int-to-char v3, p2

    aput-char v3, v0, v1

    .line 241
    const/4 v0, 0x2

    .restart local v0    # "length":I
    goto :goto_45

    .line 231
    .end local v0    # "length":I
    :cond_33
    :goto_33
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    aput-char v0, v3, v2

    .line 232
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v3, p2, 0x10

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 233
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const/4 v1, 0x2

    int-to-char v3, p2

    aput-char v3, v0, v1

    .line 234
    const/4 v0, 0x3

    .line 243
    .restart local v0    # "length":I
    :goto_45
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    aget-char v3, v1, v2

    int-to-char v4, p3

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 244
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    invoke-direct {p0, v1, v0}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    move-result v1

    return v1
.end method
