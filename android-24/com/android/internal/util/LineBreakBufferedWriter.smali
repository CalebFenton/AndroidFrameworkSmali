.class public Lcom/android/internal/util/LineBreakBufferedWriter;
.super Ljava/io/PrintWriter;
.source "LineBreakBufferedWriter.java"


# instance fields
.field private buffer:[C

.field private bufferIndex:I

.field private final bufferSize:I

.field private lastNewline:I

.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I

    #@0
    .prologue
    .line 69
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;II)V

    #@5
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;II)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .param p3, "initialCapacity"    # I

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@3
    .line 55
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@6
    .line 81
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v0

    #@a
    new-array v0, v0, [C

    #@c
    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@e
    .line 82
    const/4 v0, 0x0

    #@f
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@11
    .line 83
    iput p2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@13
    .line 84
    const-string/jumbo v0, "line.separator"

    #@16
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    #@1c
    .line 79
    return-void
.end method

.method private appendToBuffer(Ljava/lang/String;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 248
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@2
    add-int/2addr v0, p3

    #@3
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@5
    array-length v1, v1

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 249
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@a
    add-int/2addr v0, p3

    #@b
    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    #@e
    .line 251
    :cond_0
    add-int v0, p2, p3

    #@10
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@12
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@14
    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 252
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@19
    add-int/2addr v0, p3

    #@1a
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@1c
    .line 247
    return-void
.end method

.method private appendToBuffer([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@2
    add-int/2addr v0, p3

    #@3
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@5
    array-length v1, v1

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 234
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@a
    add-int/2addr v0, p3

    #@b
    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    #@e
    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@10
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@12
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@15
    .line 237
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@17
    add-int/2addr v0, p3

    #@18
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@1a
    .line 232
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@2
    array-length v1, v1

    #@3
    mul-int/lit8 v1, v1, 0x2

    #@5
    add-int/lit8 v0, v1, 0x2

    #@7
    .line 263
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    #@9
    .line 264
    move v0, p1

    #@a
    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@c
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@12
    .line 261
    return-void
.end method

.method private removeFromBuffer(I)V
    .locals 5
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 275
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@3
    sub-int v0, v1, p1

    #@5
    .line 276
    .local v0, "rest":I
    if-lez v0, :cond_0

    #@7
    .line 277
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@9
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@b
    sub-int/2addr v2, v0

    #@c
    iget-object v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@e
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@11
    .line 278
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@13
    .line 274
    :goto_0
    return-void

    #@14
    .line 280
    :cond_0
    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@16
    goto :goto_0
.end method

.method private writeBuffer(I)V
    .locals 2
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 289
    if-lez p1, :cond_0

    #@3
    .line 290
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@5
    invoke-super {p0, v0, v1, p1}, Ljava/io/PrintWriter;->write([CII)V

    #@8
    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@5
    .line 93
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@8
    .line 94
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    #@b
    .line 91
    return-void
.end method

.method public println()V
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->write(Ljava/lang/String;)V

    #@5
    .line 113
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 99
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@4
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 100
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    #@b
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@d
    int-to-char v2, p1

    #@e
    aput-char v2, v0, v1

    #@10
    .line 101
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@16
    .line 102
    int-to-char v0, p1

    #@17
    const/16 v1, 0xa

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    .line 103
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@1d
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@1f
    .line 98
    :cond_0
    :goto_0
    return-void

    #@20
    .line 108
    :cond_1
    new-array v0, v3, [C

    #@22
    int-to-char v1, p1

    #@23
    aput-char v1, v0, v2

    #@25
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->write([CII)V

    #@28
    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, -0x1

    #@4
    .line 173
    :goto_0
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@6
    add-int/2addr v4, p3

    #@7
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@9
    if-le v4, v5, :cond_4

    #@b
    .line 176
    const/4 v2, -0x1

    #@c
    .line 177
    .local v2, "nextNewLine":I
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@e
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@10
    sub-int v1, v4, v5

    #@12
    .line 178
    .local v1, "maxLength":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@15
    .line 179
    add-int v4, p2, v0

    #@17
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v4

    #@1b
    if-ne v4, v8, :cond_0

    #@1d
    .line 180
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@1f
    add-int/2addr v4, v0

    #@20
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@22
    if-ge v4, v5, :cond_1

    #@24
    .line 181
    move v2, v0

    #@25
    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 188
    :cond_1
    if-eq v2, v6, :cond_2

    #@2a
    .line 190
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    #@2d
    .line 191
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@2f
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@32
    .line 192
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@34
    .line 193
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@36
    .line 194
    add-int/lit8 v4, v2, 0x1

    #@38
    add-int/2addr p2, v4

    #@39
    .line 195
    add-int/lit8 v4, v2, 0x1

    #@3b
    sub-int/2addr p3, v4

    #@3c
    goto :goto_0

    #@3d
    .line 196
    :cond_2
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@3f
    if-eq v4, v6, :cond_3

    #@41
    .line 198
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@43
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@46
    .line 199
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@48
    add-int/lit8 v4, v4, 0x1

    #@4a
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    #@4d
    .line 200
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@4f
    goto :goto_0

    #@50
    .line 203
    :cond_3
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@52
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@54
    sub-int v3, v4, v5

    #@56
    .line 204
    .local v3, "rest":I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    #@59
    .line 205
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@5b
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@5e
    .line 206
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@60
    .line 207
    add-int/2addr p2, v3

    #@61
    .line 208
    sub-int/2addr p3, v3

    #@62
    goto :goto_0

    #@63
    .line 213
    .end local v0    # "i":I
    .end local v1    # "maxLength":I
    .end local v2    # "nextNewLine":I
    .end local v3    # "rest":I
    :cond_4
    if-lez p3, :cond_5

    #@65
    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    #@68
    .line 216
    add-int/lit8 v0, p3, -0x1

    #@6a
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    #@6c
    .line 217
    add-int v4, p2, v0

    #@6e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@71
    move-result v4

    #@72
    if-ne v4, v8, :cond_6

    #@74
    .line 218
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@76
    sub-int/2addr v4, p3

    #@77
    add-int/2addr v4, v0

    #@78
    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@7a
    .line 172
    .end local v0    # "i":I
    :cond_5
    return-void

    #@7b
    .line 216
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@7d
    goto :goto_2
.end method

.method public write([CII)V
    .locals 9
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, -0x1

    #@4
    .line 119
    :goto_0
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@6
    add-int/2addr v4, p3

    #@7
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@9
    if-le v4, v5, :cond_4

    #@b
    .line 122
    const/4 v2, -0x1

    #@c
    .line 123
    .local v2, "nextNewLine":I
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@e
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@10
    sub-int v1, v4, v5

    #@12
    .line 124
    .local v1, "maxLength":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@15
    .line 125
    add-int v4, p2, v0

    #@17
    aget-char v4, p1, v4

    #@19
    if-ne v4, v8, :cond_0

    #@1b
    .line 126
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@1d
    add-int/2addr v4, v0

    #@1e
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@20
    if-ge v4, v5, :cond_1

    #@22
    .line 127
    move v2, v0

    #@23
    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 134
    :cond_1
    if-eq v2, v6, :cond_2

    #@28
    .line 136
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    #@2b
    .line 137
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@2d
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@30
    .line 138
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@32
    .line 139
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@34
    .line 140
    add-int/lit8 v4, v2, 0x1

    #@36
    add-int/2addr p2, v4

    #@37
    .line 141
    add-int/lit8 v4, v2, 0x1

    #@39
    sub-int/2addr p3, v4

    #@3a
    goto :goto_0

    #@3b
    .line 142
    :cond_2
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@3d
    if-eq v4, v6, :cond_3

    #@3f
    .line 144
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@41
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@44
    .line 145
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@46
    add-int/lit8 v4, v4, 0x1

    #@48
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    #@4b
    .line 146
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@4d
    goto :goto_0

    #@4e
    .line 149
    :cond_3
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    #@50
    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@52
    sub-int v3, v4, v5

    #@54
    .line 150
    .local v3, "rest":I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    #@57
    .line 151
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@59
    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    #@5c
    .line 152
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@5e
    .line 153
    add-int/2addr p2, v3

    #@5f
    .line 154
    sub-int/2addr p3, v3

    #@60
    goto :goto_0

    #@61
    .line 159
    .end local v0    # "i":I
    .end local v1    # "maxLength":I
    .end local v2    # "nextNewLine":I
    .end local v3    # "rest":I
    :cond_4
    if-lez p3, :cond_5

    #@63
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    #@66
    .line 162
    add-int/lit8 v0, p3, -0x1

    #@68
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    #@6a
    .line 163
    add-int v4, p2, v0

    #@6c
    aget-char v4, p1, v4

    #@6e
    if-ne v4, v8, :cond_6

    #@70
    .line 164
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    #@72
    sub-int/2addr v4, p3

    #@73
    add-int/2addr v4, v0

    #@74
    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    #@76
    .line 118
    .end local v0    # "i":I
    :cond_5
    return-void

    #@77
    .line 162
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@79
    goto :goto_2
.end method
