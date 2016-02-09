.class Landroid/icu/text/BreakDictionary;
.super Ljava/lang/Object;
.source "BreakDictionary.java"


# instance fields
.field private columnMap:Landroid/icu/util/CompactByteArray;

.field private numCols:I

.field private reverseColumnMap:[C

.field private rowIndex:[S

.field private rowIndexFlags:[I

.field private rowIndexFlagsIndex:[S

.field private rowIndexShifts:[B

.field private table:[S


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 102
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->reverseColumnMap:[C

    #@6
    .line 112
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->columnMap:Landroid/icu/util/CompactByteArray;

    #@8
    .line 137
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->table:[S

    #@a
    .line 142
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->rowIndex:[S

    #@c
    .line 150
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlags:[I

    #@e
    .line 160
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@10
    .line 166
    iput-object v0, p0, Landroid/icu/text/BreakDictionary;->rowIndexShifts:[B

    #@12
    .line 173
    invoke-virtual {p0, p1}, Landroid/icu/text/BreakDictionary;->readDictionaryFile(Ljava/nio/ByteBuffer;)V

    #@15
    .line 172
    return-void
.end method

.method private final cellIsPopulated(II)Z
    .locals 6
    .param p1, "row"    # I
    .param p2, "col"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 286
    iget-object v3, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@4
    aget-short v3, v3, p1

    #@6
    if-gez v3, :cond_1

    #@8
    .line 287
    iget-object v3, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@a
    aget-short v3, v3, p1

    #@c
    neg-int v3, v3

    #@d
    if-ne p2, v3, :cond_0

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    move v1, v2

    #@11
    goto :goto_0

    #@12
    .line 297
    :cond_1
    iget-object v3, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlags:[I

    #@14
    iget-object v4, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@16
    aget-short v4, v4, p1

    #@18
    shr-int/lit8 v5, p2, 0x5

    #@1a
    add-int/2addr v4, v5

    #@1b
    aget v0, v3, v4

    #@1d
    .line 298
    .local v0, "flags":I
    and-int/lit8 v3, p2, 0x1f

    #@1f
    shl-int v3, v1, v3

    #@21
    and-int/2addr v3, v0

    #@22
    if-eqz v3, :cond_2

    #@24
    :goto_1
    return v1

    #@25
    :cond_2
    move v1, v2

    #@26
    goto :goto_1
.end method

.method private final internalAt(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/icu/text/BreakDictionary;->table:[S

    #@2
    iget v1, p0, Landroid/icu/text/BreakDictionary;->numCols:I

    #@4
    mul-int/2addr v1, p1

    #@5
    add-int/2addr v1, p2

    #@6
    aget-short v0, v0, v1

    #@8
    return v0
.end method

.method static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    new-instance v0, Landroid/icu/text/BreakDictionary;

    #@2
    .line 54
    new-instance v2, Ljava/io/FileInputStream;

    #@4
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v2

    #@b
    .line 53
    invoke-direct {v0, v2}, Landroid/icu/text/BreakDictionary;-><init>(Ljava/nio/ByteBuffer;)V

    #@e
    .line 56
    .local v0, "dictionary":Landroid/icu/text/BreakDictionary;
    const/4 v1, 0x0

    #@f
    .line 58
    .local v1, "out":Ljava/io/PrintWriter;
    if-eqz p1, :cond_0

    #@11
    .line 59
    new-instance v1, Ljava/io/PrintWriter;

    #@13
    .end local v1    # "out":Ljava/io/PrintWriter;
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@15
    new-instance v3, Ljava/io/FileOutputStream;

    #@17
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@1a
    const-string/jumbo v4, "UnicodeLittle"

    #@1d
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@20
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@23
    .line 62
    :cond_0
    const-string/jumbo v2, ""

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {v0, v2, v3, v1}, Landroid/icu/text/BreakDictionary;->printWordList(Ljava/lang/String;ILjava/io/PrintWriter;)V

    #@2a
    .line 64
    if-eqz v1, :cond_1

    #@2c
    .line 65
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    #@2f
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method final at(IC)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    .line 248
    iget-object v1, p0, Landroid/icu/text/BreakDictionary;->columnMap:Landroid/icu/util/CompactByteArray;

    #@2
    invoke-virtual {v1, p2}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    #@5
    move-result v0

    #@6
    .line 249
    .local v0, "col":I
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/BreakDictionary;->at(II)S

    #@9
    move-result v1

    #@a
    return v1
.end method

.method final at(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    #@0
    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Landroid/icu/text/BreakDictionary;->cellIsPopulated(II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 271
    iget-object v0, p0, Landroid/icu/text/BreakDictionary;->rowIndex:[S

    #@8
    aget-short v0, v0, p1

    #@a
    iget-object v1, p0, Landroid/icu/text/BreakDictionary;->rowIndexShifts:[B

    #@c
    aget-byte v1, v1, p1

    #@e
    add-int/2addr v1, p2

    #@f
    invoke-direct {p0, v0, v1}, Landroid/icu/text/BreakDictionary;->internalAt(II)S

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 274
    :cond_0
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method printWordList(Ljava/lang/String;ILjava/io/PrintWriter;)V
    .locals 6
    .param p1, "partialWord"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v5, 0xffff

    #@3
    .line 73
    if-ne p2, v5, :cond_1

    #@5
    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 75
    if-eqz p3, :cond_0

    #@c
    .line 76
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 72
    :cond_0
    return-void

    #@10
    .line 80
    :cond_1
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/icu/text/BreakDictionary;->numCols:I

    #@13
    if-ge v0, v4, :cond_0

    #@15
    .line 81
    invoke-virtual {p0, p2, v0}, Landroid/icu/text/BreakDictionary;->at(II)S

    #@18
    move-result v4

    #@19
    and-int v3, v4, v5

    #@1b
    .line 83
    .local v3, "newState":I
    if-eqz v3, :cond_3

    #@1d
    .line 84
    iget-object v4, p0, Landroid/icu/text/BreakDictionary;->reverseColumnMap:[C

    #@1f
    aget-char v1, v4, v0

    #@21
    .line 85
    .local v1, "newChar":C
    move-object v2, p1

    #@22
    .line 87
    .local v2, "newPartialWord":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@24
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 91
    :cond_2
    invoke-virtual {p0, v2, v3, p3}, Landroid/icu/text/BreakDictionary;->printWordList(Ljava/lang/String;ILjava/io/PrintWriter;)V

    #@38
    .line 80
    .end local v1    # "newChar":C
    .end local v2    # "newPartialWord":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0
.end method

.method readDictionaryFile(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@6
    move-result v3

    #@7
    .line 185
    .local v3, "l":I
    new-array v4, v3, [C

    #@9
    .line 186
    .local v4, "temp":[C
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@b
    if-ge v2, v6, :cond_0

    #@d
    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@10
    move-result v6

    #@11
    int-to-char v6, v6

    #@12
    aput-char v6, v4, v2

    #@14
    .line 186
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@1a
    move-result v3

    #@1b
    .line 189
    new-array v5, v3, [B

    #@1d
    .line 190
    .local v5, "temp2":[B
    const/4 v2, 0x0

    #@1e
    :goto_1
    array-length v6, v5

    #@1f
    if-ge v2, v6, :cond_1

    #@21
    .line 191
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@24
    move-result v6

    #@25
    aput-byte v6, v5, v2

    #@27
    .line 190
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 192
    :cond_1
    new-instance v6, Landroid/icu/util/CompactByteArray;

    #@2c
    invoke-direct {v6, v4, v5}, Landroid/icu/util/CompactByteArray;-><init>([C[B)V

    #@2f
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->columnMap:Landroid/icu/util/CompactByteArray;

    #@31
    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@34
    move-result v6

    #@35
    iput v6, p0, Landroid/icu/text/BreakDictionary;->numCols:I

    #@37
    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3a
    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3d
    move-result v3

    #@3e
    .line 200
    new-array v6, v3, [S

    #@40
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndex:[S

    #@42
    .line 201
    const/4 v2, 0x0

    #@43
    :goto_2
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndex:[S

    #@45
    array-length v6, v6

    #@46
    if-ge v2, v6, :cond_2

    #@48
    .line 202
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndex:[S

    #@4a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@4d
    move-result v7

    #@4e
    aput-short v7, v6, v2

    #@50
    .line 201
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_2

    #@53
    .line 205
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@56
    move-result v3

    #@57
    .line 206
    new-array v6, v3, [S

    #@59
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@5b
    .line 207
    const/4 v2, 0x0

    #@5c
    :goto_3
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@5e
    array-length v6, v6

    #@5f
    if-ge v2, v6, :cond_3

    #@61
    .line 208
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlagsIndex:[S

    #@63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@66
    move-result v7

    #@67
    aput-short v7, v6, v2

    #@69
    .line 207
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_3

    #@6c
    .line 209
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@6f
    move-result v3

    #@70
    .line 210
    new-array v6, v3, [I

    #@72
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlags:[I

    #@74
    .line 211
    const/4 v2, 0x0

    #@75
    :goto_4
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlags:[I

    #@77
    array-length v6, v6

    #@78
    if-ge v2, v6, :cond_4

    #@7a
    .line 212
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexFlags:[I

    #@7c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@7f
    move-result v7

    #@80
    aput v7, v6, v2

    #@82
    .line 211
    add-int/lit8 v2, v2, 0x1

    #@84
    goto :goto_4

    #@85
    .line 215
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@88
    move-result v3

    #@89
    .line 216
    new-array v6, v3, [B

    #@8b
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexShifts:[B

    #@8d
    .line 217
    const/4 v2, 0x0

    #@8e
    :goto_5
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexShifts:[B

    #@90
    array-length v6, v6

    #@91
    if-ge v2, v6, :cond_5

    #@93
    .line 218
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->rowIndexShifts:[B

    #@95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@98
    move-result v7

    #@99
    aput-byte v7, v6, v2

    #@9b
    .line 217
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_5

    #@9e
    .line 221
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@a1
    move-result v3

    #@a2
    .line 222
    new-array v6, v3, [S

    #@a4
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->table:[S

    #@a6
    .line 223
    const/4 v2, 0x0

    #@a7
    :goto_6
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->table:[S

    #@a9
    array-length v6, v6

    #@aa
    if-ge v2, v6, :cond_6

    #@ac
    .line 224
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->table:[S

    #@ae
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@b1
    move-result v7

    #@b2
    aput-short v7, v6, v2

    #@b4
    .line 223
    add-int/lit8 v2, v2, 0x1

    #@b6
    goto :goto_6

    #@b7
    .line 227
    :cond_6
    iget v6, p0, Landroid/icu/text/BreakDictionary;->numCols:I

    #@b9
    new-array v6, v6, [C

    #@bb
    iput-object v6, p0, Landroid/icu/text/BreakDictionary;->reverseColumnMap:[C

    #@bd
    .line 228
    const/4 v0, 0x0

    #@be
    :goto_7
    const v6, 0xffff

    #@c1
    if-ge v0, v6, :cond_8

    #@c3
    .line 229
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->columnMap:Landroid/icu/util/CompactByteArray;

    #@c5
    invoke-virtual {v6, v0}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    #@c8
    move-result v1

    #@c9
    .line 230
    .local v1, "col":I
    if-eqz v1, :cond_7

    #@cb
    .line 231
    iget-object v6, p0, Landroid/icu/text/BreakDictionary;->reverseColumnMap:[C

    #@cd
    aput-char v0, v6, v1

    #@cf
    .line 228
    :cond_7
    add-int/lit8 v6, v0, 0x1

    #@d1
    int-to-char v0, v6

    #@d2
    .local v0, "c":C
    goto :goto_7

    #@d3
    .line 176
    .end local v0    # "c":C
    .end local v1    # "col":I
    :cond_8
    return-void
.end method
