.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private count:I

.field private shared:Z

.field private value:[C


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [C

    #@7
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@9
    .line 75
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    if-gez p1, :cond_0

    #@5
    .line 81
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 83
    :cond_0
    new-array v0, p1, [C

    #@11
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@13
    .line 79
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@a
    .line 88
    iput-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@c
    .line 89
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@e
    add-int/lit8 v0, v0, 0x10

    #@10
    new-array v0, v0, [C

    #@12
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@14
    .line 90
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@16
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@18
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@1b
    .line 86
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 5
    .param p1, "min"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 94
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3
    array-length v2, v2

    #@4
    shr-int/lit8 v2, v2, 0x1

    #@6
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@8
    array-length v3, v3

    #@9
    add-int/2addr v2, v3

    #@a
    add-int/lit8 v0, v2, 0x2

    #@c
    .line 95
    .local v0, "newCount":I
    if-le p1, v0, :cond_0

    #@e
    .end local p1    # "min":I
    :goto_0
    new-array v1, p1, [C

    #@10
    .line 96
    .local v1, "newData":[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@12
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@14
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@17
    .line 97
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@19
    .line 98
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@1b
    .line 93
    return-void

    #@1c
    .end local v1    # "newData":[C
    .restart local p1    # "min":I
    :cond_0
    move p1, v0

    #@1d
    .line 95
    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@2
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    invoke-direct {v0, v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(II)V

    #@7
    throw v0
.end method

.method private move(II)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 377
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3
    array-length v2, v2

    #@4
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6
    sub-int/2addr v2, v3

    #@7
    if-lt v2, p1, :cond_1

    #@9
    .line 378
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@b
    if-nez v2, :cond_0

    #@d
    .line 380
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@f
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@11
    add-int v4, p2, p1

    #@13
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@15
    sub-int/2addr v5, p2

    #@16
    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@19
    .line 381
    return-void

    #@1a
    .line 383
    :cond_0
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1c
    array-length v0, v2

    #@1d
    .line 388
    .local v0, "newCount":I
    :goto_0
    new-array v1, v0, [C

    #@1f
    .line 389
    .local v1, "newData":[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@21
    invoke-static {v2, v5, v1, v5, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@24
    .line 391
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@26
    add-int v3, p2, p1

    #@28
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2a
    sub-int/2addr v4, p2

    #@2b
    invoke-static {v2, p2, v1, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@2e
    .line 392
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@30
    .line 393
    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@32
    .line 375
    return-void

    #@33
    .line 385
    .end local v0    # "newCount":I
    .end local v1    # "newData":[C
    :cond_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@35
    add-int/2addr v2, p1

    #@36
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@38
    array-length v3, v3

    #@39
    mul-int/lit8 v3, v3, 0x2

    #@3b
    add-int/lit8 v3, v3, 0x2

    #@3d
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v0

    #@41
    .restart local v0    # "newCount":I
    goto :goto_0
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@2
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    sub-int v2, p2, p1

    #@6
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    #@9
    throw v0
.end method


# virtual methods
.method final append0(C)V
    .locals 3
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 132
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@4
    array-length v1, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 133
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@e
    .line 135
    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@10
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@16
    aput-char p1, v0, v1

    #@18
    .line 131
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 153
    if-nez p1, :cond_0

    #@3
    .line 154
    const-string/jumbo p1, "null"

    #@6
    .line 156
    :cond_0
    or-int v6, p2, p3

    #@8
    if-ltz v6, :cond_1

    #@a
    if-le p2, p3, :cond_2

    #@c
    .line 157
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v6

    #@12
    .line 156
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v6

    #@16
    if-gt p3, v6, :cond_1

    #@18
    .line 160
    sub-int v3, p3, p2

    #@1a
    .line 161
    .local v3, "length":I
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    add-int v4, v6, v3

    #@1e
    .line 162
    .local v4, "newCount":I
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@20
    array-length v6, v6

    #@21
    if-le v4, v6, :cond_5

    #@23
    .line 163
    invoke-direct {p0, v4}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@26
    .line 169
    :cond_3
    :goto_0
    instance-of v6, p1, Ljava/lang/String;

    #@28
    if-eqz v6, :cond_6

    #@2a
    .line 170
    check-cast p1, Ljava/lang/String;

    #@2c
    .end local p1    # "s":Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2e
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@30
    invoke-virtual {p1, p2, p3, v6, v7}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@33
    .line 181
    :cond_4
    :goto_1
    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@35
    .line 152
    return-void

    #@36
    .line 164
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_5
    iget-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@38
    if-eqz v6, :cond_3

    #@3a
    .line 165
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3c
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, [C

    #@42
    iput-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@44
    .line 166
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@46
    goto :goto_0

    #@47
    .line 171
    :cond_6
    instance-of v6, p1, Ljava/lang/AbstractStringBuilder;

    #@49
    if-eqz v6, :cond_7

    #@4b
    move-object v5, p1

    #@4c
    .line 172
    check-cast v5, Ljava/lang/AbstractStringBuilder;

    #@4e
    .line 173
    .local v5, "other":Ljava/lang/AbstractStringBuilder;
    iget-object v6, v5, Ljava/lang/AbstractStringBuilder;->value:[C

    #@50
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@52
    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@54
    invoke-static {v6, p2, v7, v8, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@57
    goto :goto_1

    #@58
    .line 175
    .end local v5    # "other":Ljava/lang/AbstractStringBuilder;
    :cond_7
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5a
    .line 176
    .local v1, "j":I
    move v0, p2

    #@5b
    .local v0, "i":I
    move v2, v1

    #@5c
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_2
    if-ge v0, p3, :cond_4

    #@5e
    .line 177
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@60
    add-int/lit8 v1, v2, 0x1

    #@62
    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@65
    move-result v7

    #@66
    aput-char v7, v6, v2

    #@68
    .line 176
    add-int/lit8 v0, v0, 0x1

    #@6a
    move v2, v1

    #@6b
    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_2
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    if-nez p1, :cond_0

    #@2
    .line 140
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()V

    #@5
    .line 141
    return-void

    #@6
    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 144
    .local v0, "length":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@c
    add-int v1, v2, v0

    #@e
    .line 145
    .local v1, "newCount":I
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@10
    array-length v2, v2

    #@11
    if-le v1, v2, :cond_1

    #@13
    .line 146
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@16
    .line 148
    :cond_1
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@18
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-virtual {p1, v4, v0, v2, v3}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@1e
    .line 149
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@20
    .line 138
    return-void
.end method

.method final append0([C)V
    .locals 5
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 113
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    array-length v2, p1

    #@3
    add-int v0, v1, v2

    #@5
    .line 114
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 115
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@d
    .line 117
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@f
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@11
    array-length v3, p1

    #@12
    const/4 v4, 0x0

    #@13
    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@16
    .line 118
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@18
    .line 112
    return-void
.end method

.method final append0([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 122
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 123
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6
    add-int v0, v1, p3

    #@8
    .line 124
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@a
    array-length v1, v1

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 125
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@10
    .line 127
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@12
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@14
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@17
    .line 128
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@19
    .line 121
    return-void
.end method

.method final appendNull()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x6c

    #@2
    .line 102
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    add-int/lit8 v0, v1, 0x4

    #@6
    .line 103
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@8
    array-length v1, v1

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@e
    .line 106
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@10
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@16
    const/16 v3, 0x6e

    #@18
    aput-char v3, v1, v2

    #@1a
    .line 107
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1c
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1e
    add-int/lit8 v3, v2, 0x1

    #@20
    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@22
    const/16 v3, 0x75

    #@24
    aput-char v3, v1, v2

    #@26
    .line 108
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@28
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2a
    add-int/lit8 v3, v2, 0x1

    #@2c
    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2e
    aput-char v4, v1, v2

    #@30
    .line 109
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@32
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@34
    add-int/lit8 v3, v2, 0x1

    #@36
    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@38
    aput-char v4, v1, v2

    #@3a
    .line 101
    return-void
.end method

.method public capacity()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 200
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 201
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 203
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@d
    aget-char v0, v0, p1

    #@f
    return v0
.end method

.method public codePointAt(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 813
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 814
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 816
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@d
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@f
    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 833
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 834
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 836
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 857
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-le p2, v0, :cond_1

    #@6
    .line 858
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 857
    :cond_1
    if-gt p1, p2, :cond_0

    #@d
    .line 860
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@f
    sub-int v1, p2, p1

    #@11
    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method final delete0(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 218
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3
    if-le p2, v2, :cond_0

    #@5
    .line 219
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@7
    .line 222
    :cond_0
    if-ltz p1, :cond_1

    #@9
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    if-le p1, v2, :cond_2

    #@d
    .line 223
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 222
    :cond_2
    if-gt p1, p2, :cond_1

    #@14
    .line 229
    if-ne p2, p1, :cond_3

    #@16
    .line 230
    return-void

    #@17
    .line 234
    :cond_3
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@19
    sub-int v0, v2, p2

    #@1b
    .line 235
    .local v0, "length":I
    if-ltz v0, :cond_4

    #@1d
    .line 236
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@1f
    if-nez v2, :cond_5

    #@21
    .line 237
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@23
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@25
    invoke-static {v2, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@28
    .line 246
    :cond_4
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2a
    sub-int v3, p2, p1

    #@2c
    sub-int/2addr v2, v3

    #@2d
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2f
    .line 214
    return-void

    #@30
    .line 239
    :cond_5
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@32
    array-length v2, v2

    #@33
    new-array v1, v2, [C

    #@35
    .line 240
    .local v1, "newData":[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@37
    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3a
    .line 241
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3c
    invoke-static {v2, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3f
    .line 242
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@41
    .line 243
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@43
    goto :goto_0
.end method

.method final deleteCharAt0(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 250
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 251
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 254
    :cond_1
    add-int/lit8 v0, p1, 0x1

    #@d
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->delete0(II)V

    #@10
    .line 249
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "min"    # I

    #@0
    .prologue
    .line 270
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    array-length v1, v1

    #@3
    if-le p1, v1, :cond_0

    #@5
    .line 271
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@7
    array-length v1, v1

    #@8
    mul-int/lit8 v1, v1, 0x2

    #@a
    add-int/lit8 v0, v1, 0x2

    #@c
    .line 272
    .local v0, "ourMin":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@13
    .line 269
    .end local v0    # "ourMin":I
    :cond_0
    return-void
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dst"    # [C
    .param p4, "dstStart"    # I

    #@0
    .prologue
    .line 296
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    if-gt p1, v0, :cond_0

    #@4
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6
    if-le p2, v0, :cond_1

    #@8
    .line 297
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@b
    move-result-object v0

    #@c
    throw v0

    #@d
    .line 296
    :cond_1
    if-gt p1, p2, :cond_0

    #@f
    .line 299
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@11
    sub-int v1, p2, p1

    #@13
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@16
    .line 295
    return-void
.end method

.method final getValue()[C
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 662
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 10
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 679
    if-gez p2, :cond_0

    #@4
    .line 680
    const/4 p2, 0x0

    #@5
    .line 682
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v5

    #@9
    .line 683
    .local v5, "subCount":I
    if-lez v5, :cond_9

    #@b
    .line 684
    add-int v6, v5, p2

    #@d
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@f
    if-le v6, v7, :cond_1

    #@11
    .line 685
    return v9

    #@12
    .line 688
    :cond_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 690
    .local v0, "firstChar":C
    :goto_0
    move v2, p2

    #@17
    .line 691
    .local v2, "i":I
    const/4 v1, 0x0

    #@18
    .line 692
    .local v1, "found":Z
    :goto_1
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1a
    if-ge v2, v6, :cond_2

    #@1c
    .line 693
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1e
    aget-char v6, v6, v2

    #@20
    if-ne v6, v0, :cond_4

    #@22
    .line 694
    const/4 v1, 0x1

    #@23
    .line 698
    :cond_2
    if-eqz v1, :cond_3

    #@25
    add-int v6, v5, v2

    #@27
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@29
    if-le v6, v7, :cond_5

    #@2b
    .line 699
    :cond_3
    return v9

    #@2c
    .line 692
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 701
    :cond_5
    move v3, v2

    #@30
    .local v3, "o1":I
    const/4 v4, 0x0

    #@31
    .line 702
    .local v4, "o2":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@33
    if-ge v4, v5, :cond_7

    #@35
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@37
    add-int/lit8 v3, v3, 0x1

    #@39
    aget-char v6, v6, v3

    #@3b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v7

    #@3f
    if-eq v6, v7, :cond_6

    #@41
    .line 705
    :cond_7
    if-ne v4, v5, :cond_8

    #@43
    .line 706
    return v2

    #@44
    .line 708
    :cond_8
    add-int/lit8 p2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 711
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_9
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@49
    if-lt p2, v6, :cond_a

    #@4b
    if-nez p2, :cond_b

    #@4d
    .end local p2    # "start":I
    :cond_a
    :goto_2
    return p2

    #@4e
    .restart local p2    # "start":I
    :cond_b
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@50
    goto :goto_2
.end method

.method final insert0(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    .line 331
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 333
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@a
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@d
    throw v0

    #@e
    .line 335
    :cond_1
    const/4 v0, 0x1

    #@f
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    #@12
    .line 336
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@14
    aput-char p2, v0, p1

    #@16
    .line 337
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    .line 330
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 357
    if-nez p2, :cond_0

    #@2
    .line 358
    const-string/jumbo p2, "null"

    #@5
    .line 360
    :cond_0
    or-int v0, p1, p3

    #@7
    or-int/2addr v0, p4

    #@8
    if-ltz v0, :cond_1

    #@a
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@c
    if-le p1, v0, :cond_2

    #@e
    .line 361
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v0

    #@14
    .line 360
    :cond_2
    if-gt p3, p4, :cond_1

    #@16
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@19
    move-result v0

    #@1a
    if-gt p4, v0, :cond_1

    #@1c
    .line 363
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    #@27
    .line 356
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 341
    if-ltz p1, :cond_2

    #@3
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    if-gt p1, v1, :cond_2

    #@7
    .line 342
    if-nez p2, :cond_0

    #@9
    .line 343
    const-string/jumbo p2, "null"

    #@c
    .line 345
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    .line 346
    .local v0, "min":I
    if-eqz v0, :cond_1

    #@12
    .line 347
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    #@15
    .line 348
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@17
    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@1a
    .line 349
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    add-int/2addr v1, v0

    #@1d
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1f
    .line 340
    :cond_1
    return-void

    #@20
    .line 352
    .end local v0    # "min":I
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@23
    move-result-object v1

    #@24
    throw v1
.end method

.method final insert0(I[C)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 303
    if-ltz p1, :cond_0

    #@3
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 304
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 306
    :cond_1
    array-length v0, p2

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 307
    array-length v0, p2

    #@10
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    #@13
    .line 308
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15
    array-length v1, p2

    #@16
    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@19
    .line 309
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1b
    array-length v1, p2

    #@1c
    add-int/2addr v0, v1

    #@1d
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1f
    .line 302
    :cond_2
    return-void
.end method

.method final insert0(I[CII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 314
    if-ltz p1, :cond_1

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-gt p1, v0, :cond_1

    #@6
    .line 316
    if-ltz p3, :cond_1

    #@8
    if-ltz p4, :cond_1

    #@a
    array-length v0, p2

    #@b
    sub-int/2addr v0, p3

    #@c
    if-gt p4, v0, :cond_1

    #@e
    .line 317
    if-eqz p4, :cond_0

    #@10
    .line 318
    invoke-direct {p0, p4, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    #@13
    .line 319
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15
    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@18
    .line 320
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1a
    add-int/2addr v0, p4

    #@1b
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1d
    .line 322
    :cond_0
    return-void

    #@1e
    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "this.length="

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 326
    const-string/jumbo v2, "; index="

    #@35
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 326
    const-string/jumbo v2, "; chars.length="

    #@40
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 326
    array-length v2, p2

    #@45
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 327
    const-string/jumbo v2, "; start="

    #@4c
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 327
    const-string/jumbo v2, "; length="

    #@57
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 728
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    .line 748
    .local v5, "subCount":I
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@8
    if-gt v5, v6, :cond_9

    #@a
    if-ltz p2, :cond_9

    #@c
    .line 749
    if-lez v5, :cond_7

    #@e
    .line 750
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@10
    sub-int/2addr v6, v5

    #@11
    if-le p2, v6, :cond_0

    #@13
    .line 751
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@15
    sub-int p2, v6, v5

    #@17
    .line 755
    :cond_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 757
    .local v0, "firstChar":C
    :goto_0
    move v2, p2

    #@1c
    .line 758
    .local v2, "i":I
    const/4 v1, 0x0

    #@1d
    .line 759
    .local v1, "found":Z
    :goto_1
    if-ltz v2, :cond_1

    #@1f
    .line 760
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@21
    aget-char v6, v6, v2

    #@23
    if-ne v6, v0, :cond_2

    #@25
    .line 761
    const/4 v1, 0x1

    #@26
    .line 765
    :cond_1
    if-nez v1, :cond_3

    #@28
    .line 766
    return v8

    #@29
    .line 759
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 768
    :cond_3
    move v3, v2

    #@2d
    .local v3, "o1":I
    const/4 v4, 0x0

    #@2e
    .line 769
    .local v4, "o2":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@30
    if-ge v4, v5, :cond_5

    #@32
    .line 770
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@34
    add-int/lit8 v3, v3, 0x1

    #@36
    aget-char v6, v6, v3

    #@38
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v7

    #@3c
    if-eq v6, v7, :cond_4

    #@3e
    .line 773
    :cond_5
    if-ne v4, v5, :cond_6

    #@40
    .line 774
    return v2

    #@41
    .line 776
    :cond_6
    add-int/lit8 p2, v2, -0x1

    #@43
    goto :goto_0

    #@44
    .line 779
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_7
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@46
    if-ge p2, v6, :cond_8

    #@48
    .end local p2    # "start":I
    :goto_2
    return p2

    #@49
    .restart local p2    # "start":I
    :cond_8
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4b
    goto :goto_2

    #@4c
    .line 781
    :cond_9
    return v8
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 372
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 397
    if-ltz p1, :cond_7

    #@3
    .line 398
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    if-le p2, v3, :cond_0

    #@7
    .line 399
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@9
    .line 401
    :cond_0
    if-le p2, p1, :cond_5

    #@b
    .line 402
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .line 403
    .local v2, "stringLength":I
    sub-int v3, p2, p1

    #@11
    sub-int v0, v3, v2

    #@13
    .line 404
    .local v0, "diff":I
    if-lez v0, :cond_3

    #@15
    .line 405
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@17
    if-nez v3, :cond_2

    #@19
    .line 407
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1b
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1d
    add-int v5, p1, v2

    #@1f
    .line 408
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@21
    sub-int/2addr v6, p2

    #@22
    .line 407
    invoke-static {v3, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@25
    .line 425
    :cond_1
    :goto_0
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@27
    invoke-virtual {p3, v7, v2, v3, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@2a
    .line 426
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2c
    sub-int/2addr v3, v0

    #@2d
    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2f
    .line 427
    return-void

    #@30
    .line 410
    :cond_2
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@32
    array-length v3, v3

    #@33
    new-array v1, v3, [C

    #@35
    .line 411
    .local v1, "newData":[C
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@37
    invoke-static {v3, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3a
    .line 413
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3c
    add-int v4, p1, v2

    #@3e
    .line 414
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@40
    sub-int/2addr v5, p2

    #@41
    .line 413
    invoke-static {v3, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@44
    .line 415
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@46
    .line 416
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@48
    goto :goto_0

    #@49
    .line 418
    .end local v1    # "newData":[C
    :cond_3
    if-gez v0, :cond_4

    #@4b
    .line 420
    neg-int v3, v0

    #@4c
    invoke-direct {p0, v3, p2}, Ljava/lang/AbstractStringBuilder;->move(II)V

    #@4f
    goto :goto_0

    #@50
    .line 421
    :cond_4
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@52
    if-eqz v3, :cond_1

    #@54
    .line 422
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@56
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, [C

    #@5c
    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@5e
    .line 423
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@60
    goto :goto_0

    #@61
    .line 429
    .end local v0    # "diff":I
    .end local v2    # "stringLength":I
    :cond_5
    if-ne p1, p2, :cond_7

    #@63
    .line 430
    if-nez p3, :cond_6

    #@65
    .line 431
    new-instance v3, Ljava/lang/NullPointerException;

    #@67
    const-string/jumbo v4, "string == null"

    #@6a
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v3

    #@6e
    .line 433
    :cond_6
    invoke-virtual {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    #@71
    .line 434
    return-void

    #@72
    .line 437
    :cond_7
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@75
    move-result-object v3

    #@76
    throw v3
.end method

.method final reverse0()V
    .locals 17

    #@0
    .prologue
    .line 441
    move-object/from16 v0, p0

    #@2
    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    const/16 v16, 0x2

    #@6
    move/from16 v0, v16

    #@8
    if-ge v15, v0, :cond_0

    #@a
    .line 442
    return-void

    #@b
    .line 444
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@f
    if-nez v15, :cond_d

    #@11
    .line 445
    move-object/from16 v0, p0

    #@13
    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@15
    add-int/lit8 v3, v15, -0x1

    #@17
    .line 446
    .local v3, "end":I
    move-object/from16 v0, p0

    #@19
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1b
    const/16 v16, 0x0

    #@1d
    aget-char v6, v15, v16

    #@1f
    .line 447
    .local v6, "frontHigh":C
    move-object/from16 v0, p0

    #@21
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@23
    aget-char v5, v15, v3

    #@25
    .line 448
    .local v5, "endLow":C
    const/4 v2, 0x1

    #@26
    .local v2, "allowFrontSur":Z
    const/4 v1, 0x1

    #@27
    .line 449
    .local v1, "allowEndSur":Z
    const/4 v9, 0x0

    #@28
    .local v9, "i":I
    move-object/from16 v0, p0

    #@2a
    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2c
    div-int/lit8 v11, v15, 0x2

    #@2e
    .local v11, "mid":I
    :goto_0
    if-ge v9, v11, :cond_9

    #@30
    .line 450
    move-object/from16 v0, p0

    #@32
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@34
    add-int/lit8 v16, v9, 0x1

    #@36
    aget-char v7, v15, v16

    #@38
    .line 451
    .local v7, "frontLow":C
    move-object/from16 v0, p0

    #@3a
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3c
    add-int/lit8 v16, v3, -0x1

    #@3e
    aget-char v4, v15, v16

    #@40
    .line 452
    .local v4, "endHigh":C
    if-eqz v2, :cond_2

    #@42
    const v15, 0xdc00

    #@45
    if-lt v7, v15, :cond_2

    #@47
    .line 453
    const v15, 0xdfff

    #@4a
    if-gt v7, v15, :cond_2

    #@4c
    const v15, 0xd800

    #@4f
    if-lt v6, v15, :cond_2

    #@51
    .line 454
    const v15, 0xdbff

    #@54
    if-gt v6, v15, :cond_1

    #@56
    const/4 v14, 0x1

    #@57
    .line 455
    .local v14, "surAtFront":Z
    :goto_1
    if-eqz v14, :cond_3

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5d
    const/16 v16, 0x3

    #@5f
    move/from16 v0, v16

    #@61
    if-ge v15, v0, :cond_3

    #@63
    .line 456
    return-void

    #@64
    .line 454
    .end local v14    # "surAtFront":Z
    :cond_1
    const/4 v14, 0x0

    #@65
    .restart local v14    # "surAtFront":Z
    goto :goto_1

    #@66
    .line 452
    .end local v14    # "surAtFront":Z
    :cond_2
    const/4 v14, 0x0

    #@67
    .restart local v14    # "surAtFront":Z
    goto :goto_1

    #@68
    .line 458
    :cond_3
    if-eqz v1, :cond_5

    #@6a
    const v15, 0xd800

    #@6d
    if-lt v4, v15, :cond_5

    #@6f
    .line 459
    const v15, 0xdbff

    #@72
    if-gt v4, v15, :cond_5

    #@74
    const v15, 0xdc00

    #@77
    if-lt v5, v15, :cond_5

    #@79
    .line 460
    const v15, 0xdfff

    #@7c
    if-gt v5, v15, :cond_4

    #@7e
    const/4 v13, 0x1

    #@7f
    .line 461
    .local v13, "surAtEnd":Z
    :goto_2
    const/4 v1, 0x1

    #@80
    const/4 v2, 0x1

    #@81
    .line 462
    if-ne v14, v13, :cond_7

    #@83
    .line 463
    if-eqz v14, :cond_6

    #@85
    .line 465
    move-object/from16 v0, p0

    #@87
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@89
    aput-char v7, v15, v3

    #@8b
    .line 466
    move-object/from16 v0, p0

    #@8d
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@8f
    add-int/lit8 v16, v3, -0x1

    #@91
    aput-char v6, v15, v16

    #@93
    .line 467
    move-object/from16 v0, p0

    #@95
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@97
    aput-char v4, v15, v9

    #@99
    .line 468
    move-object/from16 v0, p0

    #@9b
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@9d
    add-int/lit8 v16, v9, 0x1

    #@9f
    aput-char v5, v15, v16

    #@a1
    .line 469
    move-object/from16 v0, p0

    #@a3
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@a5
    add-int/lit8 v16, v9, 0x2

    #@a7
    aget-char v6, v15, v16

    #@a9
    .line 470
    move-object/from16 v0, p0

    #@ab
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@ad
    add-int/lit8 v16, v3, -0x2

    #@af
    aget-char v5, v15, v16

    #@b1
    .line 471
    add-int/lit8 v9, v9, 0x1

    #@b3
    .line 472
    add-int/lit8 v3, v3, -0x1

    #@b5
    .line 449
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@b7
    add-int/lit8 v3, v3, -0x1

    #@b9
    goto/16 :goto_0

    #@bb
    .line 460
    .end local v13    # "surAtEnd":Z
    :cond_4
    const/4 v13, 0x0

    #@bc
    .restart local v13    # "surAtEnd":Z
    goto :goto_2

    #@bd
    .line 458
    .end local v13    # "surAtEnd":Z
    :cond_5
    const/4 v13, 0x0

    #@be
    .restart local v13    # "surAtEnd":Z
    goto :goto_2

    #@bf
    .line 475
    :cond_6
    move-object/from16 v0, p0

    #@c1
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@c3
    aput-char v6, v15, v3

    #@c5
    .line 476
    move-object/from16 v0, p0

    #@c7
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@c9
    aput-char v5, v15, v9

    #@cb
    .line 477
    move v6, v7

    #@cc
    .line 478
    move v5, v4

    #@cd
    goto :goto_3

    #@ce
    .line 481
    :cond_7
    if-eqz v14, :cond_8

    #@d0
    .line 483
    move-object/from16 v0, p0

    #@d2
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@d4
    aput-char v7, v15, v3

    #@d6
    .line 484
    move-object/from16 v0, p0

    #@d8
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@da
    aput-char v5, v15, v9

    #@dc
    .line 485
    move v5, v4

    #@dd
    .line 486
    const/4 v2, 0x0

    #@de
    goto :goto_3

    #@df
    .line 489
    :cond_8
    move-object/from16 v0, p0

    #@e1
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e3
    aput-char v6, v15, v3

    #@e5
    .line 490
    move-object/from16 v0, p0

    #@e7
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e9
    aput-char v4, v15, v9

    #@eb
    .line 491
    move v6, v7

    #@ec
    .line 492
    const/4 v1, 0x0

    #@ed
    goto :goto_3

    #@ee
    .line 496
    .end local v4    # "endHigh":C
    .end local v7    # "frontLow":C
    .end local v13    # "surAtEnd":Z
    .end local v14    # "surAtFront":Z
    :cond_9
    move-object/from16 v0, p0

    #@f0
    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@f2
    and-int/lit8 v15, v15, 0x1

    #@f4
    const/16 v16, 0x1

    #@f6
    move/from16 v0, v16

    #@f8
    if-ne v15, v0, :cond_a

    #@fa
    if-eqz v2, :cond_b

    #@fc
    if-eqz v1, :cond_b

    #@fe
    .line 440
    .end local v1    # "allowEndSur":Z
    .end local v2    # "allowFrontSur":Z
    .end local v5    # "endLow":C
    .end local v6    # "frontHigh":C
    .end local v11    # "mid":I
    :cond_a
    :goto_4
    return-void

    #@ff
    .line 497
    .restart local v1    # "allowEndSur":Z
    .restart local v2    # "allowFrontSur":Z
    .restart local v5    # "endLow":C
    .restart local v6    # "frontHigh":C
    .restart local v11    # "mid":I
    :cond_b
    move-object/from16 v0, p0

    #@101
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@103
    if-eqz v2, :cond_c

    #@105
    .end local v5    # "endLow":C
    :goto_5
    aput-char v5, v15, v3

    #@107
    goto :goto_4

    #@108
    .restart local v5    # "endLow":C
    :cond_c
    move v5, v6

    #@109
    goto :goto_5

    #@10a
    .line 500
    .end local v1    # "allowEndSur":Z
    .end local v2    # "allowFrontSur":Z
    .end local v3    # "end":I
    .end local v5    # "endLow":C
    .end local v6    # "frontHigh":C
    .end local v9    # "i":I
    .end local v11    # "mid":I
    :cond_d
    move-object/from16 v0, p0

    #@10c
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@10e
    array-length v15, v15

    #@10f
    new-array v12, v15, [C

    #@111
    .line 501
    .local v12, "newData":[C
    const/4 v9, 0x0

    #@112
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    #@114
    iget v3, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@116
    .restart local v3    # "end":I
    :goto_6
    move-object/from16 v0, p0

    #@118
    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@11a
    if-ge v9, v15, :cond_f

    #@11c
    .line 502
    move-object/from16 v0, p0

    #@11e
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@120
    aget-char v8, v15, v9

    #@122
    .line 503
    .local v8, "high":C
    add-int/lit8 v15, v9, 0x1

    #@124
    move-object/from16 v0, p0

    #@126
    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    #@128
    move/from16 v16, v0

    #@12a
    move/from16 v0, v16

    #@12c
    if-ge v15, v0, :cond_e

    #@12e
    const v15, 0xd800

    #@131
    if-lt v8, v15, :cond_e

    #@133
    const v15, 0xdbff

    #@136
    if-gt v8, v15, :cond_e

    #@138
    .line 504
    move-object/from16 v0, p0

    #@13a
    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@13c
    add-int/lit8 v16, v9, 0x1

    #@13e
    aget-char v10, v15, v16

    #@140
    .line 505
    .local v10, "low":C
    const v15, 0xdc00

    #@143
    if-lt v10, v15, :cond_e

    #@145
    const v15, 0xdfff

    #@148
    if-gt v10, v15, :cond_e

    #@14a
    .line 506
    add-int/lit8 v3, v3, -0x1

    #@14c
    aput-char v10, v12, v3

    #@14e
    .line 507
    add-int/lit8 v9, v9, 0x1

    #@150
    .line 510
    .end local v10    # "low":C
    :cond_e
    add-int/lit8 v3, v3, -0x1

    #@152
    aput-char v8, v12, v3

    #@154
    .line 501
    add-int/lit8 v9, v9, 0x1

    #@156
    goto :goto_6

    #@157
    .line 512
    .end local v8    # "high":C
    :cond_f
    move-object/from16 v0, p0

    #@159
    iput-object v12, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15b
    .line 513
    const/4 v15, 0x0

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@160
    goto :goto_4
.end method

.method final set([CI)V
    .locals 2
    .param p1, "val"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    if-nez p1, :cond_0

    #@2
    .line 64
    sget-object p1, Llibcore/util/EmptyArray;->CHAR:[C

    #@4
    .line 66
    :cond_0
    array-length v0, p1

    #@5
    if-ge v0, p2, :cond_1

    #@7
    .line 67
    new-instance v0, Ljava/io/InvalidObjectException;

    #@9
    const-string/jumbo v1, "count out of range"

    #@c
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 70
    :cond_1
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@13
    .line 71
    iput-object p1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15
    .line 72
    iput p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@17
    .line 62
    return-void
.end method

.method public setCharAt(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 529
    if-ltz p1, :cond_0

    #@3
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 530
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 532
    :cond_1
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 533
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, [C

    #@18
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1a
    .line 534
    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@1c
    .line 536
    :cond_2
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1e
    aput-char p2, v0, p1

    #@20
    .line 528
    return-void
.end method

.method public setLength(I)V
    .locals 4
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 551
    if-gez p1, :cond_0

    #@3
    .line 552
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "length < 0: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 554
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1f
    array-length v1, v1

    #@20
    if-le p1, v1, :cond_2

    #@22
    .line 555
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    #@25
    .line 568
    :cond_1
    :goto_0
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@27
    .line 550
    return-void

    #@28
    .line 557
    :cond_2
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 558
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2e
    array-length v1, v1

    #@2f
    new-array v0, v1, [C

    #@31
    .line 559
    .local v0, "newData":[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@33
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@35
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@38
    .line 560
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3a
    .line 561
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@3c
    goto :goto_0

    #@3d
    .line 563
    .end local v0    # "newData":[C
    :cond_3
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3f
    if-ge v1, p1, :cond_1

    #@41
    .line 564
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@43
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@45
    invoke-static {v1, v2, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    #@48
    goto :goto_0
.end method

.method final shareValue()[C
    .locals 1

    #@0
    .prologue
    .line 55
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@3
    .line 56
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@5
    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 647
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I

    #@0
    .prologue
    .line 583
    if-ltz p1, :cond_1

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-gt p1, v0, :cond_1

    #@6
    .line 584
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@8
    if-ne p1, v0, :cond_0

    #@a
    .line 585
    const-string/jumbo v0, ""

    #@d
    return-object v0

    #@e
    .line 589
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@10
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@12
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@14
    sub-int/2addr v2, p1

    #@15
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    #@18
    return-object v0

    #@19
    .line 591
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@1c
    move-result-object v0

    #@1d
    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 608
    if-ltz p1, :cond_1

    #@2
    if-gt p1, p2, :cond_1

    #@4
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6
    if-gt p2, v0, :cond_1

    #@8
    .line 609
    if-ne p1, p2, :cond_0

    #@a
    .line 610
    const-string/jumbo v0, ""

    #@d
    return-object v0

    #@e
    .line 614
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@10
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@12
    sub-int v2, p2, p1

    #@14
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    #@17
    return-object v0

    #@18
    .line 616
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@1b
    move-result-object v0

    #@1c
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 626
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 627
    const-string/jumbo v0, ""

    #@8
    return-object v0

    #@9
    .line 629
    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@d
    invoke-static {v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public trimToSize()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 791
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@5
    array-length v2, v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 792
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@a
    new-array v0, v1, [C

    #@c
    .line 793
    .local v0, "newValue":[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@13
    .line 794
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15
    .line 795
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    #@17
    .line 790
    .end local v0    # "newValue":[C
    :cond_0
    return-void
.end method
