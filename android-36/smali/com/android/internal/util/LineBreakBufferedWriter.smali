.class public Lcom/android/internal/util/LineBreakBufferedWriter;
.super Ljava/io/PrintWriter;
.source "LineBreakBufferedWriter.java"


# instance fields
.field private blacklist buffer:[C

.field private blacklist bufferIndex:I

.field private final blacklist bufferSize:I

.field private blacklist lastNewline:I

.field private final blacklist lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I

    .line 70
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;II)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .param p3, "initialCapacity"    # I

    .line 81
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 82
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 84
    iput p2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    .line 85
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private blacklist appendToBuffer(Ljava/lang/String;II)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 249
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 250
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 252
    :cond_e
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 253
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 254
    return-void
.end method

.method private blacklist appendToBuffer([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 234
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 235
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 237
    :cond_e
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 239
    return-void
.end method

.method private blacklist ensureCapacity(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 263
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 264
    .local v0, "newSize":I
    if-ge v0, p1, :cond_a

    .line 265
    move v0, p1

    .line 267
    :cond_a
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 268
    return-void
.end method

.method private blacklist removeFromBuffer(I)V
    .registers 7
    .param p1, "i"    # I

    .line 276
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v0, p1

    .line 277
    .local v0, "rest":I
    const/4 v1, 0x0

    if-lez v0, :cond_13

    .line 278
    iget-object v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    goto :goto_15

    .line 281
    :cond_13
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 283
    :goto_15
    return-void
.end method

.method private blacklist writeBuffer(I)V
    .registers 4
    .param p1, "length"    # I

    .line 290
    if-lez p1, :cond_8

    .line 291
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p1}, Ljava/io/PrintWriter;->write([CII)V

    .line 293
    :cond_8
    return-void
.end method


# virtual methods
.method public whitelist test-api flush()V
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 95
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 96
    return-void
.end method

.method public whitelist test-api println()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "c"    # I

    .line 100
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    .line 101
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    int-to-char v3, p1

    aput-char v3, v0, v1

    .line 102
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 103
    int-to-char v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_27

    .line 104
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_27

    .line 109
    :cond_1e
    int-to-char v0, p1

    new-array v1, v2, [C

    const/4 v3, 0x0

    aput-char v0, v1, v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->write([CII)V

    .line 111
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 174
    nop

    :goto_1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const/16 v2, 0xa

    if-le v0, v1, :cond_62

    .line 177
    const/4 v0, -0x1

    .line 178
    .local v0, "nextNewLine":I
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v1, v3

    .line 179
    .local v1, "maxLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_26

    .line 180
    add-int v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_23

    .line 181
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v4, v5, :cond_26

    .line 182
    move v0, v3

    .line 179
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 189
    .end local v3    # "i":I
    :cond_26
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3d

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 192
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 193
    iput v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 194
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 195
    add-int/lit8 v2, v0, 0x1

    add-int/2addr p2, v2

    .line 196
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr p3, v2

    goto :goto_61

    .line 197
    :cond_3d
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v4, v3, :cond_50

    .line 199
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 200
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 201
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_61

    .line 204
    :cond_50
    iget v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v3, v4

    .line 205
    .local v3, "rest":I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 206
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 207
    iput v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 208
    add-int/2addr p2, v3

    .line 209
    sub-int/2addr p3, v3

    .line 211
    .end local v0    # "nextNewLine":I
    .end local v1    # "maxLength":I
    .end local v3    # "rest":I
    :goto_61
    goto :goto_1

    .line 214
    :cond_62
    if-lez p3, :cond_7d

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 217
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_69
    if-ltz v0, :cond_7d

    .line 218
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_7a

    .line 219
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v1, p3

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 220
    goto :goto_7d

    .line 217
    :cond_7a
    add-int/lit8 v0, v0, -0x1

    goto :goto_69

    .line 224
    .end local v0    # "i":I
    :cond_7d
    :goto_7d
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 10
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 120
    nop

    :goto_1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const/16 v2, 0xa

    if-le v0, v1, :cond_60

    .line 123
    const/4 v0, -0x1

    .line 124
    .local v0, "nextNewLine":I
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v1, v3

    .line 125
    .local v1, "maxLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_24

    .line 126
    add-int v4, p2, v3

    aget-char v4, p1, v4

    if-ne v4, v2, :cond_21

    .line 127
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v4, v5, :cond_24

    .line 128
    move v0, v3

    .line 125
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 135
    .end local v3    # "i":I
    :cond_24
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3b

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 138
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 139
    iput v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 140
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 141
    add-int/lit8 v2, v0, 0x1

    add-int/2addr p2, v2

    .line 142
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr p3, v2

    goto :goto_5f

    .line 143
    :cond_3b
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v4, v3, :cond_4e

    .line 145
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 146
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 147
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_5f

    .line 150
    :cond_4e
    iget v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v3, v4

    .line 151
    .local v3, "rest":I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 152
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 153
    iput v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 154
    add-int/2addr p2, v3

    .line 155
    sub-int/2addr p3, v3

    .line 157
    .end local v0    # "nextNewLine":I
    .end local v1    # "maxLength":I
    .end local v3    # "rest":I
    :goto_5f
    goto :goto_1

    .line 160
    :cond_60
    if-lez p3, :cond_79

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 163
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_67
    if-ltz v0, :cond_79

    .line 164
    add-int v1, p2, v0

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_76

    .line 165
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v1, p3

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 166
    goto :goto_79

    .line 163
    :cond_76
    add-int/lit8 v0, v0, -0x1

    goto :goto_67

    .line 170
    .end local v0    # "i":I
    :cond_79
    :goto_79
    return-void
.end method
