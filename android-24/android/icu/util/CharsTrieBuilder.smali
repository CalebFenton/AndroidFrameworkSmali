.class public final Landroid/icu/util/CharsTrieBuilder;
.super Landroid/icu/util/StringTrieBuilder;
.source "CharsTrieBuilder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private chars:[C

.field private charsLength:I

.field private final intUnits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/CharsTrieBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/CharsTrieBuilder;->-assertionsDisabled:Z

    #@b
    .line 24
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    #@3
    .line 186
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [C

    #@6
    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@8
    .line 28
    return-void
.end method

.method private buildChars(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 1
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 82
    const/16 v0, 0x400

    #@6
    new-array v0, v0, [C

    #@8
    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@a
    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/StringTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    #@d
    .line 79
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .param p1, "length"    # I

    #@0
    .prologue
    .line 134
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@2
    array-length v2, v2

    #@3
    if-le p1, v2, :cond_1

    #@5
    .line 135
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@7
    array-length v0, v2

    #@8
    .line 137
    .local v0, "newCapacity":I
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    #@a
    .line 138
    if-le v0, p1, :cond_0

    #@c
    .line 139
    new-array v1, v0, [C

    #@e
    .line 140
    .local v1, "newChars":[C
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@10
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@12
    array-length v3, v3

    #@13
    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@15
    sub-int/2addr v3, v4

    #@16
    .line 141
    array-length v4, v1

    #@17
    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@19
    sub-int/2addr v4, v5

    #@1a
    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@1c
    .line 140
    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1f
    .line 142
    iput-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@21
    .line 133
    .end local v0    # "newCapacity":I
    .end local v1    # "newChars":[C
    :cond_1
    return-void
.end method

.method private write([CI)I
    .locals 4
    .param p1, "s"    # [C
    .param p2, "length"    # I

    #@0
    .prologue
    .line 178
    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@2
    add-int v0, v1, p2

    #@4
    .line 179
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    #@7
    .line 180
    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@9
    .line 181
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@b
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@d
    array-length v2, v2

    #@e
    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@10
    sub-int/2addr v2, v3

    #@11
    const/4 v3, 0x0

    #@12
    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@15
    .line 182
    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@17
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/StringTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    #@3
    .line 41
    return-object p0
.end method

.method public build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;
    .locals 3
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    #@0
    .prologue
    .line 58
    new-instance v0, Landroid/icu/util/CharsTrie;

    #@2
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@a
    return-object v0
.end method

.method public buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildChars(Landroid/icu/util/StringTrieBuilder$Option;)V

    #@3
    .line 76
    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@5
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@7
    array-length v1, v1

    #@8
    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@a
    sub-int/2addr v1, v2

    #@b
    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@d
    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public clear()Landroid/icu/util/CharsTrieBuilder;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/icu/util/StringTrieBuilder;->clearImpl()V

    #@3
    .line 94
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@6
    .line 95
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@9
    .line 96
    return-object p0
.end method

.method protected getMaxBranchLinearSubNodeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 115
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method protected getMaxLinearMatchLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 131
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected getMinLinearMatch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 123
    const/16 v0, 0x30

    #@2
    return v0
.end method

.method protected matchNodesCanHaveValues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 106
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected write(I)I
    .locals 4
    .param p1, "unit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 153
    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 154
    .local v0, "newLength":I
    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    #@7
    .line 155
    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@9
    .line 156
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@b
    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@d
    array-length v2, v2

    #@e
    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@10
    sub-int/2addr v2, v3

    #@11
    int-to-char v3, p1

    #@12
    aput-char v3, v1, v2

    #@14
    .line 157
    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@16
    return v1
.end method

.method protected write(II)I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 167
    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@2
    add-int v2, v4, p2

    #@4
    .line 168
    .local v2, "newLength":I
    invoke-direct {p0, v2}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    #@7
    .line 169
    iput v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@9
    .line 170
    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@b
    array-length v4, v4

    #@c
    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@e
    sub-int v0, v4, v5

    #@10
    .local v0, "charsOffset":I
    move v1, v0

    #@11
    .end local v0    # "charsOffset":I
    .local v1, "charsOffset":I
    move v3, p1

    #@12
    .line 171
    .end local p1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-lez p2, :cond_0

    #@14
    .line 172
    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    #@16
    add-int/lit8 v0, v1, 0x1

    #@18
    .end local v1    # "charsOffset":I
    .restart local v0    # "charsOffset":I
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@1a
    add-int/lit8 p1, v3, 0x1

    #@1c
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@1f
    move-result v5

    #@20
    aput-char v5, v4, v1

    #@22
    .line 173
    add-int/lit8 p2, p2, -0x1

    #@24
    move v1, v0

    #@25
    .end local v0    # "charsOffset":I
    .restart local v1    # "charsOffset":I
    move v3, p1

    #@26
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@27
    .line 175
    :cond_0
    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@29
    return v4
.end method

.method protected writeDeltaTo(I)I
    .locals 7
    .param p1, "jumpTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 252
    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    #@4
    sub-int v0, v3, p1

    #@6
    .line 253
    .local v0, "i":I
    sget-boolean v3, Landroid/icu/util/CharsTrieBuilder;->-assertionsDisabled:Z

    #@8
    if-nez v3, :cond_1

    #@a
    if-ltz v0, :cond_0

    #@c
    move v3, v4

    #@d
    :goto_0
    if-nez v3, :cond_1

    #@f
    new-instance v3, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v3

    #@15
    :cond_0
    move v3, v5

    #@16
    goto :goto_0

    #@17
    .line 254
    :cond_1
    const v3, 0xfbff

    #@1a
    if-gt v0, v3, :cond_2

    #@1c
    .line 255
    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 258
    :cond_2
    const v3, 0x3feffff

    #@24
    if-gt v0, v3, :cond_3

    #@26
    .line 259
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@28
    shr-int/lit8 v4, v0, 0x10

    #@2a
    const v6, 0xfc00

    #@2d
    add-int/2addr v4, v6

    #@2e
    int-to-char v4, v4

    #@2f
    aput-char v4, v3, v5

    #@31
    .line 260
    const/4 v1, 0x1

    #@32
    .line 266
    .local v1, "length":I
    :goto_1
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@34
    add-int/lit8 v2, v1, 0x1

    #@36
    .end local v1    # "length":I
    .local v2, "length":I
    int-to-char v4, v0

    #@37
    aput-char v4, v3, v1

    #@39
    .line 267
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@3b
    invoke-direct {p0, v3, v2}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    #@3e
    move-result v3

    #@3f
    return v3

    #@40
    .line 262
    .end local v2    # "length":I
    :cond_3
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@42
    const v6, 0xffff

    #@45
    aput-char v6, v3, v5

    #@47
    .line 263
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@49
    shr-int/lit8 v5, v0, 0x10

    #@4b
    int-to-char v5, v5

    #@4c
    aput-char v5, v3, v4

    #@4e
    .line 264
    const/4 v1, 0x2

    #@4f
    .restart local v1    # "length":I
    goto :goto_1
.end method

.method protected writeValueAndFinal(IZ)I
    .locals 6
    .param p1, "i"    # I
    .param p2, "isFinal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const v1, 0x8000

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 196
    if-ltz p1, :cond_1

    #@7
    const/16 v3, 0x3fff

    #@9
    if-gt p1, v3, :cond_1

    #@b
    .line 197
    if-eqz p2, :cond_0

    #@d
    :goto_0
    or-int/2addr v1, p1

    #@e
    invoke-virtual {p0, v1}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    :cond_0
    move v1, v2

    #@14
    goto :goto_0

    #@15
    .line 200
    :cond_1
    if-ltz p1, :cond_2

    #@17
    const v3, 0x3ffeffff

    #@1a
    if-le p1, v3, :cond_3

    #@1c
    .line 201
    :cond_2
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@1e
    const/16 v4, 0x7fff

    #@20
    aput-char v4, v3, v2

    #@22
    .line 202
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@24
    shr-int/lit8 v4, p1, 0x10

    #@26
    int-to-char v4, v4

    #@27
    aput-char v4, v3, v5

    #@29
    .line 203
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@2b
    int-to-char v4, p1

    #@2c
    const/4 v5, 0x2

    #@2d
    aput-char v4, v3, v5

    #@2f
    .line 204
    const/4 v0, 0x3

    #@30
    .line 213
    .local v0, "length":I
    :goto_1
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@32
    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@34
    aget-char v4, v4, v2

    #@36
    if-eqz p2, :cond_4

    #@38
    :goto_2
    or-int/2addr v1, v4

    #@39
    int-to-char v1, v1

    #@3a
    aput-char v1, v3, v2

    #@3c
    .line 214
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@3e
    invoke-direct {p0, v1, v0}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    #@41
    move-result v1

    #@42
    return v1

    #@43
    .line 209
    .end local v0    # "length":I
    :cond_3
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@45
    shr-int/lit8 v4, p1, 0x10

    #@47
    add-int/lit16 v4, v4, 0x4000

    #@49
    int-to-char v4, v4

    #@4a
    aput-char v4, v3, v2

    #@4c
    .line 210
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@4e
    int-to-char v4, p1

    #@4f
    aput-char v4, v3, v5

    #@51
    .line 211
    const/4 v0, 0x2

    #@52
    .restart local v0    # "length":I
    goto :goto_1

    #@53
    :cond_4
    move v1, v2

    #@54
    .line 213
    goto :goto_2
.end method

.method protected writeValueAndType(ZII)I
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I
    .param p3, "node"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 224
    if-nez p1, :cond_0

    #@4
    .line 225
    invoke-virtual {p0, p3}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 228
    :cond_0
    if-ltz p2, :cond_1

    #@b
    const v1, 0xfdffff

    #@e
    if-le p2, v1, :cond_2

    #@10
    .line 229
    :cond_1
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@12
    const/16 v2, 0x7fc0

    #@14
    aput-char v2, v1, v4

    #@16
    .line 230
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@18
    shr-int/lit8 v2, p2, 0x10

    #@1a
    int-to-char v2, v2

    #@1b
    aput-char v2, v1, v3

    #@1d
    .line 231
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@1f
    int-to-char v2, p2

    #@20
    const/4 v3, 0x2

    #@21
    aput-char v2, v1, v3

    #@23
    .line 232
    const/4 v0, 0x3

    #@24
    .line 241
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@26
    aget-char v2, v1, v4

    #@28
    int-to-char v3, p3

    #@29
    or-int/2addr v2, v3

    #@2a
    int-to-char v2, v2

    #@2b
    aput-char v2, v1, v4

    #@2d
    .line 242
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@2f
    invoke-direct {p0, v1, v0}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    #@32
    move-result v1

    #@33
    return v1

    #@34
    .line 233
    .end local v0    # "length":I
    :cond_2
    const/16 v1, 0xff

    #@36
    if-gt p2, v1, :cond_3

    #@38
    .line 234
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@3a
    add-int/lit8 v2, p2, 0x1

    #@3c
    shl-int/lit8 v2, v2, 0x6

    #@3e
    int-to-char v2, v2

    #@3f
    aput-char v2, v1, v4

    #@41
    .line 235
    const/4 v0, 0x1

    #@42
    .restart local v0    # "length":I
    goto :goto_0

    #@43
    .line 237
    .end local v0    # "length":I
    :cond_3
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@45
    shr-int/lit8 v2, p2, 0xa

    #@47
    and-int/lit16 v2, v2, 0x7fc0

    #@49
    add-int/lit16 v2, v2, 0x4040

    #@4b
    int-to-char v2, v2

    #@4c
    aput-char v2, v1, v4

    #@4e
    .line 238
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    #@50
    int-to-char v2, p2

    #@51
    aput-char v2, v1, v3

    #@53
    .line 239
    const/4 v0, 0x2

    #@54
    .restart local v0    # "length":I
    goto :goto_0
.end method
